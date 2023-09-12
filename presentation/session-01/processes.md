## Unix
- multi tasking / multi-user
- Prozess-Environment
- alle Prozesse gehören einem User
- der "oberste" Admin ist immer der root User **`uid=0(root)`**
- alle User hier könnten gleichzeitig auf _einem_ System angemeldet sein
- Berechtigungsmangement steht im Kern von Unix-Systemen

<div class="fragment">

```bash
id               # data of logged in user
cat  /etc/passwd # list all local users
ps               # all processes of the current user
ps -f            # all processes full display
sleep 30 &       # sleep 30s im hintergrund
```

</div>

notes:

    - Ausgabe des `id` Kommandos
    - ps in Unix/Shell
    - jedes kommando ist ein prozess