## Create & Delete Users Exercises

All commands must be executed as `root`! Take appropriate measures.

Verify each command, e.g. with `tail -5 /etc/passwd` and `tail -5 /etc/group`, to check if each command worked

- create a group `gallier` with the command `groupadd`
- create a group `kumpels` with the command `groupadd`
- create a user `asterix` with the command `useradd`. Please assign the group `gallier` as the "primary group" and the group `kumpels` as an additional group
- create a user `obelix` with the command `useradd`. Please assign the group `gallier` as the "primary group" and the group `kumpels` as an additional group
- switch to the user `asterix` with `sudo -i ...`. Create a file `test-ax` and view it with `ls -l`. Pay attention to owner, group, and permissions
- switch back to root and then with `sudo -i ...` to the user `obelix`. Create a file `test-ox` and view it with `ls -l`. Pay attention to owner, group, and permissions.
- now switch back to your user `shell-training` and create a file `test` and view it. Compare your observations with the output of the `id` command.
- Where do you find the "primary group"? What is its purpose, and what is it used for by the system?
