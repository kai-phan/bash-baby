greet() {
    read -p "Enter your name: " name
    echo "Hello $1 $name!"
}

getting=$(greet 'Mr.')

echo $getting

test() {
    local name=$1

    echo "Hello $name!"
}

test 'Mr. Smith'