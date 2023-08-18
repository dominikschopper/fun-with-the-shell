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
    |         |
    |         +--ps
    +-[usr]
        +-[bin]
            |
            +-htop
            +-whatever


</code></pre>

- <!-- .element class="fragment" --> absolute Pfadangegben beginnen mit einem <code>/</code>
- <!-- .element class="fragment" --> relative Pfadangegben beginnen mit einem <code>.</code> <span class="fragment">oder einem <code>..</code></span>

<pre class="fragment"><code class="bash">
pwd            # gibt /home/dschopper aus
../../bin/ls   # relativ zu pwd => /bin/ls
./ps           # relativ zu pwd => /home/dschopper/ps
/bin/ls        # absolut => /bin/ls
/usr/bin/htop  # absolut => /usr/bin/htop
../../usr/bin/whatever
</code></pre>


Note:

- relativ weil relativ zu Deinem Standpunkt
- wird zB bei Verlinkungen sehr wichtig!
