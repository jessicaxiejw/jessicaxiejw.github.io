# Build the project.
hugo

# move content of public to root dir
# then remove public
cp -R public/ . && rm -rf public

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git add -A
git commit -m "$msg"

# Push code to master
git push origin master