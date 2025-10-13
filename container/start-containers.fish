#!/usr/bin/env fish

# ===== KONFIGURATION =====
set ANZAHL_SCHUELER 10
set SCHUELER_PREFIX "shell-training-"
set LEHRER_NAME "shell-trainer"
set SCHUELER_BASE_PORT 22001
set LEHRER_PORT 22022
set ECR_IMAGE "595944282132.dkr.ecr.eu-central-1.amazonaws.com/my-ssh-server:latest"
set AWS_REGION "eu-central-1"
# =========================

# Farben
set GREEN (set_color green)
set YELLOW (set_color yellow)
set RESET (set_color normal)

# ECR Login
echo "ECR Login..."
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin 595944282132.dkr.ecr.$AWS_REGION.amazonaws.com

# Image pullen
echo "Pulling Image..."
docker pull $ECR_IMAGE

# Schülermaschinen starten
for i in (seq 1 $ANZAHL_SCHUELER)
  set container_name "$SCHUELER_PREFIX$i"
  set port (math $SCHUELER_BASE_PORT + $i - 1)

  # Check ob Container bereits existiert
  if docker ps -a --format '{{.Names}}' | grep -q "^$container_name\$"
    echo "$YELLOW✓ $container_name läuft bereits (Port $port)$RESET"
  else
    docker run -d \
      --name $container_name \
      --hostname $container_name \
      -p $port:22 \
      $ECR_IMAGE
    echo "$GREEN✓ $container_name gestartet (Port $port)$RESET"
  end
end

# Lehrermaschine starten
if docker ps -a --format '{{.Names}}' | grep -q "^$LEHRER_NAME\$"
  echo "$YELLOW✓ $LEHRER_NAME läuft bereits (Port $LEHRER_PORT)$RESET"
else
  docker run -d \
    --name $LEHRER_NAME \
    --hostname $LEHRER_NAME \
    -p $LEHRER_PORT:22 \
    $ECR_IMAGE
  echo "$GREEN✓ $LEHRER_NAME gestartet (Port $LEHRER_PORT)$RESET"
end

# Status anzeigen
echo ""
echo "=== Container Übersicht ==="
docker ps --filter "name=shell-" --format "table {{.Names}}\t{{.Ports}}\t{{.Status}}"