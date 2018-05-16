remote=$(git config --get remote.origin.url)
branch=gh-pages

npx rimraf _book
npm run build

cd _book
echo Switching to $PWD

git init
git add .
git commit -m 'update book'
git checkout -b $branch
git push $remote $branch --force

cd ..
echo Switching to $PWD
npx rimraf _book
