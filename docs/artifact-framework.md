---
title: "Artifacts & Portfolio"
permalink: /artifacts/
toc: true
toc_sticky: true
---

Assessment in this course is **a chain of artifacts, not a set of disconnected homeworks**.
Each artifact builds on the last, and most operate on the **recurring course dataset**, so
your effort compounds into a coherent, version-controlled, employer-facing **portfolio**. There
is no terminal exam — the capstone is the culmination.

## Every artifact has three parts

This structure is what makes the work assessable and what keeps AI use honest:

1. **The deliverable** — working code / schema / config. *Machine-checkable*, and you run the
   autograder on it yourself before submitting.
2. **The rationale** — a short ADR-style (architecture decision record) document: what you
   chose, what you rejected, and why.
3. **The AI disclosure** — what tools you used, for what, where they were wrong, and how you
   verified.

You can use AI freely to help produce the deliverable, because the parts that demonstrate your
judgment — the rationale, the verification, and the disclosure — are exactly the parts an AI
can't supply on your behalf.

## The artifact sequence

| # | Artifact | Built on | Primary objective | AIAS |
|---|----------|----------|-------------------|:----:|
| **A0** | Environment + repo + "hello dataset" exploration | — | Onboarding; studio/Git mechanics; first AI-disclosure practice | 4 |
| **A1** | Domain schema (LinkML) for the recurring dataset | A0 | Modeling (LO 1) | 4 |
| **A2** | Ontology/identifier binding + semantic validation of A1 | A1 | Semantics (LO 1–2) | 4 |
| **A3** | Three-way storage implementation + comparative analysis | A1 | Storage choice (LO 3) | 4 |
| **A4** | FAIR assessment + remediation plan for a real resource | — | FAIR stewardship (LO 4) | 4 |
| **A5** | Validated ETL pipeline (raw → schema-conformant store) | A1–A3 | ETL (LO 5) | 4 |
| **A6** | Provenance/lineage layer over the A5 pipeline | A5 | Provenance (LO 6) | 4 |
| **Cap** | Capstone: full stack for a self-chosen domain | all | Synthesis (all LOs) | 4–5 |

### Two meta-artifacts span the whole term

Both are cumulative and graded at the **midpoint** and at the **end**:

- **AI-use disclosure log** — professional-grade documentation of tool use across all
  artifacts.
- **Failure log** — a running record of where LLMs led you astray and how you caught it. This
  is the single most pedagogically valuable artifact for the AI-use objective, and it
  generates honest data on the tools' real limits.

## What each artifact involves

- **A0 — Onboarding.** Fork the course repo template, stand up your environment, run the CI
  autograder against a trivial check, and write a short exploration note on the raw dataset
  plus your first AI-use disclosure. Low-stakes and completion-graded — it exists to shake out
  tooling problems early.
- **A1 — Domain schema.** Model the recurring dataset in LinkML: classes, slots, ranges, enums,
  inheritance. Generate JSON Schema and documentation from it and pass LinkML's validators.
- **A2 — Semantics.** Bind schema slots to ontology terms (GO, Uberon, MONDO, …) and persistent
  identifiers; add controlled-vocabulary enums; implement semantic validation. Includes a
  structured exercise: ask an LLM for ontology term IDs, then verify *every one* against the
  source — and feed what you catch into your failure log.
- **A3 — Storage three ways.** Implement the same dataset slice in a relational, a document, and
  a graph store; pose the same biological questions to all three; write a comparative tradeoff
  analysis.
- **A4 — FAIR.** Assess a real public biological resource against a FAIR rubric, identify
  concrete gaps, and draft a prioritized remediation plan.
- **A5 — ETL.** Build a pipeline that ingests the raw dataset into the schema-conformant store,
  with validation as a first-class stage that fails loudly.
- **A6 — Provenance.** Add a lineage layer over the A5 pipeline so every transformation is
  traceable; query the lineage. Submitted together with A5.
- **Capstone.** A self-chosen domain taken end to end: schema → storage → FAIR assessment →
  validated ETL with provenance → documentation → AI disclosure. The portfolio's centerpiece.

## Degree-track scaling

Each artifact has a **base specification (MS)** and a **+critique extension (PhD)**. The
lectures and labs are the same; the depth of what you submit differs. Examples:

- **A1** — PhD students additionally evaluate two competing real-world schemas for the domain
  and justify their divergence.
- **A3** — PhD students add a literature-grounded argument about storage choices in a published
  resource.
- **Capstone** — the PhD track requires an under-modeled domain and a defensible novel schema.

## A published rubric on every artifact

Every artifact ships with the **exact rubric it will be graded against**, handed to you up
front. The same rubric is reused five ways — by the autograder, the LLM first-pass grader,
your two peer reviewers, your required self-assessment, and the instructor's review — so the
standard is identical no matter who is looking. You always know what success looks like before
you start.

## Where these ideas come from

The framework draws on established engineering practice, recast for biological data:

- **Architecture decision records (ADRs):** capture *why* a design choice was made, not just
  what it was — the form your rationale documents take.
- **Schema-first / model-driven development:** describe the data formally before storing it, and
  project one model to many serializations.
- **FAIR data principles:** Findable, Accessible, Interoperable, Reusable — operationalized as
  an engineering checklist, not a slogan.
- **Provenance & reproducibility:** lineage tracking as a requirement, because a result you
  can't trace is a result you can't trust.

## Using LLM tools on artifacts

- **Your rationale, verification, and disclosure are your own work** — these aren't delegated.
- **You may have an LLM generate code, schema, or config**, but you're accountable for the
  design decisions, for verifying the output against the source of truth (especially ontology
  terms and identifiers), and for disclosing how you used it.
- **The failure log is graded** — it shows your verify-and-catch process, which is the whole
  point of *specify → generate → verify → document*.

See the [assessment & AI policy](https://bu-bioinfo.github.io/bio-data-engineering/assessment/)
for the AI level that applies to each artifact and how grading works at scale.
