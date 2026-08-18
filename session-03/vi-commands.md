#### Commands #1: Exit and save<!-- .element class="c-orange" -->

| Ex Command    | Explanation                        |
|---------------|------------------------------------|
|`:w`           | write (=save)                      |
|`:w new-file`  | write changes to "new-file".       |
|`:q`           | quit (no saving)                   |
|`:wq`          | write and quit                     |
|`:q!`          | quit no saving even if file changed|
|`:e some-file` | edit "some-file".                  |
|`:e#`          | edit the last opened file          |

---

#### Commands #2: Search & replace<!-- .element class="c-purple" -->

|  Command                  | Explanation                                           |
|---------------------------|-------------------------------------------------------|
| `/term`                   | search for `term` hit `n` next hit, `N` previous hit |
| `?term`                   | search upwards for `term` hit `n` next, `N` previous |
| `:s/term/replacement/`    | search and replace once in this line                 |
| `:s/term/replacement/g`   | search and replace all in this line                  |
| `:% s/term/replacement/g` | search and replace all in file                       |

---

#### Movement<!-- .element class="c-blue" -->

| Command    | Explanation         |
|------------|-------------------------|
| `G`        | go to last line of file |
| `2G`       | go to 2nd line of file  |

<br/><br/>

#### Copy/Paste<!-- .element class="c-orange" -->

| Command    | Explanation                         |
|------------|-----------------------------------|
| `yy`       | copy line                         |
| `3yy`      | copy this and the next two lines  |
| `y3w`      | copy this and the next two words. |
| `dd`       | delete line (into copy buffer).   |
| `3dd`      | delete 3 lines (into copy buffer) |

You <!-- .element class="c-blue" --> can undo the last action with `u` (=undo)

---

### VIM settings<!-- .element class="c-blue" -->

vim can be configured with a `~/.vimrc` file (there is also a global `/etc/vimrc`)

Simply enter these commands in individual lines, for example:

- `set number` = line numbering
- `set relativenumber` = line numbering (plus display relative to your position)
- `syntax on` = syntax highlighting
- `"` at the beginning of the line is a comment

```vim
set number
" set relativenumber
syntax on
```

[Configure VIM](https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/)
