## Aufgaben zu Prozessen

- Was ist der Unterschied zwischen `ps` und `ps -f` ?
    ```
    # -f zeigt den Prozess mit "full" infos an
    ```
- Was ist der Unterschied zwischen `ps` und `ps -e` ?
    ```
    # ps zeigt die Prozesse "meines" Users
    # ps -e zeigt Prozesse aller User an
    ```
- Welche Parameter für das Kommando `ps` gibt es noch?<br/>
  Was fällt Dir bei der Suche nach weiteren Parametern auf?
    ```
    ps --help
    # es gibt so viele Optionen/Parameter, dass es "unter"-Hilfeseiten gibt
    ```
- Wie kannst Du Dir im `pstree` Kommando die PID* mit anzeigen lassen?
    ```
    pstree -p
    ```
- Was fällt Dir auf, wenn Du das Kommando `ps` oder `pstree` mit PID* mehrmals ausführst?
    ```
    # pstree zeigt jedesmal eine höhere PID an
    ```
- Führe das Kommando<br/>
  `start-logging.sh`<br/>
  aus. Dann lass Dir `pstree` anzeigen.
    ```
    start-logging.sh
    pstree
    ```
- Führe das Kommando `start-logging.sh --count=2500` aus (Benutze dazu die [&uparrow;] Taste). Dann lass Dir `pstree` anzeigen.
    ```
    sudo /scripts/start-logging.sh --count=2500
    pstree
    > sshd(1)─┬─fake-logging.pl(2839)
    >         ├─fake-logging.pl(2845)
    ```
    ```
    pstree -a
    > sshd -D
    >   ├─fake-logging.pl /scripts/fake-logging.pl --count=2500 --min=0.1 --max=0.7
    >   ├─fake-logging.pl /scripts/fake-logging.pl --count=2500 --min=0.1 --max=0.7
    ```
- Suche mit `pstree` nach dem Prozess, der mit dem Parameter `--count=2500` gestartet wurde und lass Dir die PID dieses Prozesses anzeigen. Dann beende ihn mit `kill`. Überprüfe, ob es geklappt hat.
    ```
    ```
- Führe das Kommando `sleep 90 &` (mit `&`) aus und lass Dir die PID dieses Prozesses anzeigen. Dann beende ihn mit dem "bösen" `kill -9`
    ```
    sleep 90 &
    ps
    > PID TTY          TIME CMD
    > 2799 pts/0    00:00:00 bash
    > 2867 pts/0    00:00:00 sleep
    > 2869 pts/0    00:00:00 ps
    kill -9 2867
    # es wird im Erfolgsfall nichts(!) ausgegeben
    # löst ihr danach einen ps aus, dann dies!!
    ps
    > PID TTY          TIME CMD
    > 2799 pts/0    00:00:00 bash
    > 2872 pts/0    00:00:00 ps
    > [1]+  Killed                  sleep 90
    ```

