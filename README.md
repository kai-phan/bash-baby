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