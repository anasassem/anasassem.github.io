# Navigate to the build output directory
cd build/web

# Create .nojekyll file to prevent GitHub Pages from processing as Jekyll
New-Item -ItemType File -Path .nojekyll -Force

# Initialize a new git repository
git init

# Add all files
git add .

# Commit changes
git commit -m "Deploy to GitHub Pages"

# Rename branch to gh-pages
git branch -M gh-pages

# Add the remote repository
git remote add origin https://github.com/anasassem/anasassem.github.io.git

# Force push to the gh-pages branch
git push -u origin gh-pages --force
