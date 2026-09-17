# INDEPENDENT RECONSTRUCTION — Dorninger et al. (2021), Figure 4a
# Not author-supplied code. Version 2: corrected arrow specification.
# Version 1 was executed in Posit Cloud on 17 Sep 2026; this corrected version has NOT yet been run.
# Input: publisher supplement 1-s2.0-S0921800920300938-mmc2.xlsx
# Usage: Rscript dorninger-materials.R path/to/1-s2.0-S0921800920300938-mmc2.xlsx
# Install packages if necessary: install.packages(c("readxl", "piecewiseSEM"))
# If piecewiseSEM is incompatible with your R version, record the version/error;
# do not silently substitute a different SEM implementation.
args <- commandArgs(trailingOnly=TRUE)
if (length(args) != 1) stop("Supply the path to the publisher's supplementary XLSX file")
if (!requireNamespace("readxl", quietly=TRUE)) stop("Install readxl")
if (!requireNamespace("piecewiseSEM", quietly=TRUE)) stop("Install piecewiseSEM")
raw <- as.data.frame(readxl::read_excel(args[1], sheet="2015", skip=1, na=c("na","NA","")))
if (nrow(raw) != 170 || ncol(raw) < 16) stop("Unexpected input dimensions: inspect sheet/header")
# Positions follow the publisher's worksheet; verify units against header row.
d <- data.frame(country=raw[[1]], gni=as.numeric(raw[[5]])/1000,
  reserves=as.numeric(raw[[6]])/1000, tech=as.numeric(raw[[7]]),
  military=as.numeric(raw[[8]])/1000, net_rme=as.numeric(raw[[9]]),
  va_rme=as.numeric(raw[[13]]))
cat("Rows:", nrow(d), "\nMissing values:\n"); print(colSums(is.na(d)))
# Gamma/log models require positive responses; missing values are excluded
# separately for each component in the initial coefficient reconstruction.
fit_component <- function(formula, family=NULL) {
  vars <- all.vars(formula); z <- d[complete.cases(d[,vars]), vars, drop=FALSE]
  if (!is.null(family)) z <- z[z[[vars[1]]] > 0,,drop=FALSE]
  m <- if (is.null(family)) lm(formula, data=z) else glm(formula, data=z, family=family)
  cat("\n", deparse(formula), "n=",nobs(m),"\n"); print(coef(summary(m)))
  invisible(m)
}
inc <- fit_component(gni ~ reserves, Gamma(link="log"))
tec <- fit_component(tech ~ reserves + gni)
mil <- fit_component(military ~ reserves + gni, Gamma(link="log"))
net <- fit_component(net_rme ~ reserves + gni + tech + military)
val <- fit_component(va_rme ~ gni + tech + military + net_rme, Gamma(link="log"))
# Figure 4 caption specifies 13 arrows; technology -> military is NOT one of them.
# Earlier v1 script included that extra arrow, producing 14 paths and just one
# directed-separation claim; this v2 removes it.
# piecewiseSEM may require a common data frame across component models.
# Explicit complete-case restriction is a sensitivity analysis, NOT a claim
# about the authors' sample handling. Compare its n and coefficients above.
vars <- c("gni","reserves","tech","military","net_rme","va_rme")
cc <- d[complete.cases(d[,vars]) & d$gni>0 & d$military>0 & d$va_rme>0, ,drop=FALSE]
cat("\nComplete-case SEM sample:",nrow(cc),"\n")
sem <- piecewiseSEM::psem(
  glm(gni ~ reserves, family=Gamma(link="log"), data=cc),
  lm(tech ~ reserves + gni, data=cc),
  glm(military ~ reserves + gni, family=Gamma(link="log"), data=cc),
  lm(net_rme ~ reserves + gni + tech + military, data=cc),
  glm(va_rme ~ gni + tech + military + net_rme, family=Gamma(link="log"), data=cc)
)
cat("\nPIECEWISE SEM SUMMARY (complete-case sensitivity):\n")
print(summary(sem))
cat("\nPUBLISHED FIGURE 4a comparison targets: Fisher C=2.57, p=0.63; ",
    "reserves->net=-8.120; gni->net=0.416; military->net=-11.542; ",
    "gni->va=0.052; net->va=0.051; technology->va marked n.s.\n")
cat("IMPORTANT: corrected v2 has not yet been run; this remains an independent reconstruction.\n")
