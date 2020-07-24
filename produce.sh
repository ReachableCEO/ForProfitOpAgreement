#!/bin/bash 

rm LLCContract-Subo.pdf

cat title.md >> SuboLLC.md
cat ../common/defs.md >> SuboLLC.md
cat SuborbitalSystemsLLCOpAgreement.md >> SuboLLC.md

cat ../common/nda.md >> SuboLLC.md
cat ../common/ip-assign.md >> SuboLLC.md



pandoc \
	< SuboLLC.md \
	--number-sections \
	--toc \
	--from=markdown \
	--to=pdf \
	--output=SuboLLCContract.pdf

