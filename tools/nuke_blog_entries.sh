#!/bin/sh
# All the code here are licensed under LGPL-2.1.
# Copyright (c) 2025 manigohan
perl -0777 -i -pe 's|<article>\s*<header>\s*<h1><a href="[^"]*">[^<]*</a></h1>\s*</header>\s*<footer class="muted">\s*[^<]*\s*</footer>\s*</article>||g' "$PWD/content/blog/index.md"
echo "Cleared blog entries successfully."
