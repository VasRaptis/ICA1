#!/usr/bin/bash

## variables:
# genome dir
REF=/localdisk/data/BPSM/ICA1/Tcongo_genome/TriTrypDB-46_TcongolenseIL3000_2019_Genome.fasta.gz
# output dir 
OUT_DIR=${PWD}/Tcongo_genome_index
rm -r ${OUT_DIR}
mkdir -p ${OUT_DIR}

# build reference genome index with bowtie2
bowtie2-build ${REF} ${OUT_DIR}/TriTrypDB-46_TcongolenseIL3000_2019_Genome &> out.bt2-build