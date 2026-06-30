---
title: "Schedule"
permalink: /schedule/
toc: true
toc_sticky: true
---

Each week has a **short conceptual segment** and an **extended studio build**. Most weeks
advance the **recurring dataset** one step (model it → store it → assess it → move it → trace
it) and many weeks close with an **artifact milestone**. Artifacts (A0–A6, capstone) and the
cumulative AI-disclosure and failure logs are defined on the
[Artifacts & Portfolio](https://bu-bioinfo.github.io/bio-data-engineering/artifacts/) page.

The schedule **front-loads modeling** — the conceptual spine — and keeps the back half
build-heavy, with the **capstone running quietly in the background from week 8 onward** so the
final weeks aren't a cliff. There is one heavier double-submission at week 10 and a
deliberately light week 8 to absorb the capstone launch and the single big human-grading
touchpoint.

> *Schedule is subject to change. The recurring dataset, specific tools, and exact week
> boundaries will be finalized before the term begins.*

| Wk | Theme | Concept | Studio build | Recurring-dataset state | Milestone |
|---:|---|---|---|---|:--:|
| 1 | Orientation & the data-engineering mindset | Why infrastructure (not analysis) is the bottleneck; the data lifecycle; the course thesis; the *specify → generate → verify → document* loop, with a live demo of an LLM confidently producing a wrong biological schema | Environment setup; fork the repo template; run the CI autograder on a trivial check; first-contact exploration of the raw dataset | raw / messy — the "before" state | **A0** |
| 2 | Data modeling fundamentals | What a data model *is* and why you write one before storing anything; entities, attributes, relationships, types, constraints; model vs. serialization; where informal "just use a spreadsheet" modeling fails | Hand-model the recurring dataset on paper first (deliberately tool-free), then translate to a first LinkML sketch | first conceptual model | — |
| 3 | LinkML in depth | Classes, slots, ranges, enums, inheritance, imports; multi-file schema structure; generating downstream artifacts (JSON Schema, SQL DDL, docs) — "model once, project many" | Build out the schema in LinkML; generate JSON Schema and docs; run LinkML's validators via the autograder | validating schema | **A1** |
| 4 | Identifiers, ontologies & semantics | Why bio data engineering ≠ generic; persistent identifiers, CURIEs/IRIs, namespaces; OBO Foundry (GO, Uberon, MONDO); syntactic vs. semantic correctness; the acute LLM-verification problem | Bind schema slots to ontology terms; add controlled-vocabulary enums; implement semantic validation; deliberately have an LLM propose term IDs and verify every one against the source | semantically grounded | **A2** |
| 5 | Relational databases | The relational model, normalization, keys, joins; where it fits biological data cleanly and where it fights the domain | Project the schema to SQL DDL; load a slice of the dataset; write queries that answer real biological questions | relational store (1 of 3) | — |
| 6 | Document & graph databases | Document stores for semi-structured/nested metadata; graph databases for networks, pathways, ontology relationships, provenance; choosing by data shape and access pattern; when a columnar file beats any database | Load the same slice into a document store and a graph store; pose the *same* biological questions to all three | stored three ways simultaneously | **A3** |
| 7 | FAIR principles & stewardship | FAIR operationalized, not recited; metadata and catalogs; access protocols; interoperability via shared vocabularies (ties to wk 4); reusability, licensing, provenance (ties forward to wks 9–10) | Assess a real public biological resource against a FAIR rubric; identify gaps; draft a prioritized remediation plan | FAIR-assessed (mirror exercise on the recurring dataset) | **A4** |
| 8 | Midpoint review + capstone launch | Light week. Synthesis of the first half (model → store → assess); capstone introduced and proposals drafted | **Midpoint portfolio review** — the single substantive human touchpoint: structured peer review of accumulated artifacts and staff review of the logs; capstone proposals workshopped | (own domains begin) | midpoint logs + capstone proposal |
| 9 | ETL & pipeline patterns | Extract/transform/load as a discipline; pipelines as DAGs (Snakemake/Nextflow as ETL-with-a-graph); idempotency and reproducibility; validation as a first-class stage that fails loudly | Build the backbone of a pipeline that ingests the raw dataset into the schema-conformant store, with a validation stage wired in | the raw "before" connects to the validated store — loop closed | — |
| 10 | Provenance & lineage | Recording where data came from and what transformed it; provenance models; why lineage is inseparable from reproducibility and FAIR's "reusable"; provenance as a graph (callback to wk 6) | Add a provenance/lineage layer to the week-9 pipeline; make every transformation traceable; query the lineage | end-to-end, fully traceable | **A5 + A6** |
| 11 | Formats, scale & access | The biological format zoo (FASTQ/BAM/VCF/AnnData/OME-Zarr) vs. general formats (Parquet/Arrow/HDF5) and why the field fragmented; storage economics and tiering; serving data via REST/GraphQL; consuming public resources (Ensembl/UniProt/GDC) as an engineering task | Convert a piece of the dataset between formats and measure the consequences; consume a public API and reconcile it into the local schema; otherwise a capstone work session | format/scale lens applied | — |
| 12 | Capstone studio | Minimal new material — a short clinic on documentation (ADRs, READMEs, schema docs) and on writing a professional AI-disclosure log | Full-session supervised capstone build; staff and peers circulate; structured peer-review checkpoint on capstone drafts | student-chosen domains | — |
| 13 | Capstone completion & portfolio close-out | Synthesis and send-off: the data-engineering mindset revisited; how the portfolio maps to the infrastructure / RSE career paths the course serves | Final capstone work and a lightweight showcase — students present their stack briefly to peers | domains complete | **Capstone + final logs** |

## What to expect each week

The studio centers on the **artifact due that unit**. Over the term the artifacts chain
together — each builds on the last and most operate on the recurring dataset, so effort
compounds rather than resets. Every artifact has the same three-part structure:

- **The deliverable** — working code / schema / config (machine-checkable).
- **The rationale** — a short ADR-style design-decision document: what you chose, what you
  rejected, why.
- **The AI disclosure** — what tools you used, for what, where they were wrong, and how you
  verified.

See the [artifact sequence](https://bu-bioinfo.github.io/bio-data-engineering/artifacts/) for
the full definition of each.

## At-a-glance milestone map

| Week | Artifact due | Recurring-dataset state |
|------|-------------|-------------------------|
| 1 | A0 | raw / messy |
| 3 | A1 | validating schema |
| 4 | A2 | semantically grounded |
| 6 | A3 | stored three ways |
| 7 | A4 | FAIR-assessed |
| 8 | Midpoint logs + capstone proposal | (own domains begin) |
| 10 | A5 + A6 | end-to-end, traceable |
| 13 | Capstone + final logs | (own domains complete) |

## Capstone

The course finishes with a **capstone**: a self-chosen domain taken end to end — schema →
storage → FAIR assessment → validated ETL with provenance → documentation → AI disclosure. It
is the portfolio's centerpiece and the only fully human-graded artifact; everything else has
been autograded, LLM-first-passed, and human-reviewed across the term. *PhD-track capstones
target an under-modeled domain and require a defensible novel schema.*
