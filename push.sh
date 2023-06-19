commit_name=$@

git pull
git add .
git commit -m $commit_name
git push