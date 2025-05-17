#!/bin/sh

if [ -z "$1" ]; then
  echo "No blog post provided. Exiting.."
  exit 1
fi

src="$1"
base="$(basename $src)"
index="$PWD/content/blog/index.md"

if [ "$1" == "$index" ] && [ -f "$1" ]; then
    exit 0
fi

# Extract data
title=$(grep -oP '(?<=// TITLE: ).*' "$src")
author=$(grep -oP '(?<=// AUTHOR: ).*' "$src")
postdate=$(grep -oP '(?<=// DATE: ).*' "$src")

echo "$title $author $postdate"

entry=$(cat <<EOF
<article>
  <header>
    <h1><a href="${base%.md}.html">$title</a></h1>
  </header>
  <footer class="muted">
    $postdate
  </footer>
</article>
EOF
)

echo "$entry"


if grep -q "$entry" "$index"; then
  echo "Entry already exists in the index. Exiting..."
  exit 0
fi

echo "$entry" >> "$index"
echo "Done!"
