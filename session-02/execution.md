### Execution of Shell Scripts
<p class="aleft">
All commands that can be used interactively at the command prompt can also be combined in a shell script
and executed sequentially. More on this in one of the next sessions. But how can I start such "command collections"?
</p>

<table>
    <tr>
        <td style="text-align: center">Call at the prompt</td>
        <td style="text-align: center">must be in PATH</td>
        <td style="text-align: center">Execute permission needed</td>
        <td style="text-align: center">Sub-shell is started</td>
        <td style="text-align: center">Return to original shell</td>
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
