# Artifact Authoring — Guidance (INTERNAL)

> **Internal planning document — not published to the course site.** The student-facing
> version is the **"Artifacts & Portfolio"** page (`docs/artifact-framework.md`,
> `/artifacts/`). This file holds the guidance for whoever is *writing* the artifacts and
> their rubrics.

## The non-negotiable three-part structure

Every artifact must be authored as **deliverable + rationale + AI disclosure**, because that
structure is what makes grading tractable at scale (see
[`assessment-at-scale.md`](assessment-at-scale.md)) and what keeps the learning goal
LLM-proof:

1. **Deliverable** — must be **machine-checkable** by the autograder. If you can't write an
   autograder check for it, redesign the deliverable.
2. **Rationale (ADR-style)** — what was chosen, what was rejected, why. Graded by the LLM
   first pass against the published rubric.
3. **AI disclosure** — tools used, for what, where they were wrong, how verified. Feeds the
   cumulative disclosure and failure logs.

## Author rules

- **Build on the chain.** Most artifacts operate on the **recurring dataset** and build on the
  previous one (see the dependency column on the artifacts page). Authoring a new artifact
  means specifying exactly which prior artifact's output it consumes.
- **Publish the rubric with the artifact.** Write the rubric *before* releasing the artifact;
  it is reused five ways (autograder, LLM grader, two peer reviewers, self-assessment,
  instructor review). One rubric, one standard.
- **Make verification a first-class task, not a footnote.** Especially for A2 (ontology terms)
  and any artifact where an LLM will be tempted to hallucinate: build an explicit
  "verify every item against the source" step into the task, and route what students catch into
  the failure log.
- **Author both tracks.** Each artifact needs a **base spec (MS)** and a **+critique extension
  (PhD)**. The extension is a critique/justification layer (competing standards, primary
  literature, "what does correct even mean here"), *not* more building.

## Per-artifact authoring notes

- **A0 (onboarding).** Keep it low-stakes/completion-graded; its real job is to surface tooling
  problems and rehearse the AI-disclosure habit. Autograder check should be trivial.
- **A1 (LinkML schema).** Deliverable autogrades via LinkML's own validators + conformance
  against the held-out slice. PhD: compare two real-world schemas for the domain.
- **A2 (semantics).** The verification exercise *is* the artifact. Require evidence that every
  ontology term/identifier was checked against the authoritative source.
- **A3 (storage three ways).** The comparative tradeoff analysis is the graded core, not three
  working DBs. Pose the *same* biological questions to all three stores.
- **A4 (FAIR).** Use a fixed FAIR rubric; the prioritized remediation plan is the deliverable's
  judgment component.
- **A5 + A6 (ETL + provenance).** Submitted together. Autograder checks pipeline conformance and
  lineage completeness. Validation must be a pipeline stage that fails loudly.
- **Capstone.** The only fully human-graded artifact. PhD: under-modeled domain + defensible
  novel schema.

## Biological-grounding requirement (author rule)

Every artifact must use **real biological data and real biological questions** — primarily the
recurring dataset, or (for A4) a real public resource. The point of the course is the
domain-specific hardness (semantics, identifiers, formats), so generic toy data defeats the
purpose. The recurring dataset must be chosen and prepared (raw + held-out) before week 1.

## Open decisions

- **GAP:** define the standard deliverable bundle and file layout per artifact (e.g.
  `schema.yaml`, `rationale.md`, `ai-disclosure.md`, `failure-log.md`), the per-artifact rubric,
  and the toolchain (Python version, LinkML version, the specific relational/document/graph
  stores, the pipeline tool, the autograder harness). Tracked in
  [`open-decisions.md`](open-decisions.md).

## Templates

Authoring templates live in [`templates/`](templates/): the artifact template (deliverable +
ADR rationale + disclosure + rubric) and the AI-disclosure entry template.
