_default:
    @just --list

build type:
  @just build-{{type}}

build-all: build-scss build-css

build-scss:
  whiskers swaync.tera

[working-directory: 'themes/']
build-css:
  sass catppuccin-latte.scss catppuccin-latte.css
  sass catppuccin-frappe.scss catppuccin-frappe.css
  sass catppuccin-macchiato.scss catppuccin-macchiato.css
  sass catppuccin-mocha.scss catppuccin-mocha.css
