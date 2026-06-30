---
title: "Assessment & AI Policy"
permalink: /assessment/
toc: true
toc_sticky: true
---

Your grade in this course reflects what it's really about: **building biological data
infrastructure that is findable, trustworthy, and reusable**, and **using engineering tools —
including LLMs — well, transparently, and with critical judgment**. It does not reward a
terminal exam, because data engineering isn't an exam skill. Assessment is **by artifact**,
accumulating into a **portfolio**.

## What you'll be graded on

There is **no terminal exam** — the **capstone is the culminating assessment**. Your grade
comes from the artifact sequence, the two cumulative meta-logs, and the capstone:

| Component | What it measures | AIAS |
|---|---|:--:|
| Artifacts A0–A6 (deliverable + rationale + disclosure) | modeling, semantics, storage, FAIR, ETL, provenance | 4 |
| AI-use disclosure log (cumulative) | professional, transparent tool-use documentation | — |
| Failure log (cumulative) | critical evaluation of LLM output — where it was wrong, how you caught it | — |
| Midpoint portfolio review | progress + reflection at the single human touchpoint | — |
| Capstone (full stack for a self-chosen domain) | end-to-end engineering judgment | 4–5 |

> **Grade weights are still being finalized** — see the
> [open decisions](https://github.com/bu-bioinfo/bio-data-engineering/blob/main/internal/open-decisions.md).
> The structure above (portfolio of artifacts + meta-logs + capstone, no terminal exam) is
> settled.

Each artifact and its three parts are defined on the
[Artifacts & Portfolio](https://bu-bioinfo.github.io/bio-data-engineering/artifacts/) page.

## How grading works — and why you can trust it

The course is large with limited TA support, so grading is **engineered to be scalable,
consistent, and transparent**. Each part of an artifact is graded by the *cheapest reliable
mechanism* for that part, and you are told exactly which mechanism applies:

- **Automated (the deliverable).** Schemas, validation, ETL outputs, and storage
  implementations are machine-checkable. An autograder harness lives in the course repo; you
  run it yourself before submitting (instant formative feedback), and CI runs it on submission.
- **LLM-assisted first pass (the rationale + disclosure).** The prose components are scored by
  an LLM against the **same published rubric you were given**, producing a score per criterion
  *plus a specific justification quoting your text*. An instructor or TA then reviews that
  structured output — not your raw submission from scratch — and can override it. You may
  contest any score.
- **Human (judgment-heavy moments).** Instructor and TA time is reserved for the capstone,
  contested grades, the midpoint portfolio review, and any case the automated or LLM tiers flag
  as low-confidence.

This is deliberately **the same *specify → generate → verify → document* loop the course
teaches**, applied to grading: automation where output is verifiable, LLMs used transparently
with human oversight and auditable justifications, and human expertise concentrated where
genuine judgment is required. (The operational details — model, prompt, calibration — are
documented internally for auditability.)

## Peer and self-assessment

- **Peer review (formative).** Before submission you assess two peers' rationale documents
  against the shared rubric. Reading others' design decisions is itself how you learn design.
- **Self-assessment (required).** Each submission includes your own assessment against the
  rubric, graded for completion.

## AI use levels

This course uses the [AI Assessment Scale (AIAS)](https://aiassessmentscale.com/). Each
artifact names a level so the expectations are explicit:

| Level | Name | What it means for you |
|------:|------|---|
| 1 | No AI | Work on your own (rare in this course). |
| 2 | AI Planning | Use AI to brainstorm or outline; develop the design yourself. |
| 3 | AI Collaboration | AI helps draft; you critically evaluate and revise its output. |
| 4 | Full AI | Use AI throughout; you specify, direct, verify, and own the result. |
| 5 | AI Exploration | Open-ended, creative use. |

**Most artifacts are Level 4.** Using LLM tools there is *expected*, not a shortcut — what's
graded is your design rationale, your verification, your disclosure, and your failure log: the
parts an LLM can't produce for you, and the parts that prove you used it well.

## Academic integrity in an AI-positive course

- Using an LLM on a Level-4 artifact is **expected** — it's not a violation.
- What *is* a problem is presenting an LLM's work as understanding you don't have: a rationale
  that doesn't match your design, a disclosure that hides where you leaned on the tool, or
  "verified" ontology terms you never actually checked. These show up naturally, because the
  deliverables require you to demonstrate that you understand.
- **The failure log is where honesty pays off.** You are rewarded for documenting where the
  tool was wrong and how you caught it — that's the core competency, not an admission of
  weakness.

## Contesting a grade

Because an LLM produces the first-pass score on prose components, there is a **defined
contest/appeal path** for any grade you believe the LLM-plus-reviewer process got wrong. The
justification quoting your text is provided precisely so a contest can be resolved against the
shared rubric. _(Specific procedure to be finalized before the term — see open decisions.)_
