### Pfadangaben: WTF ist ein **"vollständiger Pfad"**?

<pre><code class="xml">
   [/]
    |
    +-[bin]
    |   |
    |   +-ls
    |   +-ps
    |   +-pwd
    +-[home]
    |   |
    |   +--[shell-training] # we are here
    +-[usr]
        +-[bin]
            |
            +-htop
            +-groups


</code></pre>

- <!-- .element class="fragment" --> absolute Pfadangegben beginnen mit einem <code>/</code>
- <!-- .element class="fragment" --> relative Pfadangegben beginnen mit einem <code>.</code> oder einem <code>..</code>

<pre class="fragment"><code class="bash">
pwd                 # gibt /home/shell-training aus
../../bin/ls        # relativ zu pwd => /bin/ls
/bin/ls             # absolut => /bin/ls
/usr/bin/htop       # absolut => /usr/bin/htop
../../usr/bin/htop  # relativ => /usr/bin/htop
../../usr/bin/groups
</code></pre>


<pre class="fragment"><code class="bash">
# gibt alle Pfade aus, in denen executables automatisch aufgerufen werden
echo $PATH # Trenner ist ein ':'
# fügt ein Verzeichnis an den Pfad an, zB für eigene Skripte
PATH=$PATH:$HOME/bin # alternativ PATH=$PATH:~/bin
</code></pre>


Note:

- relativ weil relativ zu Deinem Standpunkt
- wird zB bei Verlinkungen sehr wichtig!

- niemand(!!!) tippt Programme, Pfade oder Dateinamen
- es ist ab jetzt **verboten** pfade aus-zu-tippen
- programme die man ohne Pfadangabe aufrufen kann liegen in $PATH