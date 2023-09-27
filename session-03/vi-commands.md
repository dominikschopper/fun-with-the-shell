<div class="flex-row">

<div>

#### Exit and save
- `:w` = write (=save)
- `:w new-file` = save to "new-file"
- `:q` = quit (wout saving)
- `:wq` = write and quit
- `:q!` = quit no saving even if file changed
- `:e another-file` = edit "another-file"
- `:e#` = edit the last opened file

#### Search &amp; replace
- `/term` = search for `term`<br/>
    `n` next hit, `N` previous hit
- `?term` = search upwards for `term`<br/>
    `n` next hit, `N` previous hit
- `:s/term/replacement/` = search and replace once in this line
- `:s/term/replacement/g` = search and replace all in this line
- `:% s/term/replacement/g` = search and replace all in file

</div>
<div>

#### Movement
- `G` = go to last line of file
- `2G` = go to 2nd line of file

#### Copy/Paste
- `yy` = copy line
- `3yy` = copy this and the next two lines
- `y3w` = copy this and the next two words
- `dd` = delete line (into copy buffer)
- `3dd` = delete 3 lines (into copy buffer)

Man kann die letzte Aktion mit `u` (=undo) rückgängig machen

### VIM settings

- vim kann man mit einer `~/.vimrc` konfigurieren
- `set number` = Zeilennummerierung
- `set relativenumber` = Zeilennummerierung
- `syntax on` = Syntax highlighting

</div>
</div>
