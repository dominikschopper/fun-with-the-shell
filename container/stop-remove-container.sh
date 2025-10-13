#!/bin/bash

# ===== KONFIGURATION =====
ANZAHL_SCHUELER=10
SCHUELER_PREFIX="shell-training-"
LEHRER_NAME="shell-trainer"
# =========================

# Farben
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
RESET='\033[0m'

echo -e "${RED}⚠ ACHTUNG: Alle Container werden gestoppt und gelöscht!${RESET}"
read -p "Fortfahren? (y/n): " confirm

if [ "$confirm" != "y" ]; then
  echo "Abgebrochen."
  exit 0
fi

echo ""
echo "Stoppe und lösche Container..."
echo ""

# Schülermaschinen
for i in $(seq 1 $ANZAHL_SCHUELER); do
  container_name="${SCHUELER_PREFIX}${i}"

  if docker ps -a --format '{{.Names}}' | grep -q "^${container_name}$"; then
    docker stop $container_name > /dev/null 2>&1
    docker rm $container_name > /dev/null
    echo -e "${GREEN}✓ ${container_name} gelöscht${RESET}"
  else
    echo -e "${YELLOW}✓ ${container_name} existiert nicht${RESET}"
  fi
done

# Lehrermaschine
if docker ps -a --format '{{.Names}}' | grep -q "^${LEHRER_NAME}$"; then
  docker stop $LEHRER_NAME > /dev/null 2>&1
  docker rm $LEHRER_NAME > /dev/null
  echo -e "${GREEN}✓ ${LEHRER_NAME} gelöscht${RESET}"
else
  echo -e "${YELLOW}✓ ${LEHRER_NAME} existiert nicht${RESET}"
fi

echo ""
echo "Alle Container wurden entfernt."