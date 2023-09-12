### Als allererstes: Begriffsbestimmungen



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

<pre><div style="background-color:#323232; color: white; font-style: var(--r-code-font);font-size: 1.4em">
 <span style="color:lightgreen">ls</span>        <span style="color:orange">-i -a</span>      <span style="color:lightblue">gallisches-dorf/asterix/</span>

 <span style="color:lightgreen">Kommando</span>  <span style="color:orange">Optionen</span>   <span style="color:lightblue">Argument</span>

</div></pre>

- kurze Option: `-a` `-i`
- lange Option: `--all` `--inode`


Notes:

- Kommando
- Option oder Parameter
- Argument

- Kommandos und deren Argumente werden (oft) autocompleteds

als nächstes aber erstmal historisches