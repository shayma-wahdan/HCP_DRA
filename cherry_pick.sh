#!/bin/bash
# Initialize a new Git repository
git init cherry-pick-demo
cd cherry-pick-demo

# Create an initial commit on the main branch
echo "Initial content" > file.txt
git add file.txt
git commit -m "Initial commit on main"

# Create a new branch for a feature
git checkout -b feature

# Make some changes in the feature branch
echo "Feature content" >> file.txt
git commit -am "Add feature content"

# Add a bug fix in the feature branch
echo "Bug fix" >> file.txt
git commit -am "Fix critical bug"

# Add more changes in the feature branch
echo "More feature content" >> file.txt
git commit -am "Add more feature content"

# Switch back to the main branch
git checkout main
