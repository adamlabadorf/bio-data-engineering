---
title: "How This Course Works"
permalink: /about/
toc: true
toc_sticky: true
---

Biological Data Engineering is about the *infrastructure half* of bioinformatics — how to
model, store, validate, move, and steward biological data so that the analysis built on top
of it is reproducible, trustworthy, and reusable. The goal is to make you effective at the
engineering that most bioinformatics training skips, and to send you out with a portfolio
that proves it. This page explains how the course is structured and what to expect.

## What you'll learn

You'll come away able to:

- **Model a biological domain as a formal schema** — justify your class, slot, and type
  decisions, and bind them to the right ontologies and identifier systems.
- **Choose a storage technology** (relational, document, graph, or a plain columnar file) for
  a given data shape and access pattern, and articulate the tradeoffs.
- **Evaluate a resource against the FAIR principles** and propose concrete, prioritized
  remediations.
- **Design and build a validated ETL pipeline** that ingests messy real-world biological data
  into a queryable store, and **track its provenance** so every value is traceable to its
  source.
- **Use LLM-based tools well** — accelerate the work while critically evaluating and verifying
  their output, and document that use transparently and professionally.

The emphasis throughout is on *engineering judgment*: choosing the right structure, making the
tradeoffs explicit, and building systems that make biological data dependable.

## The course thesis

Most bioinformatics training emphasizes analysis and treats the data as a given. In practice
the dominant bottleneck is the infrastructure underneath: schemas that drift, identifiers
that don't resolve, pipelines that can't be rerun, metadata that makes datasets impossible to
find. So this course is built around a single claim:

> **The credibility of a biological result is inherited from the engineering of the data it
> rests on.**

Every topic is an answer to one question: **how do we make biological data findable,
trustworthy, and reusable?**

## A studio, not a lecture hall

You already program, so class time is spent **building, not lecturing**. Each week pairs a
short conceptual segment (concepts, readings, discussion) with an **extended studio build**
where you produce a working artifact while staff circulate. Watching a validation error get
debugged beats slides about validation.

Two structural choices make the studio work compound:

- **One recurring dataset.** A single messy, real (de-identified) biological dataset threads
  through the whole semester. You model it, store it three ways, assess its FAIRness, and build
  ETL for it across successive weeks — so each unit revisits it at a higher level and the
  abstractions become concrete.
- **Everything in version control.** Course materials and your work all live in Git, so the
  mechanics of the course model the practices it teaches.

## Using LLM tools

Large language models are now part of the engineering toolchain, so this course teaches their
**professional use** rather than ignoring or prohibiting them. The workflow you'll practice
on every artifact is:

> **specify → generate → verify → document**

You constrain the problem first, let the model help generate, then *verify* — because
biological data is precisely the domain where "plausible but wrong" is dangerous (a
hallucinated ontology term, a silent unit error, a conflated identifier). **Critical
evaluation of model output is the central assessable skill of this course**, not a side note.

Each artifact tells you exactly what level of AI use is expected (see
[AI levels](#two-things-youll-see-on-every-artifact) below), so there's never any ambiguity
about what's allowed — and using these tools well and transparently is *rewarded*, not
penalized.

## How the course fits together

| Component | What you do |
|---|---|
| **Concept segment** (weekly) | Build the ideas: modeling, identifiers/semantics, storage technologies, FAIR, ETL, provenance, formats. |
| **Studio build** (weekly) | Hands-on engineering over the recurring dataset, producing the week's artifact. |
| **Artifacts (A0–A6)** | A chained sequence of deliverables, each built on the last — the heart of the course. |
| **Meta-logs** | A cumulative **AI-disclosure log** and a **failure log**, graded at midpoint and end. |
| **Midpoint review** | The one substantive human touchpoint: peer + staff review of your portfolio so far. |
| **Capstone** | Take a self-chosen domain end to end: schema → storage → FAIR → validated ETL with provenance → docs → disclosure. |

See the [artifact sequence](https://bu-bioinfo.github.io/bio-data-engineering/artifacts/) for
what each deliverable involves.

## MS and PhD in the same room

The same lectures and labs serve both degree tracks. **MS students are assessed on building
correctly.** **PhD students take on an additional critique/justification layer** on each
artifact — evaluating competing standards, engaging the primary literature, and arguing about
what "correct" means in an under-modeled domain. The capstone scales the same way. There are
no separate sections; the differentiation is in the depth of what you submit.

## Two things you'll see on every artifact

**A published rubric.** Every artifact comes with the exact rubric it will be graded against,
handed to you up front, so you always know what success looks like before you start. The same
rubric drives the autograder, peer review, and your own required self-assessment.

**An AI use level.** Every artifact is labeled with a level on the
[AI Assessment Scale (AIAS)](https://aiassessmentscale.com/), telling you how much AI use is
expected:

| Level | Name | What it means |
|------:|------|---------------|
| 1 | No AI | Work on your own (rare in this course). |
| 2 | AI Planning | AI for brainstorming/outlining; you develop the design yourself. |
| 3 | AI Collaboration | AI helps draft; you critically evaluate and revise its output. |
| 4 | Full AI | Use AI throughout; you specify, direct, verify, and own the result. |
| 5 | AI Exploration | Open-ended, creative use. |

Most artifacts are **Level 4** — using the tools is expected, not a shortcut. What's graded is
your design rationale, your verification, your AI-use disclosure, and your failure log: the
parts that show you used the tool well and caught it when it was wrong.
