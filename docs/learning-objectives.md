---
title: "Learning Objectives"
permalink: /learning-objectives/
toc: true
toc_sticky: true
---

By the end of Biological Data Engineering, you will be able to:

## Modeling & semantics

1. **Model a biological domain as a formal schema**, justifying class, slot, and type
   decisions, and binding to appropriate ontologies and identifier systems.
2. **Distinguish semantic from syntactic correctness** — recognize when data is well-formed
   but biologically wrong (hallucinated ontology terms, wrong namespaces, conflated
   identifiers) and validate against both.

## Storage & access

3. **Select an appropriate database technology** (relational, document, graph) — or none, when
   a columnar file wins — for a given biological data shape and access pattern, and articulate
   the tradeoffs.

## Stewardship

4. **Evaluate a dataset or resource against the FAIR principles** (Findable, Accessible,
   Interoperable, Reusable) and propose concrete, prioritized remediations.

## Pipelines & provenance

5. **Design and implement an ETL pipeline** that ingests messy real-world biological data into
   a validated, queryable store, with validation as a first-class stage that fails loudly.
6. **Reason about data provenance** and implement lineage tracking for a transformation
   workflow, recording where data came from and what transformed it.

## Working with LLM tools

7. **Use LLM-based tools to accelerate engineering work while critically evaluating and
   verifying their output** — following the *specify → generate → verify → document* loop —
   and document that use transparently and professionally.

## Communication

8. **Communicate data-engineering design decisions** through architecture documentation —
   ADRs (architecture decision records), schema docs, and READMEs.

## PhD-track objective (additional)

9. **Critically evaluate competing data-modeling standards** within a biological subfield and
   propose a defensible schema for an under-modeled domain — engaging the primary literature
   and arguing about what "correct" means where the domain is not yet well modeled.

---

These objectives map onto the artifact sequence (A0–A6 + capstone); see
[Artifacts & Portfolio](https://bu-bioinfo.github.io/bio-data-engineering/artifacts/) for how
each deliverable builds them.
