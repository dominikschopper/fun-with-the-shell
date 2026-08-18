### Path Specifications: WTF is a **"full path"**?

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

- <!-- .element class="fragment" --> absolute path specifications begin with a <code>/</code>
- <!-- .element class="fragment" --> relative path specifications begin with a <code>.</code> or a <code>..</code>

<pre class="fragment"><code class="bash">
pwd                 # outputs /home/shell-training
../../bin/ls        # relative to pwd => /bin/ls
/bin/ls             # absolute => /bin/ls
/usr/bin/htop       # absolute => /usr/bin/htop
../../usr/bin/htop  # relative => /usr/bin/htop
../../usr/bin/groups
</code></pre>


<pre class="fragment"><code class="bash">
# outputs all paths where executables are automatically called
echo $PATH # separator is a ':'
# adds a directory to the path, e.g., for custom scripts
PATH=$PATH:$HOME/bin # alternatively PATH=$PATH:~/bin
</code></pre>


Note:

- relative because relative to your position
- becomes very important with symbolic links!

- nobody(!!!) types programs, paths or filenames
- from now on it is **forbidden** to type out paths
- programs that you can call without a path specification are in $PATH
