### How these course materials were built

This document describes how the Biological Data Engineering course site and supporting
materials were developed. It's here because the development process leaned heavily on AI
tools, and because this is a course that explicitly asks students to be transparent about
their own AI use — so we hold the same standard for ourselves. The student-facing short
version lives in the [syllabus](https://bu-bioinfo.github.io/bio-data-engineering/syllabus/);
this is the full disclosure.

### Roles

**The instructor team (Adam Labadorf and co-instructors):** We are the designers, reviewers,
and owners of this course. The pedagogical decisions are ours — the framing of **data
engineering as a first-class discipline**, the **studio model**, the **single recurring
dataset**, the **portfolio-of-artifacts** assessment with no terminal exam, the **degree-track
differentiation** (MS builds correctly; PhD adds a critique/justification layer), and the
treatment of **LLM use as a transparent, assessed core skill** via the *specify → generate →
verify → document* loop. We direct the work, review and edit the output, decide what ships,
and are responsible for the final content.

**AI coding agent (Claude, by Anthropic, via Claude Code):** The written materials in this
repo — the Jekyll site pages, syllabus, schedule, learning objectives, artifact sequence, and
internal design docs — were **drafted and organized by an AI agent** from our specifications
and direction, in an interactive working session. The agent also built the site scaffold,
mirroring the structure and Jekyll template of the
[BF550](https://bu-bioinfo.github.io/bf550) course site, and adapted that organization to
this course's own pedagogy. We did not hand-author most of the prose.

### Workflow

1. **Brief.** Adam provided the course concept in detail: the rationale (infrastructure is
   the bottleneck), the central thesis, the seven topic units, the artifact sequence, the
   assessment-at-scale strategy, and the studio format — captured in the planning documents
   that seeded this repo.
2. **Drafting.** The agent drafted the site and documents and built the Jekyll scaffold from
   that brief, reusing the BF550 repository's format and content layout (student/instructor
   split, collections, GitHub Pages workflow) while replacing its code-literacy pedagogy with
   this course's data-engineering approach.
3. **Review and iteration.** Adam reviewed the output and directed revisions — including
   separating internal planning material from the public site and writing the student-facing
   copy to address *students* directly.
4. **Decisions.** What to build, what the course is, and what is acceptable to publish were
   the instructor team's calls throughout.

Working at roughly **AIAS Level 3–4** (AI Collaboration to Full AI): the agent did the
drafting and building; human judgment directed and evaluated it.

### What this means for the materials

* **The pedagogy is intentional.** The teaching philosophy, the artifact sequence, and the
  assessment design were decided by the instructors before and during drafting — they are not
  artifacts of what an AI happened to produce.
* **The copy is a living draft.** These materials are being reviewed and edited by the
  instructor team and will continue to change. Wording is ours to refine; errors are ours to
  fix.
* **Open decisions are tracked openly.** Items still to be settled live in
  [`internal/open-decisions.md`](internal/open-decisions.md).

### What this means for students

This course treats AI tools as a legitimate, expected part of engineering work — used
deliberately, verified critically, and disclosed honestly. This document is us doing exactly
what we ask of you in every artifact's AI-use disclosure: being open about where AI helped,
and keeping human judgment accountable for the result. It is the same *specify → generate →
verify → document* loop the course teaches, applied to building the course itself.

### Ongoing posture

Norms around AI-assisted course development are still settling. This disclosure will be
updated as the course materials evolve.
