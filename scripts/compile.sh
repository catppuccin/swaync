#!/usr/bin/env bash
set -euo pipefail

# Define flavors and accents
FLAVORS=(latte frappe macchiato mocha)
ACCENTS=(rosewater flamingo pink mauve red maroon peach yellow green teal blue lavender)

compile_one() {
  local flavor="$1"
  local accent="$2"
  local base="catppuccin-${flavor}-${accent}"
  local input="templates/catppuccin-${flavor}/${base}.scss"
  local output="themes/catppuccin-${flavor}/${base}.css"
  echo "DEBUG: Looking for: $input"

  [ -f "$input" ] || return 0

  echo "Compiling $input -> $output"
  sass --no-source-map "$input" "$output" && echo "✓ $flavor-$accent"
}

export -f compile_one

# Calculate parallel jobs: total cores minus 2
TOTAL_CORES=$(nproc)
PARALLEL_JOBS=$((TOTAL_CORES - 2))

# Ensure at least 1 job
[ "$PARALLEL_JOBS" -lt 1 ] && PARALLEL_JOBS=1

echo "Compiling with $PARALLEL_JOBS parallel jobs (system has $TOTAL_CORES cores)..."

# Generate all flavor-accent pairs and compile in parallel
parallel -j "$PARALLEL_JOBS" compile_one ::: "${FLAVORS[@]}" ::: "${ACCENTS[@]}"

echo "All themes compiled successfully."
