#!/bin/bash
# The CHECK button. Killercoda gives verify scripts only a few seconds, and graders can watch
# traffic for ~15s, so students grade with `lab check` in the terminal (which records a pass)
# and CHECK only confirms that record. `lab start` clears it.
[ -f /root/istio-fundamentals/.lab-state/07-authorization.passed ]
