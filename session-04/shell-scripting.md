## Shell Scripting<!-- .element class="c-orange" -->

A Shell Script is a (usually executable file) that contains shell commands
and usually ends with `.sh`.

Good for short, small, repetitive tasks that you could otherwise easily run on the command line.

**Python** is considered the successor to Bash scripts for admins!

But! Shell scripts can simplify life.

---

## When are Shell Scripts not a good idea?<!-- .element class="c-blue" -->

Projects with

<div class="flex-row">

- Number Crunching / Resource-hungry tasks
- Cross-platform compatibility
- Complex Applications (type safety, structure)
- Business-Critical Applications
- Complex dependencies
- Complex GUIs

<br/>

- Intensive/fine-grained file operations
  (Shells are sequentially running operations)
- That need complex data structures
- That need complex chart/graphics manipulation
- That are hardware-close
- That work with ports/sockets
- That should be delivered as closed-source

</div>


---

## Syntax 1: SheBang<!-- .element class="c-purple" -->

<div style="text-align: left;">

A Shell Script begins in the first line with the shebang line
```bash
#!/bin/bash
```

This determines which shell the script is executed with. If this line is missing, it will be executed with the calling shell.

Scripts that need to be copied from system to system therefore usually use the smallest common denominator

```bash
#!/bin/sh
```

This is the Bourne Shell, the predecessor of `bash`, which doesn't have some functionalities

</div>

---

## Syntax 2: Variables<!-- .element class="c-green" -->

<div style="text-align: left;">

Variables are usually written in uppercase and are case-sensitive.

However, you can also use this to avoid collisions and write the variables in CamelCase!

L-Values of variables must
- Start with a letter
- May only contain `A-Za-z`, `0-9` and `_`

R-Values are usually quoted, even if they don't contain special characters,
but this is not necessarily required.

Examples

```bash
SSH_CMD="ssh"
SSH_CMD=ssh
AdminUser="root"
AdminUser=root
phrase="moo and foo have both two o."
```

</div>

---

## Syntax 3: if/then/else<!-- .element class="c-orange" -->

### IF

<div class="flex-row">


```bash
# one true brace style
if _command_ # return status 0 -> then
then
    echo "something"
else
    echo "another thing"
fi
```

```bash
# alternative style
if _command_; then
    echo "something"
else
    echo "another thing"
fi
```

</div>

Example (grep returns 0 when the search term is found)

```bash
SEARCH_USER="someuser"

if grep -q $SEARCH_USER /etc/passwd
then
    echo "'$SEARCH_USER' exists already in system"
else
    echo "creating '$SEARCH_USER'"
    useradd -m $SEARCH_USER
fi
```

</div>

---
## Syntax 4: Loops<!-- .element class="c-blue" -->

While Loops

```bash
while _cmnd_
do
    echo "as long as _cmnd_ returns 0"
done
```

For Loops

<div class="flex-row">

```bash
for LETTER in A B C D E F G
do
    echo -n "$LETTER "
done
echo "" # to create a newline
```

```bash
for DIR_ENTRY in *
do
    echo "Found '$DIR_ENTRY' in $PWD"
done
```

</div>

---

## Syntax 5: Access to Arguments<!-- .element class="c-purple" -->

```bash
./myscript.sh one two three
```

- **$0** = `./myscript.sh`
- **$1** = `one`
- **$2** = `two` ... etc

```bash
# in the script
# the call of shift
shift
```
- **$0** = `./myscript.sh`
- **$1** = `two`
- **$2** = `three` ... etc

More complex actions with `getopts`

---

## Test Command<!-- .element class="c-green" -->

The `test` command can, for example, perform comparisons

it returns 0 when the queried condition is "true"

```bash
test "$x" = "hallo"    # does $x contain exactly "hallo"?
test $x -lt 9          # is $x less than 9?
test $x -eq 11         # is $x the number 11?
test -f $x             # is $x a file?
man test               # further options
```

<div class="flex-row">
<div>

**New style**<!-- .element class="c-purple" -->
```bash
[[ $x = "hallo" ]]   # $x contains "hallo"?
[[ $x =~ "^hallo" ]] # $x starts with "hallo"?
[[ $x < "a" ]]       # is $x alphabetically before "a"?
[[ $x -lt 9 ]]       # is $x less than 9?
[[ $x -eq 11 ]]      # is $x the number 11?
[[ -f $x ]]          # is $x a file?
```

</div>
<div>

**Old style**
```bash
[ "$x" = "hallo" ]  # $x contains "hallo"?
echo $x | grep -q "^hallo" # $x starts with "hallo"?
[ "$x" < "a" ]      # is $x alphabetically before "a"?
[ "$x" -lt 9 ]      # is $x less than 9?
[ "$x" -eq 11 ]     # is $x the number 11?
[ -f "$x" ]         # is $x a file?
```

</div>
</div>

---
## Syntax 6: Functions / Subroutines<!-- .element class="c-orange" -->

Subroutines can be created with so-called functions

```bash
function name() {
    echo "my $1 is in a function"
}
# --- usage
name Bob
```

Special features in Functions

```bash
function something() {
    local x=$1 # local var to function
    if test $x = "Welt" ; then
        echo "Hallo $x"
        return
    fi
    echo "Was war das denn? x ist $x"
}
```

Functions that are needed in several scripts are in files `something.rc`

In the script use `source ./tools/something.rc` or `. ./tools/something.rc`

---

## Debugging<!-- .element class="c-purple" -->

Small helpers

- `set -n` don't execute anything, just check for syntactic correctness
- `set -x` show command before it is executed
- Turn off display again `set +x`
- `set -e` exit when command doesn't have status code 0

---

The tasks are alternatives

## Task 1<!-- .element class="bg-blue c-green-light" -->

Write a script **`add_users.sh`** that accepts a series of usernames as arguments.
It should create all users, ensure that there is a home directory, and assign them a default password (Trick: `echo "$DEFAULT_PW" | passwd --stdin`).
- Extend the script so that it exits if not run by the user `root`
- Extend the script so that at the end it outputs all users for whom creation didn't work
- Extend the script so that it displays a help text when it receives `--help` or `-h` as the only parameter
- Think about how you could write a script that creates users and could generate usernames (and email addresses?) (Username 'monika.mustermann' Email: 'monika.mustermann@somwhere.com')?

---

## Task 2<!-- .element class="bg-green-light c-blue" -->
Write a script **`del.sh`**, that deletes files and directories, but instead of deleting them,
it should move the files or directories to a folder named `$HOME/.trash/`
- Write a script **`trash_bin.sh`** that displays the size of your Trash folder (in KB/MB/GB)
- Extend **`trash_bin.sh`** so that, when run with the parameter `trash_bin.sh --clean-all`, it deletes all files from the Trash folder
- Extend **`trash_bin.sh`** so that, when run with the parameter `trash_bin.sh --clean +3`, it deletes files from the Trash folder that are older than 3 days
- Write a script **`undel.sh`** that restores a file from the folder. The restoration location should be specified `undel.sh somefile.txt restore_here/`
- Think about how you could adapt the `del.sh` script to allow restoration to the original location.
