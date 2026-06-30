---
title: "Syllabus"
permalink: /syllabus/
toc: true
toc_sticky: true
---

> *This syllabus is a draft and will be finalized before the term begins. Meeting times,
> location, the recurring dataset, and policy statements will be filled in.*

## Course information

| | |
|---|---|
| **Title** | Biological Data Engineering |
| **Credits** | 4 |
| **Program** | BU Bioinformatics MS — open to MS and PhD students |
| **Meetings** | 1 conceptual session + 1 extended studio session per week, 13 weeks |
| **Format** | Studio (build, don't just lecture) over one recurring dataset |
| **Instructor(s)** | *TBD* |
| **Prerequisites** | Some programming experience (scripts, command line, reading code); no prior database or data-engineering coursework assumed |

## Course description

Biological Data Engineering is the *infrastructure half* of bioinformatics: how to model,
store, validate, move, and steward biological data so that downstream analysis is
reproducible, trustworthy, and reusable at scale. Most bioinformatics training emphasizes
analysis and treats the data as a given; this course treats **data engineering as a
first-class discipline**. It centers what makes biological data uniquely hard — ontologies and
controlled vocabularies, persistent identifiers, the format zoo (FASTQ/BAM/VCF/AnnData),
provenance, and domain semantics — and is taught as a **studio**: you spend class time
building, producing a working artifact almost every week over a single recurring dataset.

The course's central thesis: *the credibility of a biological result is inherited from the
engineering of the data it rests on.*

## What makes this course different

- **Bio-specific, not generic data engineering.** Ontologies, identifiers, semantics, and the
  biological format zoo — not just "here is SQL."
- **Studio model.** Class time is spent building, with staff circulating; you produce working
  artifacts every week.
- **One recurring dataset.** A single messy, real (de-identified) dataset threads through the
  whole term so principles compound.
- **LLM use as a transparent, assessed core skill.** You'll practice *specify → generate →
  verify → document* and be graded on critical evaluation of model output.
- **Portfolio assessment.** No terminal exam — a sequence of engineering artifacts that
  accumulate into an employer-facing portfolio.

See [How This Course Works](https://bu-bioinfo.github.io/bio-data-engineering/about/) for the
full picture.

## Learning objectives

See the [learning objectives](https://bu-bioinfo.github.io/bio-data-engineering/learning-objectives/).
In short: model a biological domain as a formal schema with ontology bindings; choose and
justify storage technologies; assess and remediate FAIRness; build a validated ETL pipeline
with provenance tracking; use LLM tools well and verify their output; and communicate design
decisions through architecture documentation.

## Schedule

See the [schedule](https://bu-bioinfo.github.io/bio-data-engineering/schedule/) for the 13-week
studio progression.

## Assessment

See [Assessment & AI Policy](https://bu-bioinfo.github.io/bio-data-engineering/assessment/).
Your grade comes from a **portfolio of engineering artifacts** (A0–A6), two cumulative
meta-logs (an AI-disclosure log and a failure log), and a **capstone**. There is **no terminal
exam** — the capstone is the culminating assessment. Each artifact bundles a working
deliverable, a design-rationale document, and an AI-use disclosure.

## Degree-track differentiation

The same lectures and labs serve both tracks. **MS students are assessed on building
correctly; PhD students complete an additional critique/justification layer** on each artifact
(evaluating competing standards, engaging the primary literature) and a more demanding
capstone. The differentiation is in assessment depth, not separate sections.

## Materials & tools

- **Language / runtime:** Python.
- **Modeling:** LinkML.
- **Version control:** Git/GitHub — all course materials and student work live in version
  control.
- **Databases & pipelines:** a small set of relational, document, graph, and pipeline tools,
  introduced as the course progresses _(specific tools TBD — see open decisions)_.
- **LLM tools:** provided; assumed and expected, used transparently.
- **Recurring dataset:** a single messy, real (de-identified) biological dataset, prepared in
  raw and held-out forms before Week 1 _(dataset TBD)_.
- **Readings:** selected papers, standards documents, and tool documentation; no single
  required textbook.

## Policies

*Standard BU and Bioinformatics MS program policies — academic conduct, AI use (per the levels
on each artifact), accessibility and accommodations, attendance, and religious observance —
will be included here in the final syllabus.*

## A note on how this course was built

In the spirit of the AI-use expectations we set for you, here's how these course materials
were made.

This course was designed by the instructor team. The pedagogical choices — data engineering as
a first-class discipline, the studio model, the recurring dataset, the portfolio-of-artifacts
assessment, and the transparent treatment of LLM use — are the team's own. Generative AI
(Claude, by Anthropic) was used substantially to draft and organize the written materials on
this site from the team's specifications and intent, working at roughly **AI Assessment Scale
level 3–4 (AI Collaboration to Full AI)**. Everything is reviewed and edited by the
instructors, who are responsible for the final content.

We share this for the same reason we ask you to disclose your own AI use on every artifact:
being open about where these tools help, and keeping human judgment accountable for the
result, is exactly the practice this course is trying to teach.

The full account — who did what, the workflow, and what it means for the materials — is in
[`AI_DISCLOSURE.md`](https://github.com/bu-bioinfo/bio-data-engineering/blob/main/AI_DISCLOSURE.md)
in the course repository.
