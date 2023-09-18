#### SubShell, EXPORT

#### Aufruf von Shell-Skripten

<table>
    <tr>
        <td>Aufruf</td>
        <td>muss im<br/>PATH sein</td>
        <td>Exec.Recht<br/>notwendig</td>
        <td>in Sub-Shell<br/>ausgef.</td>
        <td>Rückkehr<br/> z. parent</td>
    </tr>
    <tr>
        <td><code>cmd.sh</code></td>
        <td align="center">x</td>
        <td align="center">x</td>
        <td align="center">x</td>
        <td align="center">x</td>
    </tr>
    <tr>
        <td><code>sh cmd.sh</code><br/><code>bash cmd.sh</code></td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">x</td>
        <td align="center">x</td>
    </tr>
    <tr>
        <td><code>./cmd.sh</code></td>
        <td align="center">-</td>
        <td align="center">x</td>
        <td align="center">x</td>
        <td align="center">x</td>
    </tr>
    <tr>
        <td><code>. ./cmd.sh</code></td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">-/x</td>
    </tr>
    <tr>
        <td><code>exec cmd.sh</code></td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">-</td>
    </tr>
</table>
