#!/bin/bash

set -euo pipefail

FLAVORS=("latte" "frappe" "macchiato" "mocha")
ACCENTS=("rosewater" "flamingo" "pink" "mauve" "red" "maroon" "peach" "yellow" "green" "teal" "sky" "sapphire" "blue" "lavender")

DIST_DIR="dist/themes"
SRC_DIR="$(pwd)/src"
NODE_MODULES="$(pwd)/node_modules"
TMP_DIR="/tmp/catppuccin-themes"

mkdir -p "$DIST_DIR" "$TMP_DIR"

compile_variant() {
  local flavor=$1 accent=$2
  local out_dir="$DIST_DIR/$flavor"
  local tmp_file="$TMP_DIR/$flavor-$accent.scss"
  local out_file="$out_dir/catppuccin-$flavor-$accent.css"

  mkdir -p "$out_dir"

  # Create temp SCSS with variables
  cat > "$tmp_file" << EOF
\$flavor: "$flavor";
\$accent: "$accent";
@import "$SRC_DIR/theme.scss";
EOF

  npx sass \
    -I "$NODE_MODULES" \
    -I "$SRC_DIR" \
    --no-charset \
    --no-source-map \
    "$tmp_file" \
    "$out_file"
}

compile_style() {
  npx sass \
    -I "$NODE_MODULES" \
    -I "$SRC_DIR" \
    --no-charset \
    --no-source-map \
    "$SRC_DIR/style.scss" \
    "dist/style.css"
}

export -f compile_variant
export DIST_DIR SRC_DIR NODE_MODULES TMP_DIR

compile_all() {
  {
    for flavor in "${FLAVORS[@]}"; do
      for accent in "${ACCENTS[@]}"; do
        echo "$flavor $accent"
      done
    done
  } | parallel --jobs 0 'compile_variant {1} {2}'

  compile_style

  echo "success"
}

watch_mode() {
  fswatch -o "$SRC_DIR" | while read; do
    compile_all
  done
}

main() {
  case "${1:-}" in
    --watch|-w)
      compile_all
      watch_mode
      ;;
    --clean|-c)
      rm -rf "$DIST_DIR" "dist/style.css" "$TMP_DIR"
      ;;
    *)
      compile_all
      ;;
  esac
}

main "$@"
