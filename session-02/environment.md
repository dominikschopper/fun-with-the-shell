## Ausführungsumgebung

Die Ausführungsumgebung kann auf Variablen zurückgreifen, die entweder selber definiert oder bereits vom System vergeben wurden.

### Variable setzen und wieder löschen

```bash
mosdoba> MYVAR1="Unix rocks\!"
mosdoba> echo $MYVAR1
Unix rocks!
mosdoba> unset MYVAR1
mosdoba> echo $MYVAR1

mosdoba>
```

---

### Vom System bereitgestellte Umgebungsvariablen

<div class="flex-row">

```bash
# Systemvariablen
mosdoba> echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
mosdoba> which bash
/bin/bash
mosdoba> unset PATH
mosdoba> which bash
bash not found
```


```bash
# sourcen von Fragmenten
# wir schreiben in die Datei
mosdoba> echo "MYVAR_IN_A_FILE='Led Zeppelin'" > rocknroll.rc
mosdoba> . ./rocknroll.rc
mosdoba> echo $MYVAR_IN_A_FILE
Led Zeppelin
```

</div>

---

### Exportieren für Subprozesse

```bash
mosdoba> MYVAR1="The Who"
mosdoba> echo $MYVAR1
The Who
mosdoba> bash # neuer Subprozess
bash-3.2$ echo $MYVAR1

bash-3.2$ exit # wieder in Elternprozess
mosdoba> export MYVAR1
mosdoba> bash # neuer Subprozess
bash-3.2$ echo $MYVAR1
The Who
```
