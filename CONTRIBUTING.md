# Contributing to the Unequal Exchange Toolkit

Thank you for your interest in contributing to the Unequal Exchange Toolkit.

The Toolkit is an open research initiative for investigating unequal exchange, dependency and possibilities for economic transformation. It brings together methodological documentation, data resources and research tools to make assumptions, calculations and interpretations more transparent and accessible.

Contributions are welcome from researchers, students, practitioners, developers and others interested in the project. You do not need programming experience to contribute.

This guide explains how to participate, what information to provide and how contributions are reviewed.

---

## 1. Ways to contribute

There are several ways to help develop the Toolkit.

### Research and methodological documentation

* Suggest publications for inclusion in the Methods Library.
* Document the theoretical assumptions and methodological procedures of published studies.
* Identify relationships between studies, including shared datasets, methodological adaptations and reuse of published results.
* Identify limitations, unresolved questions or differences in interpretation.
* Suggest corrections to existing entries.

### Data documentation

* Recommend relevant datasets and sources.
* Document variables, geographical coverage and time periods.
* Identify access conditions, licensing restrictions and data-quality concerns.
* Investigate comparability between sources.

### Modelling and research instruments

* Develop or review calculation procedures.
* Test assumptions and investigate alternative scenarios.
* Contribute reproducible code and computational workflows.
* Help distinguish empirical findings from hypothetical modelling exercises.

### Technical development

* Improve the website, navigation and accessibility.
* Develop visualisations and interactive research tools.
* Improve documentation and reproducibility.
* Report bugs or suggest new features.

Critical feedback is also a contribution. You do not need to have a complete solution to identify a problem or raise a useful research question.

---

## 2. How to get started

The simplest way to contribute is to open a GitHub Issue:

