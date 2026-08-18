### Interpreting the Command Line

http://www.compciv.org/topics/bash/text-values/

#### Token

```bash
mosdoba> mkdir 42
mosdoba> mkdir Led   Zeppelin
mosdoba> mkdir "House of rock"
mosdoba> ls -l
total 0
drwxr-xr-x@  2 mosdoba  staff   64  4 Aug 15:14 42
drwxr-xr-x@  2 mosdoba  staff   64  4 Aug 15:14 House of rock
drwxr-xr-x@  2 mosdoba  staff   64  4 Aug 15:14 Led
drwxr-xr-x@  2 mosdoba  staff   64  4 Aug 15:14 Zeppelin
```

+ Each sequence of spaces (or tabs) introduces a new token.
+ The quotes prevent splitting into multiple tokens.

---

### Resolution Order (Shell Expansion)

There are 7 (seven) different types of substitutions. This describes how the string you
enter is processed sequentially.

1. Brace Expansion
1. Tilde Expansion
1. Parameter/Variable Expansion
1. Command Substitution
1. Arithmetic Expansion
1. Process Substitution
1. Word Splitting
1. Pathname Expansion

```bash
mosdoba> echo *
42 House of rock Led Zeppelin
mosdoba> echo "*"
*
```

---

#### 1 brace expansion

With `{...}` you can also have a bit of fun, e.g. to create files.
All parts within a curly brace are combined with all other parts.

```bash
mosdoba> echo {"House of","Led"}+{Rock,Zeppelin}
House of+Rock House of+Zeppelin Led+Rock Led+Zeppelin

mosdoba> mkdir -p gallisches-dorf/{Astrix,Obelix,Miraculix}
mosdoba> ls -R
./gallisches-dorf:
Astrix    Miraculix Obelix

./gallisches-dorf/Astrix:

./gallisches-dorf/Miraculix:

./gallisches-dorf/Obelix:
```

---

#### 2 tilde expansion

The tilde `~` has a special meaning

```bash
mosdoba> cd ~          # gets you to your HOME
mosdoba> cd ~dschopper # gets you to HOME of dschopper user
```
---

#### 3 parameter expansion (Replace variables and more)

Everything that starts with `$` is replaced or edited in this step

```bash
shell-training> echo $PATH
/home/shell-training/.local/bin:/home/shell-...

shell-training> echo ${PATH:5:6}
/shell # extract 6 chars starting after char 5

shell-training> echo ${FOO:=default}
default # value of FOO or default if not set
```

---

#### 4 command substitution

In a command line you can open a subshell with `$(...)` and use its output
in the current command line

```bash
shell-training> MYVAR=$(date)
shell-training> echo $MYVAR
Mon Sep 18 20:06:34 UTC 2023
```

---

#### 5 arithmetic expansion

Arithmetic expressions can also be evaluated, written with `$((...))` 

```bash
shell-training> echo "The product of 34 and 56 is $((34 * 56))"
The product of 34 and 56 is 1904
```

---

#### 6 process substitution

With simple round brackets `( )` you can also open subshells and with `<` or
`>` you can input or output to the process.

```bash
# Compare two directory listings
shell-training> diff <(ls -la /dir1) <(ls -la /dir2)
```

#### (add) word splitting

After all these substitutions/expansions are done, the command line is split
again into words at whitespace.

---

#### 7 pathname expansion

Now everything with `*` and `?` is expanded to an existing path.

- `*` = 0 to any number of any characters
- `?` = any single character

```bash
shell-training> ls gallisches-dorf/*lix
gallisches-dorf/miraculix:
miraculix.haus

gallisches-dorf/obelix:
obelix.haus
```

#### (add) quote removal

All `"`, `'` and `\` are removed

**Your command line interpretation is now complete**
