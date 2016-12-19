#!/bin/bash

function convert-webfont() {
  sfnt2woff-zopfli "$1"
  woff2_compress "$1"
}
