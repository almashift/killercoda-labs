#!/bin/bash
# Background script: runs as root when the scenario starts, while the student reads the intro.
# Everything comes from the public labs repo, so the lab itself is maintained in one place.
# Progress goes to $LOG; wait.sh shows its ">>" lines and waits for $READY or $FAILED.
LOG=/tmp/almashift-setup.log
READY=/tmp/almashift-ready
FAILED=/tmp/almashift-failed
REPO=https://github.com/almashift/istio-fundamentals
REF=master
LAB=1

exec >>"$LOG" 2>&1
trap 'echo ">> Setup failed (line $LINENO)"; touch "$FAILED"' ERR
set -Eeuo pipefail

echo ">> Downloading the AlmaShift labs"
git clone --quiet --depth 1 --branch "$REF" "$REPO" /root/istio-fundamentals
cd /root/istio-fundamentals

bash setup/install-tools.sh
kubectl wait --for=condition=Ready node --all --timeout=300s
bash setup/istio-install.sh

echo ">> Starting lab $LAB (deploying MeshMart)"
lab start "$LAB"
touch "$READY"
