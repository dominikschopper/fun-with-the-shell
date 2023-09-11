### Als allererstes: Begriffsbestimmungen


```bash
pwd       # shows directory you are in
cd        # change directory
ls        # list current dir
which ls  # zeigt, wo das Kommando ls liegt
```

- Wozu dient `ls` tun?
- Was ist der Unterschied zwischen?
    - `ls`
    - `ls /home`
    - `ls -a .`
    - `ls -l gallisches-dorf/asterix`
- Wie nenne ich das alles?

<pre><div style="background-color:#323232; color: white; font-style: var(--r-code-font);font-size: 1.4em">
 <span style="color:lightgreen">ls</span>        <span style="color:orange">-i -a</span>      <span style="color:lightblue">gallisches-dorf/asterix/</span>

 <span style="color:lightgreen">Kommando</span>  <span style="color:orange">Parameter</span>  <span style="color:lightblue">Argument</span>

</div></pre>

- kurze Parameter: `-a` `-i`
- lange Parameter: `--all` `--inode`


Notes:

- Kommando
- Parameter (Option)
- Argument

- Kommandos und Argumente werden oft autocompleted