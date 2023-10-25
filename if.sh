read -p "Enter a number: " num

# parseInt from number to string by using grep and regex
#number=$(echo $num | grep -E ^\-?[0-9]+$)

# parseInt from string to number by math operation
#number=$((num))

# parseInt from string to number by using expr
number=$(expr $num + 0)

if [[ $number -eq 10 ]]; then
    echo "The number is 10"
elif [[ $number -gt 10 ]]; then
    echo "The number is greater than 10"
else
    echo "The number is less than 10"
fi

# if statement with -d and -f
if [[ -d $PWD && -f $0 ]]; then
    echo "The current directory is $PWD and the current script is $0"
fi

# ternary operator
[[ $number -eq 10 ]] && echo "The number is 10" || echo "The number is not 10"

# case statement
case $number in
    10)
        echo "The number is 10"
        ;;
    11)
        echo "The number is 11"
        ;;
    *)
        echo "The number is not 10 or 11"
        ;;
esac