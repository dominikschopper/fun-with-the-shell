<h4>Prozessanzeige</h4>

<p class="aleft">
    Ähnlich wie im Taskmanager, kann man sich auf dem Unix/Linux Terminal, alle laufenden
    Prozesse anzeigen lassen.
</p>

<pre><code class="language-bash">dschopper&gt; ps
 PID  TTY        TIME CMD
6059  ttys001 0:12.61 npm start
6067  ttys001 0:12.41 npm run storybook
46511 ttys003 0:00.15 /opt/homebrew/bin/fish -l
94441 ttys005 0:00.34 npm start
</code></pre>
<pre><code class="language-bash">dschopper&gt; ps -ef
UID PID PPID   C  STIME  TTY      TIME  CMD
  0   1    0   0  8May23 ??  126:16.73  /sbin/launchd
  0 107    1   0  8May23 ??   46:07.15  /usr/libexec/logd
  0 109    1   0  8May23 ??    1:42.34  /usr/libexec/UserEventAgent (System)
  0 111    1   0  8May23 ??    0:15.64  /System/Library/PrivateFrameworks/Uninstall.framework/Resources/uninstalld
</code></pre>