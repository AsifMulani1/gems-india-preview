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

## Roster, reconciled 13 Nov 2026

GEMS supplied a roster of 14 existing plus 15 upcoming schools, 29 in all. Checked
against GEMS' own published campus pages before anything was changed.

Applied:

- Dream India School, Tuni is a **State Board** school, not CBSE. The brand line had
  averaged the two Andhra campuses into one board.
- Tuni's link to `dreamindia.com` removed. That site is the Tiruvuru campus alone,
  down to its `<title>`, so Tuni parents were being sent to another school. Tuni now
  falls back to our own campus page, as Varanasi does.
- The 14 unannounced schools are carried as a counted pipeline on `/schools`
  (Mumbai 7, Hyderabad 2, Thane, Kalyan, Goa, Kochi, Thiruvananthapuram), with no
  pin, no page and no invented name or board. `build_app.py` asserts campuses +
  pipeline = 29, so adding a campus without removing it from the pipeline fails the
  build.

Not applied, because GEMS' own live pages contradict the roster:

- The roster lists **Indirapuram** and **Coimbatore** as existing. Both campus pages
  read "A CBSE campus opening April 2027" and "A CBSE and IB campus opening April
  2027", and both title tags say "Opening 2027". Left as opening April 2027.
  By the published pages the split is 12 open and 17 upcoming, not 14 and 15.
- The roster gives **Varanasi** as CBSE/IB. cwsvaranasi.com, the approved source for
  that campus, publishes a CBSE affiliation and nothing about IB. Left as CBSE.
- The roster gives **Modern Academy Kochi** as IB/IGCSE. The site says IB and
  Cambridge, which is the same fact: IGCSE is a Cambridge qualification. No change.
