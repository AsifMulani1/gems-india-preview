# GEMS Education India, website mockup

A design prototype of a replacement group website for GEMS Education India, built for
parents as the primary audience.

Live preview: https://asifmulani1.github.io/gems-india-preview/

The whole prototype is a single `index.html`. Images, logos, the map and the fonts
metrics are inlined, so it runs from any static host with no build step. Routing is
by URL hash, for example `#/campus/gems-millennium-school-gurugram`.

Content is taken from gemseducationindia.com and gemseducation.com. Nothing is invented.

Source of the prototype, build script and verification gates: `~/gems-hero`.

## Hosting note

This copy of `index.html` carries `<meta name="robots" content="noindex,nofollow">`
and the repository serves a blanket `robots.txt` disallow. A prototype on a public
host must not appear in search results alongside gemseducationindia.com. The source
copy in `~/gems-hero` does not carry the tag; it is added here, at the hosting layer.

## Icons

`favicon.png` and `icon-180.png` are GEMS' own mark, taken from
https://gemseducationindia.com/favicon.ico (one 256x256 RGBA entry) and scaled.
The home screen icon is inset and flattened to white because iOS rounds the
corners and does not keep transparency.

Worth telling GEMS: their pages declare no icon tags at all, so browsers fall
back to the root `/favicon.ico` and iOS has no home screen icon to use.
