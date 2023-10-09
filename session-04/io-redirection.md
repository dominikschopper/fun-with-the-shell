## Input Output
von Kommandos

![process io](images/process-io-single.jpg)

```bash
# redirecting STDOUT und STDERR
find / -type f 1>findings.txt 2>error.txt
find / -type f >findings.txt 2>/dev/null
find / -type f >findings.txt 2>&1

# redirecting STDIN und STDOUT
cat < /etc/passwd > passwd-copy
```

`ls 1> file` und `ls > file` sind dasselbe ;)
