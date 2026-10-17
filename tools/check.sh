#!/usr/bin/env bash
# Repo checks, run before every push: relative-link check and public-safety scan.
# Usage: tools/check.sh          (exit 0 = pass)
set -u
cd "$(git rev-parse --show-toplevel)"
fail=0

echo "== relative links"
while IFS=: read -r f _ p; do
  t="${p%%#*}"; [ -z "$t" ] && continue
  [ -e "$(dirname "$f")/$t" ] || { echo "BROKEN: $f -> $p"; fail=1; }
done < <(rg -n -o '\]\(([^)h#][^)]*)\)' -r '$1' --glob '*.md' . || true)

echo "== public-safety scan (secrets, internal terms)"
pattern='(api[_-]?key|secret[_-]?key|BEGIN [A-Z ]*PRIVATE KEY|ghp_[A-Za-z0-9]{20,}|sk-[A-Za-z0-9]{20,}|AKIA[0-9A-Z]{16}|xox[baprs]-|password\s*[:=]\s*\S|token\s*[:=]\s*\S|192\.168\.|10\.\d{1,3}\.|172\.(1[6-9]|2[0-9]|3[0-1])\.|fully autonomous|zeroshot|oneshot|human-supervised|AI agents plus a human supervision service|human supervision service)'
if rg -n -i -P "$pattern" --glob '!LICENSES/**' --glob '!cad/elrobot/LICENSE' --glob '!*.stl' --glob '!*.3mf' --glob '!tools/check.sh' .; then
  echo "FAIL: public-safety scan found matches (fix them, or explain them in the PR)"; fail=1
fi

echo "== large files (>10 MB)"
big=$(git ls-files -z | xargs -0 -I{} sh -c 'test $(wc -c < "{}") -gt 10485760 && echo "{}"' 2>/dev/null)
[ -n "$big" ] && { echo "FAIL: large files: $big (link them or use releases)"; fail=1; }

[ $fail -eq 0 ] && echo "PASS" || echo "FAILED"
exit $fail
