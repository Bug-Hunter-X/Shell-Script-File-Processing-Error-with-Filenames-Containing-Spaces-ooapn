# Shell Script File Processing Bug

This repository demonstrates a common error in shell scripting when dealing with filenames containing spaces. The script `bug.sh` uses `find` with `-print0` and `while IFS= read -r -d $'\0'`, but still fails to correctly handle files with spaces in their names. The solution (`bugSolution.sh`) provides the correct way to address this issue.

## Bug Description
The original script uses a `while` loop to iterate over filenames. However, it doesn't correctly handle files with spaces in their names because the space acts as a delimiter for the `read` command. This can lead to the script either failing or only processing parts of the filenames.

## Solution
The solution uses a `while` loop with `read` and `-d ''` to read the null-terminated strings produced by `find -print0`.  This avoids the problems of spaces acting as delimiters and correctly handles the filenames.