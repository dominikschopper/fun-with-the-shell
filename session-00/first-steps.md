### Als allererstes: Begriffsbestimmungen<!-- .element class="c-purple" -->



```bash
ls        # list current dir
which ls  # zeigt, wo das Kommando ls liegt
ls -l /etc
cd /var/log
```

- Was kann ich mit `ls` tun?
- Verschiedene Arten des Aufrufs
    - `ls`
    - `ls /home`
    - `ls -a .`
    - `ls -l gallisches-dorf/asterix`

<pre><div> <span class="c-green">ls</span>        <span class="c-orange">-i -a</span>      <span class="c-blue">gallisches-dorf/asterix/</span>
 <span class="c-green">Kommando</span>  <span class="c-orange">Optionen</span>   <span class="c-blue">Argument</span>
</div></pre>

- kurze Option: `-a` `-i`
- lange Option: `--all` `--inode`

Notes:

- Kommando
- Option oder Parameter
- Argument

- Kommandos und deren Argumente werden (oft) autocompleteds

als nächstes aber erstmal historisches