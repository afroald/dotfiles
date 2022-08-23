#!/bin/bash

# brew tap bramstein/webfonttools
# brew install sfnt2woff-zopfli
# brew install woff2

function convert-webfont() {
  for FILE in "$@"
  do
    sfnt2woff-zopfli "$FILE"
    woff2_compress "$FILE"
  done
}
