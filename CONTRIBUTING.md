# Contributing to Biological Data Engineering

Thanks for helping build this course! This repo holds the course **site** (published with
Jekyll + GitHub Pages) and its **planning docs**. This guide explains how we work: the
fork-based workflow, the repo layout, how to preview the site locally, and how to open a pull
request to the upstream repo.

The canonical (upstream) repository is **`bu-bioinfo/bio-data-engineering`**, published at
<https://bu-bioinfo.github.io/bio-data-engineering/>. Most collaborators contribute from a
**personal fork** and don't have write access to upstream — so all changes land via pull
requests.

## TL;DR workflow

1. **Fork** `bu-bioinfo/bio-data-engineering` to your account (once).
2. **Clone your fork** and create a branch: `git checkout -b my-change`.
3. **Make your change** and **preview it locally** (`bundle exec jekyll serve`).
4. **Commit and push** to your fork: `git push -u origin my-change`.
5. CI runs a **build check** on your fork (it does *not* publish — see [CI & publishing](#ci--publishing)).
6. **Open a PR into upstream** — easiest via the [`upstream-pr` skill](#opening-a-pull-request).
7. Address review; once merged, upstream redeploys the site automatically.

## One-time setup

You'll need **Ruby** (3.3 recommended) and **Bundler**. Then, from your clone:

```bash
bundle install
```

Optional but handy — add an `upstream` remote so you can keep your fork current:

```bash
git remote add upstream https://github.com/bu-bioinfo/bio-data-engineering.git
git fetch upstream
git checkout main && git merge --ff-only upstream/main   # sync your fork's main
```

## Repository layout

```
docs/        Student-facing pages — rendered on the public site
internal/    Instructor-only planning, rationale, templates — EXCLUDED from the site build
_lectures/   Weekly concept + studio sessions (Weeks 1–13)
_labs/       Studio & portfolio overview
_data/       Site navigation (navigation.yml)
_includes/   Jekyll partials and <head> customization
assets/      Site styles
.claude/     Project-local Claude Code skills (e.g. upstream-pr)
_config.yml  Jekyll site config
```

**The student / instructor split is load-bearing.** Anything under `internal/` is listed in
`_config.yml`'s `exclude:` and never appears on the published site. Put instructor-only
material (rationale, open decisions, grading strategy, authoring templates) there; put
anything students should read in `docs/` or the `_lectures/` / `_labs/` collections.

Open design decisions live in [`internal/open-decisions.md`](internal/open-decisions.md) —
**we track them in that file, not in a GitHub issue tracker**, because contributors work
across many forks that don't share one. If you hit or resolve an open question, edit that file
in your PR.

## Previewing the site locally

```bash
bundle exec jekyll serve
```

Then open the URL it prints. Because `baseurl` is `/bio-data-engineering`, the local site is at
**http://localhost:4000/bio-data-engineering/**. Use `--livereload` to auto-refresh on edits.

To just confirm it compiles (what CI does):

```bash
JEKYLL_ENV=production bundle exec jekyll build --baseurl "/bio-data-engineering"
```

Build output (`_site/`) and `Gemfile.lock` are git-ignored — don't commit them.

## Authoring content

- **A student-facing page** → add a Markdown file under `docs/` with front matter
  (`title`, `permalink`) and, if it should appear in the sidebar, a link in
  `_data/navigation.yml`.
- **A weekly session** → edit the matching `_lectures/week-NN.md` (Concept / Studio /
  Milestone sections).
- **An assignment/artifact or a quiz-style doc** → start from the templates in
  [`internal/templates/`](internal/templates/).
- Keep instructor rationale and anything not meant for students in `internal/`.

## CI & publishing

The workflow in [`.github/workflows/jekyll.yml`](.github/workflows/jekyll.yml) has two jobs:

- **`build`** runs on every push to `main` and every pull request, **in every repo including
  forks**. It only *compiles* the site (no GitHub Pages API calls), so it works on your fork
  even if Pages is disabled. This is your safety net: a green build means the site renders.
- **`deploy`** is guarded to the upstream repo (`if: github.repository == 'bu-bioinfo/bio-data-engineering'`),
  so **only upstream publishes**. Forks build but never deploy.

**Please don't enable GitHub Pages on your fork.** Only upstream should host the site — a
second published copy is confusing for students. If you previously enabled it, set
*Settings → Pages → Source: None*. (On forks the `deploy` job simply shows as *skipped*,
which is expected, not a failure.)

## Opening a pull request

This repo ships a Claude Code skill that generates everything you need to open a PR into
upstream. In Claude Code, run:

```
/upstream-pr
```

It will produce **(1)** a compare URL with the PR title pre-filled and **(2)** the PR
description in a fenced Markdown block. Open the URL, paste the description into the body, and
submit.

Prefer to do it by hand? You can run the helper directly:

```bash
bash .claude/skills/upstream-pr/scripts/upstream-pr-url.sh "My PR title"
```

…or just open a *compare across forks* PR on GitHub: base `bu-bioinfo/bio-data-engineering`
@ `main`, head `<your-fork>` @ `<your-branch>`.

### PR conventions

- **Scope the branch** to one change where practical — it keeps the diff (and review) clean.
- Write a clear title and a description that says *what* changed and *why*.
- Don't commit build artifacts (`_site/`, `Gemfile.lock`) or anything under a path that should
  stay in `internal/`.
- Make sure the **build** check is green before requesting review.

## Questions

Open a discussion on the upstream repo, or note the question in
[`internal/open-decisions.md`](internal/open-decisions.md) as part of your PR.
