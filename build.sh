#!/bin/sh

content="$PWD/content"
out="$PWD/out"

if [ ! -d "$out" ]; then
    mkdir "$out"
    echo -e "made out/\n"
else
    echo -e "out/ exists; nuking\n"
    rm -rf "$out"
    mkdir "$out"
    echo -e "remade out/\n"
fi

# Assume we are running in project root!
find "$content" -type f -iname "*.md" | while IFS= read -r input; do
    rel="${input#$content/}"
    outf="$out/${rel%.md}.html"
    # Generate directory structure for file first
    mkdir -p "$(dirname $outf)"
    # Use marked to parse our markdown to HTML
    if marked -i "$input" -o "$outf"; then
	echo -e "$outf generated from $input!\n"
    else
	echo -e "$input failed to be parsed...\n"
    fi
done

# Clone assets to output as well
cp "$PWD/assets/"* "$out" -r
echo "Copied assets content to out/"

echo -e "Done!\n"
