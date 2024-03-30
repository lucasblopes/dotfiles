echo "https://videotutorials.notion.site/Introduction-to-Git-ac396a0697704709a12b6a0e545db049"
echo "https://docs.github.com/en/enterprise-cloud@latest/get-started/using-git/pushing-commits-to-a-remote-repository"

echo "

git config --global user.name "Lucas Lopes"
git config --global user.email "lucas.blopes3@gmail.com"

git init

git status

git add .

git commit -m "msg"

git log

# branch master -> main (for Github)
git checkout -b "main"
git branch -d "master"

### Remote Repository ###

git remote add origin $adress

## warning: this will replace the entire remote repository
git push --force origin main

"