[Open an issue](https://github.com/unequal-exchange-toolkit/toolkit/issues/new)

Use an issue to suggest a publication, identify an error, propose an improvement or discuss an idea before undertaking substantial work.

Please provide enough information for others to understand your proposal. For research contributions, include a publication reference or other relevant source wherever possible.

If you are comfortable working with GitHub, you may also submit changes through a pull request.

You do not need to edit HTML, JSON or other website files simply to suggest a study or provide methodological documentation.

---

# 3. Contributing to the Methods Library

The Methods Library documents how published research investigates unequal exchange and related questions.

Its purpose is not simply to collect findings. It aims to clarify the relationship between theoretical explanations, estimation strategies, computational techniques, data and measured quantities.

Contributors can suggest a study, provide a methodological profile, identify research connections or correct an existing entry.

**Independent replication is not required to contribute a methodological profile.**

However, documentation, implementation and verification must be clearly distinguished.

## 3.1 Suggesting a publication

If you want to recommend a study but do not have time to document its methodology, that is still useful.

Open a GitHub Issue and provide:

* The publication's title and authors.
* Publication year.
* DOI or a stable URL, if available.
* A brief explanation of its relevance to the Toolkit.
* Any known relationship to studies already in the library.

A publication suggestion is not automatically a completed methodological entry.

## 3.2 Documenting a published study

A methodological profile should describe the study on its own terms.

Contributors should distinguish four analytical levels.

These levels are not competing categories. A single study may involve all four.

### Level 01 — Theoretical mechanism

**What is proposed to explain the phenomenon under investigation?**

Describe the study's theoretical argument and the mechanism it proposes.

For unequal-exchange research, this might concern international wage differences, production conditions, value transfer or ecological appropriation.

Use the authors' own formulation wherever possible. Do not attribute a mechanism to a study simply because it belongs to a particular research tradition.

If a study does not propose an unequal-exchange mechanism, explain its actual theoretical purpose rather than forcing it into that category.

### Level 02 — Estimation strategy

**How is the research question translated into something that can be investigated?**

Describe the study's approach to operationalisation.

Examples might include embodied-flow accounting, counterfactual valuation or comparisons involving theoretically specified prices.

Identify the relevant assumptions and comparison procedures.

Do not treat an estimation strategy as interchangeable with the theoretical mechanism it is intended to investigate.

### Level 03 — Computational technique

**How are the relevant quantities calculated or estimated?**

Identify the mathematical, statistical or accounting procedures used.

Examples may include multiregional input–output analysis, environmentally extended accounting, statistical modelling or other specified procedures.

Where available, document model versions, equations, software, code and important transformations.

Distinguish techniques used directly by the study from calculations or datasets inherited from earlier research.

### Level 04 — Measured quantities

**What does the calculation actually produce?**

Identify the outputs and their units.

These may include monetary estimates, labour hours, tonnes of materials, land area, energy or other quantities.

Explain the geographical and temporal scope of the estimates.

A measured flow should not automatically be presented as proof of every theoretical mechanism associated with it.

---

## 3.3 Additional information for a methodological profile

Alongside the four analytical levels, contributors should provide the following information where available.

| Field                 | Information requested                                                     |
| --------------------- | ------------------------------------------------------------------------- |
| Publication           | Authors, title, year, journal or publisher, DOI                           |
| Research question     | What the study investigates                                               |
| Research approach     | The most appropriate navigational category                                |
| Data                  | Sources, versions, variables and transformations                          |
| Scope                 | Countries, sectors, years and production boundaries                       |
| Calculation procedure | Equations, modelling steps and relevant assumptions                       |
| Limitations           | Limitations identified by the authors and separately identified questions |
| Interpretation        | What the authors conclude from their results                              |
| Research connections  | Relationships with other documented studies                               |
| Verification status   | What has and has not been independently checked                           |
| References            | Supporting publications, datasets, code and documentation                 |

Not every field will be applicable to every study.

If important information cannot be established from the available sources, identify it as missing or unresolved rather than filling the gap through inference.

### Evidence and page references

Please support substantive methodological descriptions with references to the original publication or its supplementary materials.

Page numbers, section numbers, equation numbers and links to documentation are especially helpful.

Distinguish between:

* Statements explicitly made by the authors.
* Descriptions reconstructed from the published methodology.
* Interpretations or questions introduced by the contributor.

Do not present an inference as a documented statement by the authors.

---

## 3.4 Research connections

The Methods Library also records relationships between publications.

Examples include:

* Shared authorship.
* Citation of an earlier study.
* Following or adapting a published method.
* Reuse of a dataset.
* Reuse of a derived parameter.

A connection should identify both publications, explain the relationship and provide supporting evidence.

**Citation alone does not establish data or methodological reuse.**

Likewise, studies that use the same general computational technique do not necessarily share the same dataset, assumptions or estimation strategy.

Contributors are encouraged to identify specific relationships rather than treating all connections as equivalent.

---

## 3.5 Documentation, replication and verification

The Toolkit distinguishes several forms of research activity.

**Source-based documentation:** The published methodology has been examined and described, but the calculations have not necessarily been reproduced.

**Implementation or reconstruction:** Some or all of the published procedures have been implemented independently.

**Verification:** Specific calculations, outputs or results have been checked against the published study or other relevant evidence.

These activities should not be conflated.

Running code successfully does not, by itself, establish exact replication. Close agreement with published results does not establish that all underlying procedures, data transformations or assumptions have been reproduced.

Contributors should describe precisely what was attempted, what was checked and what remains unresolved.

Do not describe a study as independently replicated unless the supporting work justifies that claim.

---

# 4. Contributing to the Data Catalogue

Data contributions should identify:

* The source and responsible organisation.
* The dataset name and version, where applicable.
* Geographical and temporal coverage.
* Variables, units and definitions.
* Access arrangements and licensing conditions.
* Known limitations or comparability issues.

Please distinguish the original dataset from any transformations undertaken by the Toolkit.

Do not assume that national statistics adequately represent subnational conditions or that datasets with similar variable names measure identical concepts.

Do not upload restricted datasets without the necessary permissions.

---

# 5. Contributing models, calculations and code

Computational contributions should be accompanied by sufficient documentation for another person to understand and, where possible, reproduce the work.

Please identify:

* The research question or purpose.
* Data inputs and their sources.
* Assumptions and parameter choices.
* Calculation steps.
* Software and relevant dependencies.
* Expected outputs.
* Tests or verification undertaken.
* Known limitations.

Clearly distinguish a published method from an independent adaptation or experimental model.

Hypothetical scenarios should be labelled as such and should not be presented as empirical findings.

Where possible, avoid unnecessary changes to unrelated parts of the Toolkit when submitting code.

---

# 6. Research integrity and responsible interpretation

The Toolkit aims to document research accurately, including differences between approaches.

Contributions should:

* Attribute claims, data and methods to their sources.
* Preserve relevant geographical and temporal boundaries.
* Distinguish theoretical propositions from empirical measurements.
* Explain assumptions and limitations.
* Avoid combining estimates that measure different phenomena without justification.
* Distinguish published findings from independent interpretations.
* State verification status accurately.

Different approaches to unequal exchange may investigate different mechanisms or produce results in different units.

The purpose of the library is to make these differences visible, not to manufacture comparability where it has not been established.

Constructive disagreement is welcome. Where interpretations are contested, explain the relevant disagreement and its evidential basis.

---

# 7. Copyright, data protection and permissions

Please do not upload confidential, personally identifiable or otherwise restricted research material to the public repository.

Before sharing third-party materials, check the applicable permissions and licensing conditions.

Prefer references, DOI links and concise attributed descriptions over reproducing substantial portions of copyrighted publications.

Contributors should only submit code, data and other materials that they are permitted to share.

---

# 8. How contributions are reviewed

Contributions are reviewed before inclusion in the published Toolkit.

Review may consider:

* Relevance to the project's scope.
* Accuracy of source attribution.
* Clarity of methodological documentation.
* Appropriate distinctions between theory, estimation, technique and outputs.
* Transparency about assumptions and limitations.
* Accuracy of replication or verification claims.
* Compatibility with the existing research resources and website.

A contributor may be asked to clarify a claim, provide a source or revise an entry.

Submission does not guarantee inclusion.

Where appropriate, proposed contributions may remain open for discussion or be incorporated in stages.

The review process is intended to maintain the reliability and usefulness of the resource while allowing it to develop collaboratively.

---

# 9. Recognition and attribution

Contributors should receive appropriate recognition for substantive work.

When submitting a contribution, please indicate how you would like to be credited, if applicable.

Attribution arrangements may depend on the nature of the contribution and the project's developing editorial practices.

Publication authors, dataset creators and other original sources must remain properly attributed regardless of who documents their work for the Toolkit.

---

# 10. Questions, corrections and suggestions

If you are unsure where your contribution belongs, open an issue and explain what you would like to contribute.

You can also use GitHub Issues to report factual errors, broken links, accessibility problems or unclear documentation.

[Visit the repository](https://github.com/unequal-exchange-toolkit/toolkit)

[Open a GitHub Issue](https://github.com/unequal-exchange-toolkit/toolkit/issues/new)

The Unequal Exchange Toolkit is an evolving open research initiative. Its documentation and contribution processes will develop as the project grows.
