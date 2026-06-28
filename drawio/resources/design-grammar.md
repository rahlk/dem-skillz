# Design grammar

The *structural* conventions that make a diagram look like ours, distilled from
`samples/`. Colour & type live in `color-palette.md`; this file is about layout
and composition. Use both together.

## Reference samples (study these)

- **`samples/main-arch.drawio`** — native; the canonical reference for tiered
  colour, phase containers, semantic shapes, edge-label chips, and `light-dark()`
  dark mode. When in doubt, match this file.
- **`samples/architecture.svg`** — dense system architecture: labelled column
  regions, lettered badges, neutral base + one warm accent.
- **`samples/scarf-intro-fig.svg`** — staged pipeline: Stage 1/2/3 columns with
  italic subtitles, dashed dividers, bold key numbers, brand icons.
- **`samples/scarf-fig-2.svg`** — code-centric: framework-coloured code cards,
  lettered cross-reference badges linked to a "Remarks" panel.

## 1. Compose in labelled regions

Group work into a few big **phase / stage containers** — rounded rects with a
light family-tint fill, a family border, and a title (a side/corner tab or a
bold top-left label). Everything inside is a *child* of the container. Don't
free-float dozens of nodes on a blank canvas.

## 2. Tiered colour by family

Pick one semantic hue per region (Blue, Green, Teal, Purple). Region = tint;
components = neutral cards with the family border; the one or two **key** nodes =
dark family fill + white bold text. Reserve the **warm accent (red)** for the
system title, lettered badges, and benchmark/callout labels — nothing else.

## 3. Semantic shape vocabulary

- rounded rect = process / component (default)
- hexagon = graph / special node (icon inside)
- cylinder = datastore / database
- small hexagon = microservice / tag badge (e.g. `µS`)
- **lettered circle badge (A/B/C/D, a/b/c/d)** = a step or sub-agent — and the
  *same* badge cross-references panels (badge by the artifact ↔ badge in a
  Remarks/explanation list). This is the signature motif; use it.
- plain text (no box) = label / annotation / bullet note

## 4. Typography rhythm

Bold system/section titles; an **italic subtitle** under a title; monospace
(Plex Mono) for code, file trees, tool names, identifiers; **bold** inline for
key numbers/terms. Aim for dense, precise, academic-figure information design —
not a sparse slide.

## 5. Edges

Orthogonal, sharp corners (`rounded=0`), `strokeWidth=2`; dashed for
secondary/optional flows; `jumpStyle=arc` where edges cross. Label edges with a
**tinted chip** (`labelBackgroundColor=light-dark(#f2f4f8,#262626);labelBorderColor=none`),
never the default white box. Use `flowAnimation=1` only when "live data flow" is
the actual point, and sparingly.

## 6. Depth, used sparingly

A subtle `shadow=1` on cards and key nodes is part of the house look — and the
*only* decoration that earns its place. It is **not** a reason to add a wrapper
cell (see "Favour ridiculous simplicity" in `SKILL.md`). Use a small `arcSize`
(4–6) for gentle rounding.

## 7. Dark mode is not optional

Author every colour as `light-dark(light,dark)` and set `adaptiveColors="auto"`
on the `mxGraphModel`. Verify the diagram reads in both light and dark themes.

## 8. No overlaps — STRICT

Nothing overlaps: no node on another node, no edge through a non-endpoint box,
minimal edge crossings. Build it clean *by construction*, not by trusting the
auto-router. Lay out in depth-ordered columns/rows; compute each box's `y` from a
running cursor + fixed gap (≥ 40) and its height from its text; leave wide
channels (≈ 150–220) between columns; place children in their parent's vertical
band and pin edges `exitX=1;exitY=0.5;entryX=0;entryY=0.5`. If the graph is a DAG
(shared targets), **reduce it to a tree** — one primary parent per node, the rest
shown as fields/notes, not arrows — rather than ship a hairball. Recursion is a
local self-loop, never a long wire. Full procedure in `SKILL.md` →
"No overlaps — STRICT". Legibility wins over completeness, every time.
