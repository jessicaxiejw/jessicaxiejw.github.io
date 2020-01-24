# Build the project.
hugo

# move content of public to root dir
# then remove public
mv public/ . && rm -rf public

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git add -A
git commit -m "$msg"

# Push source and build repos.
git push origin master