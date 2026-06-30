# Open Decisions (INTERNAL)

> **Internal planning index — not published to the course site.** Tracks the design
> decisions still to be made for Biological Data Engineering. Student-facing pages
> deliberately omit these notes.

| # | Decision | Where it surfaces | Status |
|---|---|---|---|
| 1 | **Choose & prepare the recurring dataset** — a single messy, real (de-identified) biological dataset, in raw and held-out forms, ready before week 1 | schedule, /about/, every artifact | **open — blocks week 1** |
| 2 | **Final grade weights** — how A0–A6, the meta-logs, the midpoint review, and the capstone roll into a final grade (structure is settled; percentages are not) | assessment, syllabus | open |
| 3 | **Toolchain** — Python version; LinkML version; the specific relational / document / graph stores; the pipeline tool (Snakemake vs. Nextflow); the autograder harness | artifacts, schedule | open |
| 4 | **Provided LLM tool(s)** for students and how they're provisioned | syllabus, /about/ | open |
| 5 | **LLM-grading harness** — model, prompt, low temperature, and the calibration set of instructor-graded exemplars | assessment-at-scale (internal) | open |
| 6 | **Contest/appeal procedure** — the detailed path for disputing an LLM-first-pass grade | assessment | open |
| 7 | **Per-artifact deliverable bundles, file layout, and rubrics** (write once, reuse five ways) | artifacts, artifact-authoring (internal) | open |
| 8 | **Public resource(s) for the A4 FAIR assessment** | schedule (wk 7), A4 | open |
| 9 | **Course number** and official catalog title | site title, branding | open — using bare "Biological Data Engineering" for now |
| 10 | **Meeting schedule, term, room** | syllabus, index | open |
| 11 | **Capstone logistics** — individual vs. team, scope bounds, showcase format | schedule, assessment | open |
| 12 | **BU/program policy statements; program-outcome mapping** | syllabus, learning-objectives | open |
| 13 | **Publishing org confirmed** — site builds for `bu-bioinfo.github.io/bio-data-engineering`; repo currently lives under `adamlabadorf/bio-data-engineering`. Confirm the published GitHub Pages location and that the `bu-bioinfo` links in the README/prose are correct | _config.yml, README, prose links | open — assumed `bu-bioinfo` per BF550 precedent |

## Settled

- **No terminal exam; capstone is the culminating assessment.** Portfolio-by-artifact
  structure (A0–A6 + capstone) with two cumulative meta-logs (AI-disclosure log, failure log).
- **Degree-track differentiation by assessment depth**, not separate sections: MS builds
  correctly; PhD adds a +critique extension per artifact.
- **Studio model** over one recurring dataset; everything in Git.
- **LLM use is AI-positive throughout** (AIAS Level 4 for most artifacts), with rationale +
  verification + disclosure + failure log as the assessed, LLM-proof core.
