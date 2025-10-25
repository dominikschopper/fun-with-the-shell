### Eingabe eines Kommandos<!-- .element class="c-purple" -->
(Part1)

Lasst uns nochmal einen Schritt zurück treten: Wie können wir
durch das tippen eines Wortes einfach ein binary aufrufen?<!-- .element class="c-pink" -->

- <!-- .element class="fragment" --> das erste "Wort" einer Eingabezeile muss ein ausführbares der Dateiname eins ausführbaren binary sein.
- <!-- .element class="fragment" --> das Kommando <u class="c-orange">muss einen vollständigen Pfad</u> enthalten
- <!-- .element class="fragment" --> <u class="c-green">es sei denn</u>, das Kommando liegt in einem Verzeichnis der <code class="c-green">$PATH</code> Variable
    - <!-- .element class="fragment" --> Welche Verzeichnisse sind in $PATH? Ausgabe mit &nbsp; <code>echo $PATH</code>
    - <!-- .element class="fragment" --> mehr dazu (im Detail) später

notes:

- benutzt immer auto-complete! mit der [Tab]
- auch Kommandos können Auto-completed werden