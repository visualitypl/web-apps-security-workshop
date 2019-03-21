rm -rf docs/
gitbook build
mkdir docs
cp -R _book/ docs/
rm -rf _book/
