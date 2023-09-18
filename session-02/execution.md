### Aufruf von Shell-Skripten
<p class="aleft">
Sämtliche Befehle, die interaktiv an der Eingabeaufforderung verwendet werden, können auch in einem Shell-Skript zusammengefasst und nacheinander ausgeführt werden. Mehr dazu in einer der nächsten Sessions. Wie aber kann ich solche "Befehlssammlungen" starten?
</p>

<table>
    <tr>
        <td style="text-align: center">Aufruf in der Eingabeaufforderung</td>
        <td style="text-align: center">muss sich im PATH befinden</td>
        <td style="text-align: center">Ausführungsrecht notwendig</td>
        <td style="text-align: center">Sub-Shell wird gestartet</td>
        <td style="text-align: center">Rückkehr zur Ausgangsshell</td>
    </tr>
    <tr>
        <td style="text-align: center">cmd.sh</td>
        <td style="text-align: center">x</td>
        <td style="text-align: center">x</td>
        <td style="text-align: center">x</td>
        <td style="text-align: center">x</td>
    </tr>
    <tr>
        <td style="text-align: center">sh cmd.sh</td>
        <td style="text-align: center">-</td>
        <td style="text-align: center">-</td>
        <td style="text-align: center">x</td>
        <td style="text-align: center">x</td>
    </tr>
    <tr>
        <td style="text-align: center">./cmd.sh</td>
        <td style="text-align: center">-</td>
        <td style="text-align: center">x</td>
        <td style="text-align: center">x</td>
        <td style="text-align: center">x</td>
    </tr>
    <tr>
        <td style="text-align: center">. cmd.sh</td>
        <td style="text-align: center">x</td>
        <td style="text-align: center">-</td>
        <td style="text-align: center">-</td>
        <td style="text-align: center">x</td>
    </tr>
    <tr>
        <td style="text-align: center">. ./cmd.sh</td>
        <td style="text-align: center">-</td>
        <td style="text-align: center">-</td>
        <td style="text-align: center">-</td>
        <td style="text-align: center">x</td>
    </tr>
    <tr>
        <td style="text-align: center">exec cmd.sh</td>
        <td style="text-align: center">-</td>
        <td style="text-align: center">-</td>
        <td style="text-align: center">-</td>
        <td style="text-align: center">-</td>
    </tr>
</table>
