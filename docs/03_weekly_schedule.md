# Biological Data Engineering — Week-by-Week Schedule

**13 weeks · 4 credit hours · studio model**

Assumed weekly contact: roughly one conceptual session and one extended studio session per week (4 credit hours supports this comfortably). Each week lists its theme, the conceptual segment, the studio build, the recurring-dataset touchpoint, and any artifact milestone. Artifacts (A0–A6, Cap) and the cumulative AI-disclosure and failure logs are defined in the outline document.

A note on pacing: the schedule front-loads modeling (the conceptual spine) and keeps the back half build-heavy, with the capstone running quietly in the background from week 8 onward so the final weeks aren't a cliff.

---

## Week 1 — Orientation and the data-engineering mindset

**Concept.** Why data infrastructure, not analysis, is the binding constraint in modern biology. The data lifecycle. The course thesis. Introduction to the recurring dataset in its raw, messy form — students poke at it and surface its problems themselves. The *specify → generate → verify → document* LLM loop introduced, with a live demonstration of an LLM confidently producing a wrong biological schema and being caught.

**Studio.** Environment setup; fork the course repo template; run the CI autograder against a trivial check to see the mechanics. First-contact exploration of the raw dataset.

**Dataset.** Raw, unstructured — the "before" state.

**Milestone.** **A0 due end of week** (repo + environment + dataset exploration note + first short AI disclosure). Low-stakes, completion-graded — it exists to shake out tooling problems early.

---

## Week 2 — Data modeling fundamentals

**Concept.** What a data model *is* and why you write one before storing anything. Entities, attributes, relationships, types, constraints. The model-vs-serialization distinction. Where informal "we'll just use a spreadsheet" modeling fails biological projects.

**Studio.** Hand-model the recurring dataset on paper/whiteboard first (deliberately tool-free), then translate to a first LinkML sketch. Staff circulate.

**Dataset.** First conceptual model of it.

---

## Week 3 — LinkML in depth

**Concept.** Classes, slots, ranges, enums, inheritance, imports. Multi-file/layered schema structure. Generating downstream artifacts (JSON Schema, SQL DDL, docs) from one model — the "model once, project many" payoff.

**Studio.** Build out the recurring dataset's schema in LinkML; generate JSON Schema and documentation from it; run LinkML's own validators via the autograder.

**Dataset.** Becomes a real, validating schema.

**Milestone.** **A1 due end of week** (domain schema + rationale doc + AI disclosure). *PhD extension:* evaluate two competing real-world schemas for the domain.

---

## Week 4 — Identifiers, ontologies, and semantics

**Concept.** Why biological data engineering ≠ generic data engineering. Persistent identifiers, CURIEs/IRIs, namespaces. Ontologies and controlled vocabularies (OBO Foundry; GO, Uberon, MONDO as worked examples). Syntactic vs. semantic correctness. The acute LLM-verification problem here: hallucinated ontology terms and wrong namespaces.

**Studio.** Bind schema slots from A1 to ontology terms; add enums backed by controlled vocabularies; implement semantic validation. Students deliberately ask an LLM for ontology term IDs and then verify every one against the source — a structured exercise in catching plausible-but-wrong output.

**Dataset.** Schema gains semantic grounding.

**Milestone.** **A2 due end of week** (ontology/identifier binding + semantic validation + disclosure, with the verification exercise feeding the failure log).

---

## Week 5 — Relational databases

**Concept.** The relational model, normalization, keys, joins. Where it fits biological data cleanly and where it fights the domain (sparse/heterogeneous attributes, deeply nested records, evolving schemas).

**Studio.** Project the A1 schema to SQL DDL; load a slice of the recurring dataset into a relational store; write queries that answer real biological questions about it.

**Dataset.** Lives in a relational store, instance one of three.

---

## Week 6 — Document and graph databases

**Concept.** Document stores for semi-structured/nested biological metadata. Graph databases for networks, pathways, ontology relationships, and provenance graphs. Data shape and access pattern as the basis for choice. When a columnar file beats any database.

**Studio.** Load the same dataset slice into a document store and a graph store; pose the *same* biological questions to all three and feel the difference in how naturally each expresses them.

**Dataset.** Now exists three ways simultaneously — the comparison made visceral.

