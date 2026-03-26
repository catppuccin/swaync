_default:
    @just --list

build type:
  @just build-{{type}}

build-all: build-scss build-css

build-scss:
  whiskers scripts/swaync.tera

build-css:
  scripts/compile.sh
