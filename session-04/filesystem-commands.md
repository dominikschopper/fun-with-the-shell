### Filesystem Kommandos

```bash
mount                               # zeigt gemountete Volumes
mount -t ext3 /dev/sda4 /var/log    # "bindet" Volume sda4 an /var/log
unmount /dev/sda4                   # entfernt sda4
cat /etc/mtab                       # statische Tabelle aller gemounteten Volumes
```

Ich spreche hier von "volumes", das meint irgend eine Art von "storage", die auf einer klassischen
HD zB einer Partition entspräche. Ggf. aber auch Netzwerk-Shares (NFS, CIFS), SAN oder NAS Volumes
... sein können
