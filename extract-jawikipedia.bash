#!/bin/bash

datadir=$HOME/data
infile=$1
outdir=${datadir}/extracted-`date +%Y%m%d`

git clone https://github.com/attardi/wikiextractor.git
python3 wikiextractor/WikiExtractor.py -o "${outdir}" "${infile}"
