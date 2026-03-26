_default:
    @just --list

build type:
  @just build-{{type}}

build-all: build-scss build-css

build-scss:
  whiskers scripts/swaync.tera

[parallel]
build-css:
  scripts/compile.sh
  sass templates/style.scss style.css
