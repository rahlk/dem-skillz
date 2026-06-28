# Output modes (pagination)

A diagram is authored for a **target medium**. The medium fixes three things:
**canvas size**, a **font floor**, and the **information density** that can stay
legible. Pick the mode *before* drawing — **always ask the user which mode** if
they haven't said.

> Units: draw.io `fontSize` and geometry are px at 100% zoom. On a page that maps
> N units → its physical size, `1 unit ≈ 0.72 pt` at 1:1 (e.g. Letter portrait =
> 850 units = 8.5 in). So a 14px font prints ≈ 10 pt, 22px ≈ 16 pt.

## The golden rule

If the requested content cannot fit the mode's canvas **at or above its font
floor**, do **not** shrink the text. Either **split** across multiple pages (Mode 1)
or **step down in density** (drop to a higher-level rendition). Legibility wins.

## Mode Canvas — draw.io infinite canvas (no page limit) — DEFAULT

The working/editing canvas, not targeting a fixed printed or slide medium. Use for
screen viewing, exploration, and anything that lives in draw.io (zoom/pan) or is
shared as a `.drawio` / SVG / PNG without a page constraint.

- **No page-size limit.** Set `page="0"` on the `mxGraphModel` to hide page
  boundaries. Let the diagram be **as large as it needs to be for full legibility
  and detail** — do **NOT** distill or shrink to fit a page. Detail is the point.
- Fonts generous and consistent (body ~14–16); spread out — whitespace is free.
- **This is the default.** Always ask the user which mode, and assume **Canvas**
  unless they say they need print (Mode 1), a paper figure (Mode 2/3), or a slide
  (PPTX). When unsure, ask "are you in canvas mode?"
- Converting to a paged mode is a **redraw/distill**, not a resize — expect to drop
  detail. Never silently shrink a canvas diagram onto a page.

## Mode 1 — Full page (Letter)

One US Letter sheet per diagram page.

- **Canvas:** portrait `pageWidth=850 pageHeight=1100`, or landscape `1100×850`.
  Pick orientation to match the diagram's aspect (wide → landscape). ~40-unit margin.
- **Font floor:** body ≥ 14, label ≥ 12, title 22–28. (≈ 10 / 9 / 16–20 pt printed.)
- **Fit:** content bounding box fits the usable area at 1:1 — no export downscaling.
- **Density rule:** if it won't fit at the floor, split into multiple Letter pages.
- **Use for:** handouts, printed one-pagers, a figure shown full-screen on Zoom.

## Mode 2 — Two-column figure* (full text width)

Spans both columns: `\begin{figure*} … \end{figure*}`.

- **Canvas:** wide/short — intrinsic width ~1400–1600 units, aspect ~2:1 to 2.6:1.
- **Font floor:** body ≥ 16, title ≥ 24 — so that after LaTeX scales the figure to
  full text width (acmart ~7 in · IEEEtran ~7.16 in · NeurIPS/ICML ~6.9 in),
  body lands ≥ ~7.5 pt.
- **Labels:** use **circled-letter badges** (the house badge motif) so prose can
  cite `(A)`, `(B)`. In LaTeX define `\newcommand{\circled}[1]{\tikz[baseline=(c.base)]\node[shape=circle,draw,inner sep=1pt](c){#1};}` (or `\textcircled{}` for simple cases).
- **Export:** SVG preferred (`-f svg -e`); PDF acceptable. `\includegraphics[width=\textwidth]{…}`.

## Mode 3 — One column (in a two-column paper)

Fits a single column: acmart ~3.33 in, IEEEtran ~3.5 in.

- **Canvas:** narrow — intrinsic width ~700–800 units, vertical layout.
- **Font floor:** body ≥ 18, title ≥ 26 — they must survive heavy reduction to
  column width (≥ ~7 pt).
- **Density:** this mode REQUIRES dropping detail — one idea, ≤ ~8–10 nodes,
  circled-letter labels. A distilled view, never the full deck.
- **Export:** SVG/PDF, `\includegraphics[width=\columnwidth]{…}`.

## Mode PPTX — 16:9 slide

One slide = one high-level idea, for a tech talk.

- **Canvas:** `pageWidth=1920 pageHeight=1080` (or 1280×720). 16:9.
- **Font floor:** body ≥ 22, title ≥ 32. Big and punchy.
- **Density:** highest level only — ≤ ~10 boxes, generous whitespace.
- The house grammar still applies (tiered families, `light-dark()`, badges, shadows).

## Quick reference

| Mode | Size (units) | Body floor | Title floor | Density |
|---|---|---|---|---|
| **Canvas (default)** | infinite — `page="0"` | 14–16 | 22+ | as much as needed — **do not distill** |
| 1 · Full page | 850×1100 / 1100×850 | 14 | 22 | medium; split if over |
| 2 · figure* (2-col) | ~1500×650 wide | 16 | 24 | medium-high; circled labels |
| 3 · 1-col | ~750 wide, tall | 18 | 26 | low — distill hard |
| PPTX · 16:9 | 1920×1080 | 22 | 32 | lowest — one idea |
