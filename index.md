---
link-citations: true
---

> **CURRENTLY UNDER CONSTRUCTION.** This site is being bootstrapped. Content,
> schedule, and policies are drafts — see the planning docs in the
> [GitHub repository](https://github.com/bu-bioinfo/bio-data-engineering) and the
> [open decisions](https://github.com/bu-bioinfo/bio-data-engineering/blob/main/internal/open-decisions.md).

**Program:** BU Bioinformatics MS — open to MS and PhD students

**Credits:** 4 · **Length:** 13 weeks · **Format:** studio (build, don't just lecture)

**Meeting time:** One conceptual session + one extended studio session per week _(days/times TBD)_

**Location:** _TBD_

## Contents

- [Course Objectives](#course-objectives)
- [Course Description](#course-description)
- [What Makes This Course Different](#what-makes-this-course-different)
- [Audience & Prerequisites](#audience--prerequisites)
- [Required Software](#required-software)
- [AI Use in This Course](#ai-use-in-this-course)
- [Assessment](#assessment)
- [Course Schedule](#course-schedule)

## Course Objectives

- Build **intuition for data infrastructure as a first-class discipline** — modeling,
  storage, identifiers and semantics, FAIR stewardship, ETL, and provenance — and learn
  **how to choose** the right approach for a given biological data shape and access pattern.
- **Model a biological domain as a formal schema** with ontology bindings and persistent
  identifiers, and project that one model to many serializations.
- **Build a validated, traceable pipeline** that ingests messy real-world data into a
  queryable store, with provenance and FAIRness treated as engineering requirements.
- Use **LLM-based tools professionally** — *specify → generate → verify → document* — and
  critically evaluate their output, because biological data is exactly where "plausible but
  wrong" is dangerous.
- Apply all of the above to real **molecular-biology and genomics** data, accumulating a
  version-controlled, **employer-facing portfolio**.

See the full [learning objectives]({{ site.baseurl }}/learning-objectives/).

## Course Description

Biological Data Engineering is the *infrastructure half* of bioinformatics: how to model,
store, validate, move, and steward biological data so that downstream analysis is
reproducible, trustworthy, and reusable at scale. Most bioinformatics training emphasizes
*analysis* and treats the data as a given; in practice the dominant bottleneck is the data
infrastructure underneath — schemas that drift, identifiers that don't resolve, pipelines
that can't be rerun, and metadata that makes datasets impossible to find or reuse.

The course's central thesis: *the credibility of a biological result is inherited from the
engineering of the data it rests on.* Every topic is framed as an answer to one question:
**how do we make biological data findable, trustworthy, and reusable?**

## What Makes This Course Different

- **Bio-specific, not generic data engineering.** It centers what makes biological data
  uniquely hard — ontologies and controlled vocabularies, persistent identifiers, the format
  zoo (FASTQ/BAM/VCF/AnnData), provenance, and domain semantics — not just "here is SQL."
- **Studio model.** You already program; class time is spent **building, not lecturing**. You
  produce a working artifact almost every week.
- **One recurring dataset.** A single messy, real (de-identified) biological dataset threads
  through the whole term — you model it, store it, assess its FAIRness, and build ETL for it
  across successive weeks, so principles **compound** rather than reset.
- **LLM use as a transparent, assessed core skill.** Rather than ignore or prohibit them, the
  course teaches the professional workflow — *specify, generate, verify, document* — and
  treats **critical evaluation of model output** as the central assessable competency.
- **Portfolio assessment, no terminal exam.** You're assessed on a sequence of engineering
  artifacts that accumulate into a coherent, employer-facing portfolio.

## Audience & Prerequisites

MS and PhD students in Bioinformatics with **at least some programming experience**
(comfortable writing scripts, using the command line, and reading code). **No prior database
or data-engineering coursework is assumed.** The same lectures and labs serve both tracks;
**degree-track differentiation is handled through assessment depth**, not separate sections —
PhD students take on an additional critique/justification layer per unit. See
[How This Course Works]({{ site.baseurl }}/about/).

## Required Software

Work is done in **Python**, in **Git/GitHub** (all course materials and student work live in
version control), with **LinkML** for modeling and a small set of database and pipeline tools
introduced as the course progresses. Students are **provided LLM-based coding tools** and
expected to use them transparently. Specific tool versions and the recurring dataset are
finalized before Week 1 _(see [open decisions](https://github.com/bu-bioinfo/bio-data-engineering/blob/main/internal/open-decisions.md))_.

## AI Use in This Course

LLMs are part of the engineering toolchain, so this course teaches their professional use
rather than banning them. To make expectations explicit, each artifact is labeled with a
level on the **AI Assessment Scale (AIAS)** (Perkins, Furze, Roe & MacVaugh, 2024):

| Level | Name | What it means here |
|---|---|---|
| 1 | **No AI** | (rare here) work done without AI assistance |
| 2 | **AI Planning** | AI for brainstorming/outlining; design developed independently |
| 3 | **AI Collaboration** | AI drafts/feedback; you critically evaluate & modify |
| 4 | **Full AI** | Use AI throughout the build; you specify, direct, verify, and disclose |
| 5 | **AI Exploration** | Open-ended, co-designed creative use |

Most artifacts are **Level 4**. What protects the learning goal is not restricting the tool
but requiring the **design rationale, the verification, the AI-use disclosure, and the
failure log** — the artifacts that demonstrate you used the tool well and caught where it was
wrong. Full policy: [Assessment & AI Policy]({{ site.baseurl }}/assessment/).

## Assessment

Assessment is **by artifact**, accumulating into a **portfolio** — there is **no terminal
exam**. Each artifact bundles a working deliverable, a short design-rationale document
(ADR-style), and an AI-use disclosure. Two meta-artifacts span the whole term: a cumulative
**AI-disclosure log** and a **failure log**.

| Artifact | Built on | Primary objective |
|---|---|---|
| **A0** — Environment + repo + "hello dataset" exploration | — | Onboarding; studio/Git mechanics; first AI disclosure |
| **A1** — Domain schema (LinkML) for the recurring dataset | A0 | Modeling |
| **A2** — Ontology/identifier binding + semantic validation | A1 | Semantics |
| **A3** — Three-way storage implementation + comparative analysis | A1 | Storage choice |
| **A4** — FAIR assessment + remediation plan for a real resource | — | FAIR stewardship |
| **A5** — Validated ETL pipeline (raw → schema-conformant store) | A1–A3 | ETL |
| **A6** — Provenance/lineage layer over the A5 pipeline | A5 | Provenance |
| **Capstone** — full stack for a self-chosen domain | all | Synthesis |

PhD-track students complete a **+critique extension** on each artifact. See
[Artifacts & Portfolio]({{ site.baseurl }}/artifacts/) and
[Assessment & AI Policy]({{ site.baseurl }}/assessment/).

## Course Schedule

> *Schedule is subject to change; the recurring dataset, tools, and exact dates will be
> finalized before the term begins.*

| Wk | Theme | Studio build | Recurring-dataset state | Milestone |
|---:|---|---|---|:--:|
| [1]({{ site.baseurl }}/lectures/week-01/) | Orientation & the data-engineering mindset | Env setup; fork repo; run CI; first dataset poke | raw / messy | **A0** |
| [2]({{ site.baseurl }}/lectures/week-02/) | Data modeling fundamentals | Hand-model, then first LinkML sketch | first conceptual model | — |
| [3]({{ site.baseurl }}/lectures/week-03/) | LinkML in depth | Build schema; generate JSON Schema + docs | validating schema | **A1** |
| [4]({{ site.baseurl }}/lectures/week-04/) | Identifiers, ontologies & semantics | Bind slots to ontology terms; semantic validation | semantically grounded | **A2** |
| [5]({{ site.baseurl }}/lectures/week-05/) | Relational databases | Project schema to SQL; load + query a slice | relational store (1 of 3) | — |
| [6]({{ site.baseurl }}/lectures/week-06/) | Document & graph databases | Same data, three stores; same questions | stored three ways | **A3** |
| [7]({{ site.baseurl }}/lectures/week-07/) | FAIR principles & stewardship | FAIR-assess a real resource; remediation plan | FAIR-assessed | **A4** |
| [8]({{ site.baseurl }}/lectures/week-08/) | Midpoint review + capstone launch | Portfolio review; capstone proposals | (own domains begin) | midpoint logs + proposal |
| [9]({{ site.baseurl }}/lectures/week-09/) | ETL & pipeline patterns | Build ingest pipeline w/ validation stage | raw connects to store | — |
| [10]({{ site.baseurl }}/lectures/week-10/) | Provenance & lineage | Add lineage layer; query provenance | end-to-end, traceable | **A5 + A6** |
| [11]({{ site.baseurl }}/lectures/week-11/) | Formats, scale & access | Convert formats; consume a public API | format/scale lens | — |
| [12]({{ site.baseurl }}/lectures/week-12/) | Capstone studio | Supervised capstone build; doc clinic | student domains | — |
| [13]({{ site.baseurl }}/lectures/week-13/) | Capstone completion & portfolio close-out | Final build + lightweight showcase | domains complete | **Capstone + final logs** |
