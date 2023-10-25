code=$(curl --request GET -sLi --url $1 | head -n 1 | cut -d ' ' -f 2)

if [[ $code -eq 200 ]]; then
    echo $1 succeeded with code $code
    return 0
else
    echo $1 failed with code $code
fi