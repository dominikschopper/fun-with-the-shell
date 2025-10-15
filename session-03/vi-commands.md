#### Commands #1: Exit and save<!-- .element class="c-orange" -->

| Ex Command    | Erklärung                          |
|---------------|------------------------------------|
|`:w`           | write (=save)                      |
|`:w new-file`  | write to changes to "new-file".    |
|`:q`           | quit (no saving)                   |
|`:wq`          | write and quit                     |
|`:q!`          | quit no saving even if file changed|
|`:e some-file` | edit "some-file".                  |
|`:e#`          | edit the last opened file          |

---

#### Commands #2: Search &amp; replace<!-- .element class="c-purple" -->

| Ex Command                | Erklärung                                            |
|---------------------------|------------------------------------------------------|
| `/term`                   | search for `term` hit `n` next hit, `N` previous hit |
| `?term`                   | search upwards for `term` hit `n` next, `N` previous |
| `:s/term/replacement/`    | search and replace once in this line                 |
| `:s/term/replacement/g`   | search and replace all in this line                  |
| `:% s/term/replacement/g` | search and replace all in file                       |

---

#### Movement<!-- .element class="c-blue" -->

| Ex Command | Erklärung               |
|------------|-------------------------|
| `G`        | go to last line of file |
| `2G`       | go to 2nd line of file  |

<br/><br/>

#### Copy/Paste<!-- .element class="c-orange" -->

| Ex Command | Erklärung                         |
|------------|-----------------------------------|
| `yy`       | copy line                         |
| `3yy`      | copy this and the next two lines  |
| `y3w`      | copy this and the next two words. |
| `dd`       | delete line (into copy buffer).   |
| `3dd`      | delete 3 lines (into copy buffer) |

Man <!-- .element class="c-blue" --> kann die letzte Aktion mit `u` (=undo) rückgängig machen

---

### VIM settings<!-- .element class="c-blue" -->

vim kann man mit einer `~/.vimrc` konfigurieren (es gibt auch eine globale `/etc/vimrc`)

Einfach in die Datei in jeweils eine einzelne Zeilen z.B. diese Kommandos eintragen:

- `set number` = Zeilennummerierung
- `set relativenumber` = Zeilennummerierung (plus anzeige relativ zum Standpunkt)
- `syntax on` = Syntax highlighting
- `"` am Anfang der Zeile ist ein Kommentar

```vim
set number
" set relativenumber
syntax on
```

[VIM konfigurieren](https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/)
