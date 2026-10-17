#!/bin/bash
# Foreground script: runs in the student's terminal and shows setup progress until it finishes.
LOG=/tmp/almashift-setup.log
READY=/tmp/almashift-ready
FAILED=/tmp/almashift-failed

clear
echo "Preparing your lab: Istio and the MeshMart store (about 2-3 minutes)..."
shown=0
until [ -f "$READY" ] || [ -f "$FAILED" ]; do
  n="$(grep -c '^>>' "$LOG" 2>/dev/null || true)"
  if [ "${n:-0}" -gt "$shown" ]; then
    grep '^>>' "$LOG" | sed -n "$((shown + 1)),${n}p"
    shown="$n"
  fi
  sleep 2
done

if [ -f "$FAILED" ]; then
  echo
  echo "Setup failed. Last lines of $LOG:"
  tail -n 20 "$LOG"
  echo "Reload the page to get a fresh machine and try again."
else
  cd /root/istio-fundamentals
  clear
  echo "Your lab is ready. Follow the task on the left; run 'lab check 1' to grade your work."
  echo
  kubectl -n meshmart get pods
fi
