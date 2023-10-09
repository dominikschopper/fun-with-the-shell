### Kommandoketten

Filter-Kommandos wie `sort`, `grep`, `uniq`, `cut`, `tee` können mit Kommandos die einen
Stream auf `STDOUT` erzeugen verknüpft werden.

Dabei wird der `STDOUT` des linken Kommandos mit dem `STDIN` des rechten Kommandos durch
ein **`|`** verknüpft

![command chaining](images/process-io-chain.jpg)

```bash
# gibt das Home-Verzeichnis des Users "shell-training" aus
cat /etc/passwd | grep shell-training | cut -f6 -d':'

# wieviele Dateien in /etc enthalten das Wort test
grep -r test /etc/ 2>/dev/null | cut -f1 -d ':' | sort | uniq | wc -l
```