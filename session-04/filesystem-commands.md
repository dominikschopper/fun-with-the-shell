### Filesystem Commands

```bash
mount                               # displays mounted volumes
mount -t ext3 /dev/sda4 /var/log    # mounts volume sda4 to /var/log
unmount /dev/sda4                   # removes sda4
cat /etc/mtab                       # static table of all mounted volumes
```

I'm referring to "volumes" here, which means any kind of "storage" that on a classical hard disk would correspond to a partition. However, it could also be network shares (NFS, CIFS), SAN, or NAS volumes <!-- .element class="ta-right" style="font-size: 0.55em; width: 55%; float: right" -->
