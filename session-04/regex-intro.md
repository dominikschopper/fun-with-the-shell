## Regex Allgemeines <!-- .element class="ta-left" -->

- ein regulärer Ausdruck (= RegEx) ist ein Suchmuster
- es wird in praktisch allen Programmiersprachen unterstützt
- die Kommandos `grep`, `vi` oder `less` benutzen es
- aber es gibt eigene Dialekte (ein bisschen wie bei SQL) [s. Dialekt-Slide](#/regex-comparison)
    - wann immer möglich extended Syntax einschalten = einfacher `\<\(\w\\+)\t`
- ein RegEx arbeitet meist zeilenweise(!) = er matcht zwischen zwei `\n`

### Wie ist ein Regex aufgebaut? <!-- .element class="ta-left" -->

- ein Zeichen / eine Zeichenklasse
- ein Quantifier
- Anker
- Capture-Groups

Regex <!-- .element class="ta-left" --> sind case-sensitive!! = **mit `-i` (grep) oder `\c` (vi) ausschalten**

Regex <!-- .element class="ta-left" --> sind greedy!! = **sie matchen immer so viel sie können**
