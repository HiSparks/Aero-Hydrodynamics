find ./src -mindepth 1 -maxdepth 1 -exec cp -r -t ./dist {} +
find ./dist -iname "*.md" -type f -exec sh -c 'pandoc "${0}" -s --katex -o "${0::-3}.html"  --template ./temp/template.html --toc --toc-depth 2 --highlight-style=kate --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' {} \;
find ./dist -name "*.md" -type f -exec rm -f {} \;