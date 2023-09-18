#### TODO
SubShell, EXPORT

#### Aufruf von Shell-Skripten

<table>
    <tr>
        <td>Aufruf</td>
        <td>muss ich im PATH befinden</td>
        <td>Ausführungsrecht notwendig</td>
        <td>Sub-Shell wird gestartet</td>
        <td>Rückkehr zur Ausgangsshell</td>
    </tr>
    <tr>
        <td>cmd.sh</td>
        <td>x</td>
        <td>x</td>
        <td>x</td>
        <td>x</td>
    </tr>
    <tr>
        <td>sh cmd.sh</td>
        <td>-</td>
        <td>-</td>
        <td>x</td>
        <td>x</td>
    </tr>
    <tr>
        <td>./cmd.sh</td>
        <td>-</td>
        <td>x</td>
        <td>x</td>
        <td>x</td>
    </tr>
    <tr>
        <td>. cmd.sh</td>
        <td>x</td>
        <td>-</td>
        <td>-</td>
        <td>x</td>
    </tr>
    <tr>
        <td>. ./cmd.sh</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>x</td>
    </tr>
    <tr>
        <td>exec cmd.sh</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
    </tr>
</table>
