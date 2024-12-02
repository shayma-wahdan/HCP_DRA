#!/bin/bash
# Initialize a repository
mkdir merge_example
cd merge_example

# Create an initial commit on main
echo "1. Initial content" > file.txt
git add file.txt
git commit -m "1. File on main"

# Create a feature branch
git checkout -b merge_feature

# Make some commits in feature
echo  "2. Feature content 1" >> file.txt
git commit -am "2. Add feature content 1"
echo "3. Feature content 2" >> file.txt
git commit -am "3. Add feature content 2"

# Switch back to main and make a commit
git checkout main
echo "4. Main branch content" >> file.txt
git commit -am "4. Add main branch content"
