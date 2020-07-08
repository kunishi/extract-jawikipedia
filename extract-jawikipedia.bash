#!/bin/bash

datadir=$HOME/data
infile=$1
outdir=${infile%/*}/extracted-`date +%Y%m%d`

[[ ! -d wikiextractor ]] && \
  git clone https://github.com/attardi/wikiextractor.git
python3 wikiextractor/WikiExtractor.py -o "${outdir}" "${infile}"
