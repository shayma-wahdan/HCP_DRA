# Initialize a repository
git init example
cd example

# Create an initial commit on main
echo "Initial content" > file.txt
git add file.txt
git commit -m "Initial commit on main"

# Create a feature branch
git checkout -b feature

# Make some commits in feature
echo "Feature content 1" >> file.txt
git commit -am "Add feature content 1"
echo "Feature content 2" >> file.txt
git commit -am "Add feature content 2"

# Switch back to main and make a commit
git checkout main
echo "Main branch content" >> file.txt
git commit -am "Add main branch content"
