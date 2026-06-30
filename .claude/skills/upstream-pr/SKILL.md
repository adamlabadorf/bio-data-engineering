---
name: upstream-pr
description: >-
  Generate a copy/paste pull request for the upstream bu-bioinfo/bio-data-engineering
  repo from a fork. Use whenever the user wants to open, create, draft, or generate a
  PR / PR link to upstream. Produces a compare URL with the PR title embedded, plus the
  PR description in a fenced Markdown block. Built for this fork-based course repo, where
  contributors push to their own fork and lack write access to upstream (so the PR can't
  be created via API and must be opened manually in the browser).
---

# Opening an upstream pull request

Contributors to this course repo work on **their own fork** and usually have **no write
access** to the upstream `bu-bioinfo/bio-data-engineering` repo. So a PR can't be created
through the API — instead, produce two things the user pastes into the browser:

1. a **compare URL** with the PR **title embedded**, and
2. the PR **description** in a fenced Markdown block.

## Steps

1. **Make sure the branch is pushed to the fork.** The PR compares a branch that exists on
   the fork (`origin`). If there are uncommitted changes or the branch isn't pushed, commit
   and `git push -u origin <branch>` first (ask before committing if it's not obvious what
   should go in).

2. **Confirm base and head.**
   - Base branch defaults to `main` (upstream's default branch). If the user wants a
     different base, use it.
   - Head defaults to the current branch (`git rev-parse --abbrev-ref HEAD`).
   - Upstream defaults to `bu-bioinfo/bio-data-engineering`; override by exporting
     `UPSTREAM_REPO=owner/repo` if the project ever moves.

3. **Draft the title and description from the actual changes.** Look at what's on the branch
   — `git log <base>..HEAD` and `git diff <base>...HEAD` (or summarize the commits made this
   session). Write:
   - a concise, **ASCII** title (the title goes in the URL; non-ASCII gets percent-escaped
     and looks ugly);
   - a description that summarizes the changes. Check for a PR template
     (`.github/pull_request_template.md` or `.github/PULL_REQUEST_TEMPLATE.md`) and mirror its
     headings if one exists; otherwise use a Summary / What's included / Verification shape.
   - **Do not** include any internal model identifiers or secrets. End the body with the
     `🤖 Generated with [Claude Code](https://claude.com/claude-code)` footer.

4. **Build the URL** with the helper (it derives the fork owner + branch from git and
   percent-encodes the title):

   ```bash
   bash .claude/skills/upstream-pr/scripts/upstream-pr-url.sh "<title>" [base] [head]
   ```

5. **Output both, ready to copy:**
   - The compare URL on its own (a plain fenced block is fine).
   - The PR description inside a **fenced Markdown block** (use a 4-backtick ```` ```` fence so
     any triple-backtick code samples inside the body survive the copy).

## Notes

- GitHub pre-fills the **title** from the `?title=` parameter and opens the PR form via
  `expand=1`. The **body is intentionally not embedded** — long Markdown bodies blow past URL
  length limits and mangle formatting — which is exactly why it's handed over as a separate
  fenced block to paste into the description field.
- This skill needs **no GitHub credentials or write access** — it only generates text.
- The same URL works for any contributor's fork: the script reads `origin` to fill in the
  fork owner, so each person gets a link from their own fork into the shared upstream.
- If `origin` points at the upstream itself (e.g. a maintainer working directly on
  `bu-bioinfo/bio-data-engineering`), the URL is still valid — it just compares two branches
  within the same repo.
