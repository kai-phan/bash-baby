temp=$(mktemp -d)

git clone --branch $1 $PWD $temp

echo cloning $1 to $temp