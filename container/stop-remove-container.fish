#!/usr/bin/env fish

# ===== KONFIGURATION =====
set ANZAHL_SCHUELER 10
set SCHUELER_PREFIX "shell-training-"
set LEHRER_NAME "shell-trainer"
# =========================

# Farben
set GREEN (set_color green)
set YELLOW (set_color yellow)
set RED (set_color red)
set RESET (set_color normal)

echo "$RED⚠ ACHTUNG: Alle Container werden gestoppt und gelöscht!$RESET"
read -P "Fortfahren? (y/n): " confirm

if test "$confirm" != "y"
  echo "Abgebrochen."
  exit 0
end

echo ""
echo "Stoppe und lösche Container..."
echo ""

# Schülermaschinen
for i in (seq 1 $ANZAHL_SCHUELER)
  set container_name "$SCHUELER_PREFIX$i"

  if docker ps -a --format '{{.Names}}' | grep -q "^$container_name\$"
    docker stop $container_name > /dev/null 2>&1
    docker rm $container_name > /dev/null
    echo "$GREEN✓ $container_name gelöscht$RESET"
  else
    echo "$YELLOW✓ $container_name existiert nicht$RESET"
  end
end

# Lehrermaschine
if docker ps -a --format '{{.Names}}' | grep -q "^$LEHRER_NAME\$"
  docker stop $LEHRER_NAME > /dev/null 2>&1
  docker rm $LEHRER_NAME > /dev/null
  echo "$GREEN✓ $LEHRER_NAME gelöscht$RESET"
else
  echo "$YELLOW✓ $LEHRER_NAME existiert nicht$RESET"
end

echo ""
echo "Alle Container wurden entfernt."