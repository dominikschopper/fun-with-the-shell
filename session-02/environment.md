## Ausführungsumgebung

<p class="aleft">
    Die Ausführungsumgebung kann auf Variablen zurückgreifen, die entweder selber definiert oder bereits vom System vergeben wurden.
</p>

<div class="fragment" style="width:100%">

### Variable setzen und wieder löschen
```bash
mosdoba> MYVAR1="Unix rocks\!"
mosdoba> echo $MYVAR1
Unix rocks!
mosdoba> unset MYVAR1
mosdoba> echo $MYVAR1

mosdoba>
```

</div>

<div class="fragment" style="width:100%">

### Vom System bereitgestellte Umgebungsvariablen
```bash
mosdoba> echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
mosdoba> which bash
/bin/bash
mosdoba> unset PATH
mosdoba> which bash
bash not found
```

</div>

<div class="fragment" style="width:100%">

### Sourcen von Fragmenten
```bash
mosdoba> echo "MYVAR_IN_A_FILE='Led Zeppelin'" > rocknroll.rc
mosdoba> . ./rocknroll.rc
mosdoba> echo $MYVAR_IN_A_FILE
Led Zeppelin
```

</div>

<div class="fragment" style="width:100%">

### Exportieren für Subprozesse 
```bash
mosdoba> MYVAR1="The Who"
mosdoba> echo $MYVAR1
The Who
mosdoba> bash
bash-3.2$ echo $MYVAR1

bash-3.2$ exit
mosdoba> export MYVAR1
mosdoba> bash
bash-3.2$ echo $MYVAR1
The Who
```

</dev>