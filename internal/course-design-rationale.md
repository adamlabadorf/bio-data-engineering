# Course Design Rationale (INTERNAL)

> **Internal planning document — not published to the course site.** This captures the
> *why* behind Biological Data Engineering's design for the instructor team. The
> student-facing version of this material is the **"How This Course Works"** page
> (`docs/course-design.md`, `/about/` on the site), which addresses students directly and
> omits the rationale and open decisions below.

## What this course is (and isn't)

The intellectual goal is to treat **data engineering as a first-class discipline** within
bioinformatics — modeling, storage, identifiers and semantics, FAIR stewardship, ETL, and
provenance — grounded in real biological data rather than generic "here is SQL" material.

Two motivations:

- **Scientific.** Most bioinformatics training emphasizes *analysis* and treats the data as a
  given. In practice the dominant bottleneck is the infrastructure underneath: schemas that
  drift, identifiers that don't resolve, pipelines that can't be rerun, metadata that makes
  datasets impossible to find or reuse. The central thesis: *the credibility of a biological
  result is inherited from the engineering of the data it rests on.*
- **Professional.** Infrastructure- and software-oriented roles in biological research — data
  architects, pipeline engineers, schema/standards developers, research-software engineers —
  are growing and chronically undertrained for. The course is explicitly designed to produce a
  **portfolio** that demonstrates those competencies to employers.

It is deliberately **not** a generic data-engineering course and **not** an analysis/stats
course. The organizing question for every unit: *how do we make biological data findable,
trustworthy, and reusable?*

## Distinctive design choices (rationale)

- **Bio-specific, not generic.** The hard, course-defining material is the part that is unique
  to biology — ontologies and controlled vocabularies, persistent identifiers, the format zoo,
  provenance, and domain semantics. Generic relational theory is necessary but not the point.
- **Studio over lecture.** The audience already programs, so class time is spent building with
  staff circulating. Watching a validation error get debugged beats slides about validation.
- **One recurring dataset.** A single messy, real (de-identified) dataset threads through the
  whole term (model → store → assess → move → trace). Principles compound rather than reset,
  and abstractions become concrete because they're always applied to the same concrete thing.
  *The dataset must be prepared in raw and held-out forms before week 1 — see open decisions.*
- **Portfolio assessment, no terminal exam.** Data engineering isn't an exam skill. The
  artifact sequence accumulates into an employer-facing portfolio, which also serves the
  professional motivation directly.

## LLM use as an assessed core skill (rationale)

LLMs are now part of the engineering toolchain. Rather than ignore or prohibit them, the
course teaches the professional workflow — **specify → generate → verify → document** — and
treats **critical evaluation of model output as the central assessable competency**. Biological
data is precisely the domain where "plausible but wrong" is dangerous (hallucinated ontology
terms, wrong namespaces, silent unit errors, conflated identifiers), which is what makes the
verification skill both teachable and consequential here.

The design ensures LLM use cannot circumvent the learning goals because the graded product is
the part a model cannot supply on the student's behalf: the **design rationale (ADR)**, the
**verification**, the **AI-use disclosure**, and the **failure log**. The failure log in
particular is the single most pedagogically valuable artifact for the AI-use objective and
generates honest data on the tools' real limits.

## Adapting AIAS to an all-positive course

We label every artifact with a level on the [AI Assessment Scale (AIAS)](https://aiassessmentscale.com/)
to remove ambiguity, exactly as a transparent-assignment practice would. Unlike a course with
a no-AI exam baseline, **this course has essentially no Level-1 components** — it is AI-positive
throughout, so artifacts sit at Level 4 (most) and the capstone at 4–5. What protects the
learning goal is not a no-AI baseline but the *structure of the deliverable*: rationale,
verification, disclosure, and failure log are the assessed core, and they require genuine
understanding regardless of how much the model helped.

> **Note for the instructor team:** we deliberately did **not** import BF550's "code literacy
> over code authorship" pedagogy. That course's bet (assess reading, delegate authoring) does
> not apply here — this is an engineering-build course assessed by working artifacts. We
> reused BF550's *repository format, content layout, and AI-disclosure/AIAS framing* only.

## Degree-track differentiation (mechanism)

The same lectures and labs serve MS and PhD students. **MS is assessed on building correctly;
PhD adds a per-artifact +critique extension** — evaluating competing standards, engaging the
primary literature, and arguing about what "correct" means in an under-modeled domain. The
capstone scales the same way (PhD: an under-modeled domain and a defensible novel schema).
There are no separate sections; differentiation is in assessment depth. This is what lets one
course serve both tracks without splitting.

## Operational note

Running portfolio assessment at scale (50–60 students, limited TA support) is the operational
crux and is documented separately in
[`assessment-at-scale.md`](assessment-at-scale.md): tier the grading by what each part needs
(automated deliverable / LLM-first-pass prose / human judgment), reuse one rubric five ways,
and reserve human attention for the capstone and contested or low-confidence cases.

## Open decisions

Items still to be settled live in [`open-decisions.md`](open-decisions.md). Student-facing
pages deliberately omit these.
