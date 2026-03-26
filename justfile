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
  sass --no-source-map templates/style.scss style.css
