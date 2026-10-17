#!/bin/bash
# The CHECK button: passes when the same grader students run with `lab check 1` passes.
[ -f /tmp/almashift-ready ] || exit 1
lab check 1 >/tmp/almashift-check.log 2>&1
