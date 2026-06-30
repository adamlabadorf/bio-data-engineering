#!/usr/bin/env bash
# Build a GitHub "compare" URL for opening a pull request from THIS fork into the
# upstream repository, with the PR title pre-filled in the URL. Prints the URL.
#
# Contributors work on their own forks and generally lack write access to the
# upstream repo, so a PR can't be created via the API — this produces a link the
# user clicks to open the PR form with the title already filled in. (The body is
# NOT embedded: URLs have length limits and long Markdown bodies break; paste the
# description separately — that's why the skill emits it as a fenced block.)
#
# Usage:   upstream-pr-url.sh "<PR title>" [base-branch] [head-branch]
#   base-branch  defaults to "main"
#   head-branch  defaults to the current branch
# Env:     UPSTREAM_REPO  owner/repo of the upstream (default: bu-bioinfo/bio-data-engineering)
set -euo pipefail

UPSTREAM="${UPSTREAM_REPO:-bu-bioinfo/bio-data-engineering}"
TITLE="${1:?usage: upstream-pr-url.sh \"<PR title>\" [base-branch] [head-branch]}"
BASE="${2:-main}"
HEAD="${3:-$(git rev-parse --abbrev-ref HEAD)}"

# Fork "owner/repo" = last two path segments of the origin remote, sans .git.
# Works for https, ssh (git@host:owner/repo), and proxied URLs alike.
FORK_PATH="$(git remote get-url origin | sed -E 's#\.git$##; s#^.*[/:]([^/:]+/[^/:]+)$#\1#')"
FORK_OWNER="${FORK_PATH%%/*}"
FORK_REPO="${FORK_PATH##*/}"

# Percent-encode the title (ASCII expected — keep PR titles ASCII).
urlencode() {
  local s="$1" out="" i c
  for (( i=0; i<${#s}; i++ )); do
    c="${s:i:1}"
    case "$c" in
      [a-zA-Z0-9.~_-]) out+="$c" ;;
      ' ') out+='%20' ;;
      *) printf -v c '%%%02X' "'$c"; out+="$c" ;;
    esac
  done
  printf '%s' "$out"
}

printf 'https://github.com/%s/compare/%s...%s:%s:%s?expand=1&title=%s\n' \
  "$UPSTREAM" "$BASE" "$FORK_OWNER" "$FORK_REPO" "$HEAD" "$(urlencode "$TITLE")"
