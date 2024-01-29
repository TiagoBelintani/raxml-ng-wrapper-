
Script Description: RAxML-NG Wrapper Script

This Bash script automates the execution of RAxML-NG, a phylogenetic tree inference tool, for each FASTA alignment file in a specified input directory. The resulting trees are saved in the specified output directory with proper file naming. Additionally, unnecessary files are removed, and .bestTree files are renamed to .tree.

Usage:

Place the script in the directory where you want to run RAxML-NG.
Open a terminal in the directory containing the script.
Run the script.
Example:

bash
Copy code
bash raxml_ng_wrapper.sh
Script Functionality:

Defines input and output directories.
Runs RAxML-NG for each FASTA alignment file in the input directory.
Logs the output to a log file (output.log).
Removes unnecessary files, keeping only .bestTree and .support.
Renames .bestTree files to .tree in the output directory.
This script provides a convenient way to execute RAxML-NG on multiple alignment files and manage the resulting tree files.

Dependencies:

Raxml-ng 

conda create --name raxml-ng

conda activate raxml-ng

conda install bioconda::raxml-ng

""In the twilight zone between light and shadow, between science and superstition,​ between knowledge and ignorance,​ lies the  dimension of imagination (The Twilight Zone)."""




