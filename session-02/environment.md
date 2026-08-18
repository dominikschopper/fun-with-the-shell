## Execution Environment

The execution environment can access variables that have been either defined by itself or assigned by the system.

### Set and Delete Variables

```bash
mosdoba> MYVAR1="Unix rocks\!"
mosdoba> echo $MYVAR1
Unix rocks!
mosdoba> unset MYVAR1
mosdoba> echo $MYVAR1

mosdoba>
```

---

### System-Provided Environment Variables

<div class="flex-row">

```bash
# System variables
mosdoba> echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
mosdoba> which bash
/bin/bash
mosdoba> unset PATH
mosdoba> which bash
bash not found
```

```bash
# Sourcing fragments
# we write to the file
mosdoba> echo "MYVAR_IN_A_FILE='Led Zeppelin'" > rocknroll.rc
mosdoba> . ./rocknroll.rc
mosdoba> echo $MYVAR_IN_A_FILE
Led Zeppelin
```

</div>

---

### Export for Subprocesses

```bash
mosdoba> MYVAR1="The Who"
mosdoba> echo $MYVAR1
The Who
mosdoba> bash # new subprocess
bash-3.2$ echo $MYVAR1

bash-3.2$ exit # back to parent process
mosdoba> export MYVAR1
mosdoba> bash # new subprocess
bash-3.2$ echo $MYVAR1
The Who
```
