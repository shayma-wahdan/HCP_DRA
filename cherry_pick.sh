#!/bin/bash
# Initialize a new Git repository
mkdir cherry-pick-demo
cd cherry-pick-demo

# Create an initial commit on the main branch
echo "Initial file" > file.txt
git add file.txt
git commit -m "1. Add file file.txt on main"

# Create a new branch for a feature
git checkout -b cherry_feature

# Make some changes in the feature branch
echo "Feature content" >> file.txt
git commit -am "2. Add feature content on cherry_feature"

# Add a bug fix in the feature branch
echo "Bug fix" >> file.txt
git commit -am "3. Fix critical bug on cherry feature"

# Add more changes in the feature branch
echo "More feature content" >> file.txt
git commit -am " 4. Add more feature content on cherry_feature"

# Switch back to the main branch
git checkout main