**Milestone.** **A3 due end of week** (three-way implementation + comparative tradeoff analysis + disclosure). *PhD extension:* literature-grounded argument about storage choices in a published resource.

---

## Week 7 — FAIR principles and stewardship

**Concept.** FAIR operationalized rather than recited. Metadata and catalogs (findability at institutional scale — connects to data-stewardship practice). Access protocols; interoperability via shared vocabularies (ties to week 4); reusability, licensing, provenance (ties forward to weeks 9–10).

**Studio.** Assess a real public biological resource against a FAIR rubric; identify concrete gaps; draft a prioritized remediation plan.

**Dataset.** Assess the recurring dataset's own FAIRness as a mirror exercise.

**Milestone.** **A4 due end of week** (FAIR assessment + remediation plan + disclosure).

---

## Week 8 — Midpoint portfolio review + capstone launch

**Concept.** Light week by design. A synthesis session connecting the first half (model → store → assess) into a coherent picture. Capstone introduced: students choose a domain and draft a project proposal.

**Studio.** **Midpoint portfolio review** — the single substantive human touchpoint. Structured peer review of accumulated artifacts against the shared rubrics, plus staff review of the disclosure and failure logs to date. Capstone proposals workshopped.

**Dataset.** Pause from the recurring dataset; students begin scoping their own.

**Milestone.** Midpoint logs graded (AI-disclosure log + failure log). Capstone proposal submitted. *PhD track:* proposal must target an under-modeled domain.

---

## Week 9 — ETL and pipeline patterns

**Concept.** Extract/transform/load as a discipline. Pipelines as DAGs; Snakemake/Nextflow framed as ETL-with-a-graph. Idempotency and reproducibility. Validation as a first-class pipeline stage that fails loudly.

**Studio.** Build the backbone of a pipeline that ingests the raw recurring dataset and loads it into the A1-conformant store from week 5/6, with a validation stage wired in.

**Dataset.** The raw "before" from week 1 finally connects to the validated store — closing the loop.

---

## Week 10 — Provenance and lineage

**Concept.** Recording where data came from and what transformed it. Provenance models. Why lineage is inseparable from reproducibility and from FAIR's "reusable." Provenance as a graph (callback to week 6).

**Studio.** Add a provenance/lineage layer to the week-9 pipeline; make every transformation traceable; query the lineage.

**Dataset.** Now fully traceable from raw source to validated store.

**Milestone.** **A5 (ETL pipeline) and A6 (provenance layer) due end of week** — submitted together since A6 builds directly on A5. Autograder checks pipeline conformance and lineage completeness.

---

## Week 11 — Formats, scale, and access

**Concept.** The biological format zoo (FASTQ/BAM/VCF/AnnData/OME-Zarr) vs. general formats (Parquet/Arrow/HDF5) and why the field fragmented. Storage economics and tiering. Serving data via REST/GraphQL; consuming public resources (Ensembl/UniProt/GDC) as an engineering task.

**Studio.** Convert a piece of the dataset between formats and measure the consequences (size, query speed, interoperability); consume a public API and reconcile its data into the local schema. Otherwise a capstone work session.

**Dataset.** Format/scale lens applied; then attention shifts to capstones.

---

## Week 12 — Capstone studio

**Concept.** Minimal new material — a short clinic on documentation (ADRs, READMEs, schema docs) and on writing a professional AI-disclosure log, since these are graded portfolio components.

**Studio.** Full-session supervised capstone build; staff and peers circulate. Structured peer review checkpoint on capstone drafts against the rubric.

**Dataset.** Student-chosen domains.

---

## Week 13 — Capstone completion and portfolio close-out

**Concept.** Synthesis and send-off: the data-engineering mindset revisited; how the portfolio maps to the infrastructure/RSE career paths the course was built to serve.

**Studio.** Final capstone work and lightweight showcase — students present their stack briefly to peers (low-stakes, builds the communication objective).

**Milestone.** **Capstone due** (schema + storage + FAIR assessment + validated ETL with provenance + documentation + complete AI disclosure). **Final portfolio close-out:** cumulative AI-disclosure log and failure log graded. Capstone is the only fully human-graded artifact; everything else has been autograded + LLM-first-pass + human-reviewed across the term.

---

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

Roughly even spacing, one heavier double-submission at week 10, and a deliberately light week 8 to absorb the capstone launch and the one big human-grading touchpoint.
