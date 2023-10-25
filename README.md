# bash-baby
Bash scripts baby step


### First
```bash
chmod u+x script.sh
```

### print the current working directory
Use $(pwd) or $PWD

- $(pwd) is a command substitution
- $PWD is a variable substitution

### Variables
variable_name=value

```bash
name=John
```

This variable only exists in the current shell. To make it available to subshells, use export.

```bash
export name=John
```

Unset a variable

```bash
unset name
```

### Special variables
- $0 - the name of the script
- $1 - $9 - the first 9 arguments to the script
- $# - the number of arguments to the script
- $@ - all arguments to the script
- $? - the exit status of the most recently run process
- $$ - the process ID of the current script
- $USER - the username of the user running the script
- $HOSTNAME - the hostname of the machine the script is running on
- $SECONDS - the number of seconds since the script was started
- $RANDOM - returns a different random number each time is it referred to
- $LINENO - returns the current line number in the bash script
- $BASH_SOURCE - returns the path to the bash script itself

### Command substitution
```bash
echo $(ls)
```

### Arithmetic expansion
```bash
echo $((2+2))
```

### String extraction
```bash
echo ${name:1:2}
```

### String length
```bash
echo ${#name}
```

### String replacement
```bash
echo ${name/ai/ua}
```

### Functions
```bash
function_name () {
  commands
}
```

### Arrays
```bash
array_name=(value1 value2 value3)
```

### Associative arrays
```bash
declare -A array_name
array_name[key1]=value1
array_name[key2]=value2
array_name[key3]=value3
```

### Functions
```bash
function_name () {
  commands
}
```

We can use ```read``` to get stdin from the user.

```bash
function_name () {
  read -p "Enter your name: " name
  echo "Hello $name"
}
```

Command substitution stores the output of function_name in the variable greeting.

```bash
greeting=$(function_name)
```

local variables
```bash
function_name () {
  local name=$1
  echo "Hello $name"
}
```

### Exit status
```bash
echo $?
```
Exit status is a number between 0 and 255. 0 means success, anything else means failure.
Exit status is stored in the special variable $?. We can use it to make decisions in our scripts.

```bash
function_name () {
  if [ $1 -gt 100 ]
  then
    return 1
  else
    return 0
  fi
}

function_name 200
echo $?
```

### Conditional statements
```bash
if [ condition ]
then
  commands
elif [ condition ]
then
  commands
else
  commands
fi
```
