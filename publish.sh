gitbook build
rm -rf docs/
mkdir docs
cp -a _book/. docs/
rm -rf _book/
