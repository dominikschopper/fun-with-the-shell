## Aufgaben zum Bewegen/Anlegen/Löschen

Es ist nicht erlaubt, bestehende Pfade/Dateinamen zu tippen. Gib immer nur den/die nächsten benötigten Buchstaben ein!

- in welchem Verzeichnis bist Du gerade?
    ```
    pwd
    ```
- bewege dich ins Verzeichnis `gallisches-dorf`
    ```
    cd g<tab><enter>
    ```
- gehe wieder zurück ins vorherige Verzeichnis (checke mit `pwd`)
    ```
    cd ..
    ```
- findest Du dazu ein "Abkürzungskommando"?
    ```
    cd - # oder
    cd   # geht immer ins Homeverzeichnis zurück
    ```
- gehe ins übergeordnete Verzeichnis (checke mit `pwd`)
    ```
    cd ..
    pwd
    ```
- gehe mit absolutem Pfad in dein Home-Verzeichnis.
    ```
    cd /home/shell-training
    ```
- kopiere die Datei `asterix.haus` ins Verzeichnis `obelix` unter dem Namen `asterix-ferienhaus`
    ```
    cp g<tab>/a<tab>/<tab> g<tab>/o<tab>/asterix-ferienhaus
    ```
- lösche die Datei `asterix-ferienhaus` unter Verwendung des **absoluten** Pfads!
    ```
    rm /h<tab>/s<tab>/g<tab>/o<tab>/a<tab>
    # checken mit [↑] [pos1] rm durch ls austauschen
    ```
- kopiere das Verzeichnis `miraculix` samt Inhalt im Ordner `gallisches-dorf` das Zielverzeichnis soll `zweiter-druide` heißen. Bennene auch die neue Hausdatei in `zweiter-druide.haus` um
    ```
    cp -r g<tab>/m<tab> g<tab>/zweiter-druide
    mv g<tab>/z<tab>/<tab> g<tab>/z<tab>/zweiter-druide.haus
    # alternativ
    mkdir g<tab>/zweiter-druide
    mv m<tab>/<tab> z<tab>/zweiter-druide.haus
    # mehr Alternativen möglich
    ```
- lösche das eben angelegte Verzeichnis
    ```
    rm -r g<tab>/z<tab>
    ```
- findest Du einen Weg, das Verzeichnis `methusalix`und das Unterverzeichnis `methusalix/scheune` mit einem Kommando anzulegen?
    ```
    mkdir -p g<tab>/methusalix/scheune # -p legt "parent"-dir.s mit an
    ```
- was gibt Dir `ls -a` aus?
    ```
    # alle "versteckten" Dateien = Dateien, die mit einem "." beginnen
    # darunter (in jedem Verzeichnis) die Einträge "." und ".."
    ```
- lösche `methusalix` und Unterverzeichnisse mit `rmdir`
    ```
    rmdir g<tab>/me<tab>/<tab>
    rmdir g<tab>/me<tab>
    ```
- lege eine Kopie mit folgendem Befehl an `sudo cp ./miraculix/miraculix.haus ./miraculix/2miraculix.haus`. Was fällt Dir an den angelegten Dateien auf? Was passiert, wenn Du sie mit `rm -r` löschen willst? Warum?
    ```
    sudo cp g<tab>/m<tab>/<tab> g<tab>/m<tab>/2miraculix.haus
    # sudo führt (im default) ein Kommando als "root" user aus
    ls -l gallisches-dorf/miraculix/
    -rw-r--r--. 1 root           root           1751 Sep 17 17:36 2miraculix.haus
    -rw-r--r--. 1 shell-training shell-training 1751 Sep 15 06:17 miraculix.haus
    # da das "cp" Kommando als "root" ausgeführt wurde, gehört diese Datei nun "root"
    # rm fragt im default mode nach Erlaubnis, kann aber mit "-f" direkt  durchgeführt werden
    ```
