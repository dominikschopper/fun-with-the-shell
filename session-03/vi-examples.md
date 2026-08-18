#### Examples

Please participate, in directory `~/gallisches-dorf`

<div style="display: flex; gap:1rem" class="vim-example">


```bash
vi asterix/asterix.haus
# - enter insert mode, write something
# - exit vi (without saving)

# - edit asterix/asterix.haus again
# - add a new line before the last one
# - save and exit vi

# - edit asterix/asterix.haus again
# - delete three characters from your new line
# - undo it ( [u] = undo)
# - exit vi

vi obelix/obelix.haus
# - search for "lacht"
# - go to end of file and then search backwards for "beste"
# - go to beginning of file and search for "er"
# - jump through all search results (both directions)
# - exit vi
```

![vim mode overview](./images/vi-mental-model_no-legend.png)

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