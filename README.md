<h3 align="center">
 <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
 <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
 Catppuccin for <a href="https://github.com/ErikReider/SwayNotificationCenter">SwayNC</a>
 <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
 <a href="https://github.com/catppuccin/swaync/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/swaync?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
 <a href="https://github.com/catppuccin/swaync/issues"><img src="https://img.shields.io/github/issues/catppuccin/swaync?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
 <a href="https://github.com/catppuccin/swaync/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/swaync?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
 <img src="assets/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="assets/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="assets/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="assets/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="assets/mocha.webp"/>
</details>

## Usage

1. Download your preferred flavor from the [`themes/`](themes/) folder.
2. Rename the downloaded theme to `style.css` and put it into
   `~/.config/swaync/`.
3. If you're using a custom font, you will need to change the line
   `font-family: 'JetbrainsMono Nerd Font'` to your font of choice.
4. Add `"cssPriority": "user",` to your `swaync/config.json` config file, to
   prioritize this style!

## Building yourself?

It's never been simpler! Simply:

1. Clone the repository!
2. Make any of your changes to the [`swaync.tera`](swaync.tera) file.
3. Run `whiskers swaync.tera` in the same (catppuccin/swaync root) directory.
4. Collect your new theme files, generated as [`themes/<flavor>.css`](themes/)!

Required packages to build it yourself:

- [git](https://git-scm.com/),
- [catppuccin/whiskers](https://whiskers.catppuccin.com/)

## 💝 Thanks to

- [Isabel Roses](https://github.com/isabelroses)
- [Toria](https://github.com/ninetailedtori)

&nbsp;

<p align="center">
 <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
 Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
 <a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
