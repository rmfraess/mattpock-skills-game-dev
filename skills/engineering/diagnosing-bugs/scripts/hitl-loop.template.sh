#!/usr/bin/env bash
# Human-in-the-loop reproduction loop (one Bash adapter).
# Copy this file, edit the steps below, and run it.
# The agent runs the script; the user follows prompts in their terminal.
#
# Usage:
#   bash hitl-loop.template.sh
#
# Two helpers:
#   step "<instruction>"          → show instruction, wait for Enter
#   capture VAR "<question>"      → show question, read response into VAR
#
# At the end, non-secret observations are printed as KEY=VALUE for the agent to parse.
#
# `capture` prints its value back to the terminal, where the agent reads it — so
# capture observations and sanitized artifact paths only. Leave authentication,
# secrets, licensed/NDA material, and sensitive telemetry with the user.

set -euo pipefail

step() {
  printf '\n>>> %s\n' "$1"
  read -r -p "    [Enter when done] " _
}

capture() {
  local var="$1" question="$2" answer
  printf '\n>>> %s\n' "$question"
  read -r -p "    > " answer
  printf -v "$var" '%s' "$answer"
}

# --- edit below ---------------------------------------------------------

step "Prepare the recorded build, scene/content, device, settings, and reproduction conditions. Authenticate privately if required."

capture CONDITIONS "Summarize the non-secret build/scene/device/settings/network/cache conditions:"

capture REPRODUCED "Run the exact trigger. Did the reported symptom occur? (y/n)"

capture OBSERVATION "Describe the sanitized observation, timestamp, and capture/trace path (or 'none'):"

# --- edit above ---------------------------------------------------------

printf '\n--- Captured ---\n'
printf 'CONDITIONS=%s\n' "$CONDITIONS"
printf 'REPRODUCED=%s\n' "$REPRODUCED"
printf 'OBSERVATION=%s\n' "$OBSERVATION"
