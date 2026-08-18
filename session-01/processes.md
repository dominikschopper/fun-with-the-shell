## Unix
- multi tasking / multi-user
- Process environment
- all processes belong to a user
- the "top" admin is always the root user **`uid=0(root)`**
- all users here could be logged in simultaneously on _one_ system
- permission management is at the core of Unix systems

<div class="fragment">

```bash
id               # data of logged in user
cat /etc/passwd  # list all local users
ps               # all processes of the current user
ps -f            # all processes full display
sleep 30 &       # sleep 30s in the background
```

</div>

notes:

    - Output of the `id` command
    - ps in Unix/Shell
    - every command is a process