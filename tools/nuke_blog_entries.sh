#!/bin/sh

perl -0777 -i -pe 's|<article>\s*<header>\s*<h1><a href="[^"]*">[^<]*</a></h1>\s*</header>\s*<footer class="muted">\s*[^<]*\s*</footer>\s*</article>||g' "$PWD/content/blog/index.md"
echo "Cleared blog entries successfully."
