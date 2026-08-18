### Command Chains

Filter commands like `sort`, `grep`, `uniq`, `cut`, `tee` can be chained with commands that produce a stream to `STDOUT`.

The `STDOUT` of the left command is connected to the `STDIN` of the right command using a **`|`** pipe

![command chaining](images/process-io-chain.jpg)

```bash
# outputs the home directory of the user "shell-training"
cat /etc/passwd | grep shell-training | cut -f6 -d':'

# how many files in /etc contain the word test
grep -r test /etc/ 2>/dev/null | cut -f1 -d ':' | sort | uniq | wc -l
```