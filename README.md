# Biological Data Engineering

### 🌐 Course site → **<https://bu-bioinfo.github.io/bio-data-engineering/>**

A graduate course for the BU Bioinformatics MS/PhD on the *infrastructure half* of
bioinformatics: how to **model, store, validate, move, and steward biological data** so that
downstream analysis is reproducible, trustworthy, and reusable at scale. The course makes a
deliberate bet: in modern biology the binding constraint is not the analysis but the data
engineering underneath it, so it treats data engineering as a first-class discipline and
builds an employer-facing portfolio along the way.

> **Status: design / bootstrap.** This repo holds the course site (published via GitHub
> Pages) plus internal planning docs. Student-facing pages live in `docs/` and render on the
> site; instructor-only rationale and open decisions live in [`internal/`](internal/)
> (excluded from the site) — see [`internal/open-decisions.md`](internal/open-decisions.md).
>
> **AI use:** how these materials were built is documented in
> [`AI_DISCLOSURE.md`](AI_DISCLOSURE.md).

## At a glance

| | |
|---|---|
| **Credits** | 4 |
| **Contact** | 1 conceptual session + 1 extended studio session per week |
| **Length** | 13 weeks |
| **Audience** | BU Bioinformatics MS **and** PhD students |
| **Prereq** | Some programming experience (scripts, command line, reading code); no prior DB/data-engineering coursework assumed |
| **Format** | Studio (build, don't just lecture) over one recurring dataset |
| **LLM tools** | Provided; assumed, allowed, and assessed — *specify → generate → verify → document* |
| **Assessment** | Portfolio of engineering artifacts (A0–A6 + capstone); no terminal exam |

## Course documents

- **[How this course works](https://bu-bioinfo.github.io/bio-data-engineering/about/)** —
  student-facing overview: what you'll learn, the studio model, the recurring dataset, and
  how the pieces fit. *(Instructor rationale lives in
  [`internal/course-design-rationale.md`](internal/course-design-rationale.md).)*
- **[Learning objectives](https://bu-bioinfo.github.io/bio-data-engineering/learning-objectives/)** — what students will be able to do.
- **[Syllabus](https://bu-bioinfo.github.io/bio-data-engineering/syllabus/)** — the course syllabus.
- **[Schedule](https://bu-bioinfo.github.io/bio-data-engineering/schedule/)** — 13-week studio progression.
- **[Artifacts & Portfolio](https://bu-bioinfo.github.io/bio-data-engineering/artifacts/)** — the
  A0–A6 + capstone artifact sequence and the deliverable / rationale / disclosure structure.
- **[Assessment & AI policy](https://bu-bioinfo.github.io/bio-data-engineering/assessment/)** — portfolio
  assessment, degree-track differentiation, and the per-artifact AIAS mapping.

Instructor-only material is in [`internal/`](internal/): the
[design rationale](internal/course-design-rationale.md),
[assessment-at-scale strategy](internal/assessment-at-scale.md),
[artifact-authoring guidance](internal/artifact-authoring.md),
[open decisions](internal/open-decisions.md), and the authoring
[templates](internal/templates/).

## Repository layout

```
docs/        student-facing pages (rendered on the site)
internal/    instructor-only planning, rationale, and templates (excluded from the site)
_lectures/   weekly concept + studio sessions (Weeks 1–13)
_labs/       studio & portfolio overview
_data/       site navigation
_includes/   Jekyll partials and <head> customization
assets/      site styles
```

The site uses the [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) Jekyll
theme and is built and deployed to GitHub Pages by
[`.github/workflows/jekyll.yml`](.github/workflows/jekyll.yml) on every push to `main`.
