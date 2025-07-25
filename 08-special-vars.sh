#!/bin/bash

echo "All variable passed: $@"
echo "Number of variable: $#"
echo "Script name: $0"
echo "Present working directory: $PWD"
echo "Which user is running the script: $USER"
echo "Processs id of current script: $$"
echo "Process id of last command in background: $!"