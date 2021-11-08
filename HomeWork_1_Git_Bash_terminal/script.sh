#!/bin/bash
mkdir -p script_glav/script_glav2
cd script_glav/script_glav2
cd ..
mkdir script{1..3}
cd script1
touch txt_script_file{1..3}.txt json_script_file{1..2}.json
mkdir {1..3}SCRIPT
ls
mv txt_script_file2.txt json_script_file2.json ./2SCRIPT
