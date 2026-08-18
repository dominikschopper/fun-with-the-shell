## Linux Verzeichnis Hierarchie

```yaml
[ / ]
  +-[etc]         # Systemweite Konfiguration
  +-[bin]         # beim boot verfügbare binaries
  +-[sbin]        # beim boot verfügbare admin binaries
  +-[dev]         # device files
  +-[mnt]         # freies Verz. zum zusätzl mounten
  +-[opt]         # optionale Komponenten/Programm (LibreOffice)
  +-[proc]        # virtuelles Verz. für Zugriff auf Kernel
  +-[root]        # `$HOME` des root users
  +-[home]        # enthält user `$HOME`s
  +-[usr]         # **u**nix **s**ystem **r**esources
  |   +-[bin]     # binaries
  |   +-[sbin]    # admin binaries
  +-[local]       # mounten von lokalen Besonderh.
  |   +-[bin]     # binaries
  |   +-[sbin]    # admin binaries
  +-[var]         # sich häufig ändernde Daten
      +-[log]     # logfiles
      +-[lock]    # lockfiles
      +-[spool]   # printer-/mail-queues
```