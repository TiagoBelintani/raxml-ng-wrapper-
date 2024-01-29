#!/bin/bash

# Define the input directory with alignment files and the output directory
indir="your_directory_with_fast_files"  # add your dir
outdir="your_tree_output_directory"

# Log file name
log_file="${outdir}/output.log"

# Run RAxML-NG for each alignment file in the input directory
for aln in ${indir}/*.fasta; do
  # Extract the file name without the extension
  name=$(basename "$aln" .fasta)

  echo "Running RAxML-NG for ${name}.fasta"
  raxml-ng --all --msa "$aln" --model GTR+G --threads 20 --prefix "${outdir}/${name}_raxml-ng" --bs-trees 100 2>&1 | tee -a "${log_file}"

  # Remove all files except .bestTree and .support
  echo "Removing unnecessary files for ${name}_raxml-ng"
  find "${outdir}" -type f ! -name "*.bestTree" ! -name "*.support" -delete

  # Rename all .bestTree files to .tree
  echo "Renaming .bestTree files to .tree in ${name}_raxml-ng"
  for file in ${outdir}/*_${name}_raxml-ng.bestTree; do
    mv "$file" "${file%.bestTree}.tree"
  done
done
