#!/bin/bash

# ===== KONFIGURATION =====
ANZAHL_SCHUELER=10
SCHUELER_PREFIX="shell-training-"
LEHRER_NAME="shell-trainer"
SCHUELER_BASE_PORT=22001
LEHRER_PORT=22022
ECR_IMAGE="595944282132.dkr.ecr.eu-central-1.amazonaws.com/my-ssh-server:latest"
AWS_REGION="eu-central-1"
# =========================

# Farben
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RESET='\033[0m'

# ECR Login
echo "ECR Login..."
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin 595944282132.dkr.ecr.$AWS_REGION.amazonaws.com

# Image pullen
echo "Pulling Image..."
docker pull $ECR_IMAGE

# Schülermaschinen starten
for i in $(seq 1 $ANZAHL_SCHUELER); do
  container_name="${SCHUELER_PREFIX}${i}"
  port=$((SCHUELER_BASE_PORT + i - 1))

  # Check ob Container bereits existiert
  if docker ps -a --format '{{.Names}}' | grep -q "^${container_name}$"; then
    echo -e "${YELLOW}✓ ${container_name} läuft bereits (Port ${port})${RESET}"
  else
    docker run -d \
      --name $container_name \
      --hostname $container_name \
      -p $port:22 \
      $ECR_IMAGE
    echo -e "${GREEN}✓ ${container_name} gestartet (Port ${port})${RESET}"
  fi
done

# Lehrermaschine starten
if docker ps -a --format '{{.Names}}' | grep -q "^${LEHRER_NAME}$"; then
  echo -e "${YELLOW}✓ ${LEHRER_NAME} läuft bereits (Port ${LEHRER_PORT})${RESET}"
else
  docker run -d \
    --name $LEHRER_NAME \
    --hostname $LEHRER_NAME \
    -p $LEHRER_PORT:22 \
    $ECR_IMAGE
  echo -e "${GREEN}✓ ${LEHRER_NAME} gestartet (Port ${LEHRER_PORT})${RESET}"
fi

# Status anzeigen
echo -e "\n\n"
echo "=== Container Übersicht ==="
docker ps --filter "name=shell-" --format "table {{.Names}}\t{{.Ports}}\t{{.Status}}"