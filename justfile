_default:
    @just --list

build type:
  @just build-{{type}}

build-all: build-scss build-css

build-scss:
  whiskers swaync.tera

build-css:
  sass templates/catppuccin-latte.scss      themes/catppuccin-latte.css
  sass templates/catppuccin-frappe.scss     themes/catppuccin-frappe.css
  sass templates/catppuccin-macchiato.scss  themes/catppuccin-macchiato.css
  sass templates/catppuccin-mocha.scss      themes/catppuccin-mocha.css
