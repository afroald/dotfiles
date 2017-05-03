#!/bin/bash

function convert-webfont() {
  for FILE in "$@"
  do
    sfnt2woff-zopfli "$FILE"
    woff2_compress "$FILE"
  done
}
