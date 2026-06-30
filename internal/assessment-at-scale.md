# Assessment at Scale (INTERNAL)

> **Internal planning document — not published to the course site.** The student-facing
> version of this material — *what* you're graded on and the transparent fact that an LLM
> produces first-pass prose scores under human review — is the
> **"Assessment & AI Policy"** page (`docs/assessment-and-ai-policy.md`, `/assessment/`).
> This file holds the operational strategy for running it.

This is the operational crux: portfolio assessment for **50–60 students with limited TA
support**, run consistently, transparently, and with deliberate LLM involvement. The strategy
is to grade each part of each artifact by the **cheapest reliable mechanism** for that part,
reserving scarce human attention for where judgment genuinely matters.

## Tier the grading by what each part needs

Recall each artifact has three parts (deliverable / rationale / disclosure). They grade
differently:

**Tier 1 — Automated (the deliverable).** Schemas, validation, ETL outputs, and storage
implementations are machine-checkable. Provide an **autograder harness in the course repo**:
schema linting (LinkML's own validators), conformance tests against a held-out slice of the
recurring dataset, pipeline smoke tests, and structural checks. Students run it themselves
before submitting (formative); CI runs it on submission (summative). This removes the largest,
most mechanical grading burden entirely and gives students instant feedback.

**Tier 2 — LLM-assisted first pass (the rationale + disclosure).** The prose components are
where an LLM grader, used carefully, *scales* human judgment rather than replacing it:

- A **fixed, published rubric** per artifact — the same one given to students.
- An LLM scores each submission against that rubric and produces **structured output: a score
  per criterion plus a specific justification quoting the student's text**. The justification
  is non-negotiable — it is what makes the pass auditable.
- The instructor/TA reviews the **LLM's output, not the raw submissions**, spot-checking and
  overriding. Reviewing structured, justified assessments is several times faster than grading
  from scratch.
- **Transparency to students:** they are told exactly that an LLM produces the first-pass score
  against the shared rubric, that a human reviews it, and that they may contest. This models
  the same honesty the course demands of them.
- **Consistency safeguards:** same model, same prompt, same rubric, temperature low; calibrate
  on a handful of instructor-graded exemplars at the start; periodically re-score a sample to
  check for drift.

**Tier 3 — Human (judgment-heavy moments only).** Reserve TA/instructor time for: capstone
evaluation, contested grades, the midpoint portfolio review (a single substantive human
touchpoint), and flagged edge cases the automated/LLM tiers surface as low-confidence.

## Peer and self-assessment for formative load

- **Structured peer review** for formative feedback on the rationale docs — students assess two
  peers against the shared rubric before submission. Pedagogically valuable (reading others'
  design decisions teaches design) and offloads formative feedback from staff.
- **Self-assessment** against the rubric is a required, graded-for-completion part of each
  submission.

## Why this is defensible

The arrangement is internally consistent with the course's thesis: automation where output is
verifiable, LLMs used transparently with human oversight and auditable justifications, and
human expertise concentrated where genuine judgment is required. It is the same *specify →
generate → verify → document* loop the course teaches, applied to grading — and it is honest
with students about all of it.

## Operational checklist

- One course repo template, forked per student; CI autograder wired in from A0.
- Rubrics written *before* the semester, published with each assignment, **reused by the
  autograder, LLM grader, peer review, and self-assessment alike** (write once, use five ways).
- An LLM-grading harness with **logged prompts/outputs for auditability** and a **calibration
  set of instructor-graded exemplars**.
- A **defined contest/appeal path** (student-facing summary lives on the assessment page; the
  detailed procedure is an open decision).
- The **recurring dataset prepared in raw and held-out forms before week 1.**

## Open decisions

See [`open-decisions.md`](open-decisions.md): the grading model/prompt and calibration set,
final grade weights, the contest procedure, and the recurring dataset itself are all still to
be fixed.
