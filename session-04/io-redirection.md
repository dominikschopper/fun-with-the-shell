## Input Output
of Commands

![process io](images/process-io-single.jpg)

```bash
# redirecting STDOUT and STDERR
find / -type f 1>findings.txt 2>error.txt
find / -type f >findings.txt 2>/dev/null
find / -type f >findings.txt 2>&1

# redirecting STDIN and STDOUT
cat < /etc/passwd > passwd-copy
```

`ls 1> file` and `ls > file` are the same ;)
