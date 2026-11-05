#!/bin/sh
# Publish ~/gems-hero/index.html to GitHub Pages.
#
# The build in ~/gems-hero is the source of truth and knows nothing about where
# it is hosted, so the two hosting-only tags are re-applied here on every copy.
# Run ~/gems-hero/build_app.py first.
set -e
cd "$(dirname "$0")"
cp ~/gems-hero/index.html index.html
python3 - <<'PY'
p = "index.html"
s = open(p, encoding="utf-8").read()
anchor = '<meta charset="utf-8">'
tags = ('\n<meta name="robots" content="noindex,nofollow">'
        '\n<link rel="icon" type="image/png" href="favicon.png">'
        '\n<link rel="apple-touch-icon" href="icon-180.png">')
assert anchor in s, "charset meta moved: find the new insertion point"
assert 'name="robots"' not in s, "already patched"
open(p, "w", encoding="utf-8").write(s.replace(anchor, anchor + tags, 1))
PY
git add -A
git commit -q -m "${1:-Update the preview from the latest build}

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>"
git push -q origin main
echo "pushed, https://asifmulani1.github.io/gems-india-preview/"
