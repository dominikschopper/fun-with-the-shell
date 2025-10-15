#### Beispiele

Bitte mitmachen, im Verzeichnis `~/gallisches-dorf`

<div style="display: flex; gap:1rem" class="vim-example">


```bash
vi asterix/asterix.haus
# - in den insert mode gehen, etwas schreiben
# - vi verlassen (ohne speichern)

# - asterix/asterix.haus nochmal editieren
# - fügt eine neue vorletzte Zeile hinzu
# - vi speichern und verlassen

# - asterix/asterix.haus nochmal editieren
# - löscht drei Zeichen aus Eurer neuen Zeile
# - macht es rückgängig ( [u] = undo)
# - vi verlassen

vi obelix/obelix.haus
# - nach "lacht" suchen
# - ans Ende der Datei gehen und dann aufwärts nach "beste" suchen
# - an den Anfang der Datei gehen und nach "er" suchen
# - alle Fundstellen anspringen (beide Richtungen)
# - vi verlassen
```

![vim mode overview](/images/vi-mental-model_no-legend.png)

</div>

<style>
.vim-example pre {
    width: 65%;
    margin-bottom: 1rem;
}
.vim-example img {
    width: calc(100% - 65% -1rem);
}
</style>