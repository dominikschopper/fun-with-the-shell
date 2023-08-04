### Ausführungsumgebung

<p class="aleft">
    Die Ausführungsumgebung kann auf Variablen zurückgreifen, die entweder selber definiert oder bereits vom System vergeben wurden.
</p>

```bash
mosdoba> MYVAR1="Unix rocks\!"
mosdoba> echo $MYVAR1
Unix rocks!
mosdoba> unset MYVAR1
mosdoba> echo $MYVAR1

mosdoba>
```

```bash
mosdoba> echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
mosdoba> which bash
/bin/bash
mosdoba> unset PATH
mosdoba> which bash
bash not found
```

<!-- sourcen von Fragmenten -->
```bash
mosdoba> echo "MYVAR_IN_A_FILE='Led Zeppelin'" > rocknroll.rc
mosdoba> . ./rocknroll.rc
mosdoba> echo $MYVAR_IN_A_FILE
Led Zeppelin
```

<!-- exportieren für subprozesse -->
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
