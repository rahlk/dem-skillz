# Color palette & typography

House visual system: **IBM Carbon hues** arranged in the **tiered, dark-mode-native**
grammar the sample diagrams use (see `design-grammar.md`). Apply unless the user
asks for another style.

Two rules make a diagram look like ours:

1. **Tiered colour, not flat colour.** Each semantic family appears in three tiers
   — a light **tint** for region/container fills, a mid-tone **border**, and a
   **dark fill + white text** for the one or two *key* nodes in that family.
   Neutral white/grey cards carry everything else. One **warm accent** (red),
   used only for system titles, lettered badges, and callouts.
2. **Dark-mode native.** Every colour is a `light-dark(<light>,<dark>)` pair so the
   diagram reads in both themes. Set `adaptiveColors="auto"` on the `mxGraphModel`.

## Typography — IBM Plex Sans

`fontFamily=IBM Plex Sans` on every text-bearing cell; `IBM Plex Mono` for code,
file trees, identifiers, hex.

| Role | Style |
|---|---|
| System title | `fontSize=20;fontStyle=1` + warm-accent fontColor |
| Section title | `fontSize=16;fontStyle=1` |
| Subtitle / caption | `fontSize=12;fontStyle=2` (italic) |
| Body | `fontSize=14` |
| Label / annotation | `fontSize=12` |
| Key term / number | wrap in `<b>…</b>` |

Ink: `fontColor=light-dark(#161616,#f4f4f4)` on light fills; `#ffffff` on dark fills.

## Palette — Carbon hues in tiers

Neutral base (most cells):

| Token | light / dark |
|---|---|
| canvas bg | `#f2f4f8` / `#161616` |
| card fill | `#ffffff` / `#262626` |
| border / divider | `#c1c7cd` / `#525252` |
| ink | `#161616` / `#f4f4f4` |

Semantic families — **tint** (container fill) · **border** · **key** (dark fill, white text):

| Family | tint (light / dark) | border (light / dark) | key (light / dark) |
|---|---|---|---|
| Blue   | `#edf5ff` / `#001d6c` | `#0f62fe` / `#78a9ff` | `#0043ce` / `#0f62fe` |
| Green  | `#defbe6` / `#044317` | `#24a148` / `#42be65` | `#198038` / `#24a148` |
| Teal   | `#d9fbfb` / `#004144` | `#009d9a` / `#3ddbd9` | `#005d5d` / `#009d9a` |
| Purple | `#f6f2ff` / `#491d8b` | `#8a3ffc` / `#be95ff` | `#6929c4` / `#8a3ffc` |

Warm accent (Red) — system titles, lettered badges, benchmark/callout labels; sparingly:

| Token | light / dark |
|---|---|
| accent ink / stroke | `#da1e28` / `#fa4d56` |
| accent tint | `#fff1f1` / `#a2191f` |

## Ready-to-use cell styles

Region / phase container (light tint, family border, titled):
```
rounded=1;arcSize=4;whiteSpace=wrap;html=1;fillColor=light-dark(#edf5ff,#001d6c);strokeColor=light-dark(#0f62fe,#78a9ff);fontColor=light-dark(#161616,#f4f4f4);fontFamily=IBM Plex Sans;fontSize=16;fontStyle=1;verticalAlign=top;
```

Component card (neutral fill, family border, subtle depth):
```
rounded=1;arcSize=6;whiteSpace=wrap;html=1;fillColor=light-dark(#ffffff,#262626);strokeColor=light-dark(#0f62fe,#78a9ff);fontColor=light-dark(#161616,#f4f4f4);fontFamily=IBM Plex Sans;fontSize=14;shadow=1;
```

Key node (dark family fill, white text):
```
rounded=1;arcSize=6;whiteSpace=wrap;html=1;fillColor=light-dark(#0043ce,#0f62fe);strokeColor=none;fontColor=#ffffff;fontFamily=IBM Plex Sans;fontSize=14;fontStyle=1;shadow=1;
```

Neutral card:
```
rounded=1;arcSize=6;whiteSpace=wrap;html=1;fillColor=light-dark(#ffffff,#262626);strokeColor=light-dark(#c1c7cd,#525252);fontColor=light-dark(#161616,#f4f4f4);fontFamily=IBM Plex Sans;fontSize=14;
```

Lettered badge — the A/B/C/D motif (warm accent circle):
```
ellipse;whiteSpace=wrap;html=1;fillColor=light-dark(#da1e28,#fa4d56);strokeColor=none;fontColor=#ffffff;fontFamily=IBM Plex Sans;fontSize=13;fontStyle=1;
```

Datastore (cylinder):
```
shape=cylinder3;whiteSpace=wrap;html=1;fillColor=light-dark(#edf5ff,#001d6c);strokeColor=light-dark(#0f62fe,#78a9ff);fontColor=light-dark(#161616,#f4f4f4);fontFamily=IBM Plex Sans;fontSize=12;
```

Graph / special node (hexagon):
```
shape=hexagon;perimeter=hexagonPerimeter2;fixedSize=1;whiteSpace=wrap;html=1;fillColor=light-dark(#ffffff,#262626);strokeColor=light-dark(#0f62fe,#78a9ff);fontColor=light-dark(#161616,#f4f4f4);fontFamily=IBM Plex Sans;fontSize=13;
```

System title (warm accent, no box):
```
text;html=1;strokeColor=none;fillColor=none;fontFamily=IBM Plex Sans;fontSize=20;fontStyle=1;fontColor=light-dark(#da1e28,#fa4d56);align=left;
```

Plain label / annotation (no box):
```
text;html=1;strokeColor=none;fillColor=none;fontFamily=IBM Plex Sans;fontSize=14;fontColor=light-dark(#161616,#f4f4f4);align=left;
```

Edge (orthogonal, neutral):
```
edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=classic;endFill=1;strokeWidth=2;strokeColor=light-dark(#c1c7cd,#525252);fontFamily=IBM Plex Sans;fontSize=12;fontColor=light-dark(#161616,#f4f4f4);
```
Secondary flow: add `dashed=1;`. Crossing edges: add `jumpStyle=arc;`.

Edge label chip — **never the default white background**:
```
labelBackgroundColor=light-dark(#f2f4f8,#262626);labelBorderColor=none;
```
Append to the labelled edge's style (or put the label in an `edgeLabel` child cell
with this style). The default white box stands out against the canvas/page fill —
always set this on a labelled edge.
