## Aufgaben zu Prozessen<!-- .element class="c-blue" -->

<div class="colored-code">

- Was ist der Unterschied zwischen `ps`, `ps -f` und `ps -e`?
- Welche Parameter für das Kommando `ps` gibt es noch?
    - Was fällt Dir bei der Suche nach weiteren Parametern auf?
- Wie kannst Du Dir im `pstree` Kommando die PID<sup>*</sup> mit anzeigen lassen?
- Was fällt Dir auf, wenn Du das Kommando `ps` oder `pstree` mit PID* mehrmals ausführst?
- Führe das Kommando<br/>
  `start-logging.sh`<br/>
  aus. Dann lass Dir `pstree` anzeigen.
- Führe das Kommando `fake-logging.pl --count=1500` aus. Dann lass Dir `pstree` anzeigen.
- Suche mit `pstree` nach dem Prozess, der mit dem Parameter `--count=1500` gestartet wurde und lass Dir die PID dieses Prozesses anzeigen. Dann beende ihn mit `kill`. Überprüfe, ob es geklappt hat.
- Suche mit `ps` danach
- Führe das Kommando `sleep 90 &` (mit &) aus und lass Dir die PID<sup>*</sup> dieses Prozesses anzeigen. Dann beende ihn mit dem "bösen" `kill -9`

</div>

<sup>*</sup>PID = Prozess ID
