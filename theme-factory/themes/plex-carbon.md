# Plex Carbon

A clean, modern theme pairing IBM's Plex Sans typeface with an IBM-Carbon-inspired multi-hue accent set. Neutral black/white base with saturated jewel-tone accents for charts, callouts, and category coding.

## Color Palette

- **Black**: `#000000` - Primary text and dark base
- **Near Black**: `#171414` - Secondary dark for backgrounds and headers
- **Light Gray**: `#E8E8E8` - Dividers, surfaces, subtle fills
- **White**: `#FFFFFF` - Page background and reverse text
- **Carbon Blue**: `#0F62FE` - Primary accent (titles, key highlights)
- **Coral Red**: `#FA4D56` - Secondary accent (alerts, emphasis)
- **Violet**: `#8A3FFC` - Tertiary accent (category 3)
- **Teal**: `#0072C3` - Quaternary accent (category 4)
- **Magenta**: `#D02670` - Quinary accent (category 5)
- **Green**: `#198038` - Senary accent (positive metrics, category 6)
- **Cyan-Blue**: `#1192E8` - Hyperlinks
- **Pink**: `#EE5396` - Followed links

## Typography

- **Headers**: IBM Plex Sans SemiBold (fallback: IBM Plex Sans, Helvetica Neue, Arial, sans-serif)
- **Body Text**: IBM Plex Sans (fallback: Helvetica Neue, Arial, sans-serif)

## Visual Identity

- Dominance: white/light-gray base (~70%) with black text and a single accent color per slide
- Use Carbon Blue as the default lead accent; rotate through the other accents only when distinguishing categories or data series
- Pair with thin (1-1.5pt) Carbon Blue rules or filled circular icon backgrounds — no underlines beneath titles
- Charts: cycle accents in the order blue → coral → violet → teal → magenta → green

## Visual Grammar

A consistent layout/edge/color system for architecture and concept slides. Apply these rules whenever the theme is used on a diagrammatic slide.

### Slide layout: three-zone canvas

- **Title row (top):** Two-tone title. Left segment in Carbon Blue (`#0F62FE`), right segment in Black — e.g. `Phase I:` blue, `Agentic Harness for Vulnerability Discovery` black. Heavy weight, ~40-48pt, left-aligned, no underline rule.
- **Framing paragraph:** A single thin-stroke (1pt black) rounded rectangle directly below the title containing 2-4 lines of body text that sets up the diagram. Bold lead-in phrase, regular body. Generous internal padding (~0.25").
- **Center column:** The diagram itself, vertically centered horizontally on the slide.
- **Left + right gutters:** Caption paragraphs aligned to each tier of the central diagram. Bold black lead-in (e.g. `MCP Event Bus:`) followed by regular body. Captions on opposite gutters mirror each other when the diagram has symmetric branches.

### Box hierarchy (fills + strokes)

- **White fill, 1.5pt black stroke, ~6px corner radius** — every standard functional component.
- **Black fill, white text** — reserved exclusively for "spine" or message-passing elements that everything else crosses through (event buses, central routers). Used sparingly: 1-2 per diagram max.
- **White box nested inside a dashed light-gray bracket/group** — child components belonging to a tier. The dashed bracket also serves as the tie-line to the side caption.
- **White fill with Coral Red (`#FA4D56`) stroke** — exceptions, footnoted items, or "available later" callouts. Always paired with a matching red-italic legend (e.g. `*Available in Concert`) bottom-left.

### Edge vocabulary

Three and only three edge styles, each with a fixed semantic meaning:

1. **Solid Carbon Blue arrow + Carbon Blue verb label** (e.g. `Observe`, `Publish`, `Execute Against`, `Queries`) — normal runtime data flow.
2. **Dashed Coral Red arrow + red italic label** (e.g. `Action: tool call`) — agent-initiated or exceptional actions; a different *kind* of edge, not just another data path.
3. **Double-headed Carbon Blue arrow** — bidirectional querying / read-write relationships between adjacent tiers.

Arrow labels sit beside the arrow, ~10-12pt, lowercase verb phrases.

### Typography roles within the diagram

- **Component names:** IBM Plex Sans Bold, 14-16pt, black, centered in the box.
- **Sub-descriptions inside boxes:** IBM Plex Sans Italic, 11-12pt, mid-gray (`#5A5A5A` or theme dark-2), centered below the name.
- **Side caption lead-ins:** IBM Plex Sans Bold, black, followed by a colon.
- **Side caption body:** IBM Plex Sans Regular, black, ~12pt, left-aligned in left gutter / right-aligned or left-aligned in right gutter (pick one and be consistent).
- **Arrow labels:** IBM Plex Sans Regular, color-matched to the arrow (blue or red-italic).

### Color discipline

- **Blue = the spine.** Use only for: title accent segment, all flow arrows, all flow verb labels, and the bidirectional query arrows. One accent doing one job consistently.
- **Red/pink = exceptions and footnotes only.** Three permitted uses per slide: dashed action arrows, exception-box outlines, and the matching legend. Never use red for decoration.
- **Black, white, light-gray (`#E8E8E8`), and near-black (`#171414`)** carry everything else. The other Carbon accents (violet, teal, magenta, green) appear only in charts/data viz, never in architecture diagrams.

### Symmetry and reading order

- When a diagram has two parallel branches (e.g. two event channels feeding one agent), mirror them across a vertical axis: identical box shapes, identical edge pair, paired captions on opposite gutters. Mirroring is the slide's primary argument — make it deliberate.
- Top-to-bottom is the canonical reading order: orchestrating/abstract at top, substrate at bottom. Data flows up; intent flows down.

### Anti-patterns

- No underline rule beneath the title — whitespace separates it from the framing paragraph.
- No drop shadows, gradients, or 3D effects on any box.
- No more than two accent colors visible on the slide (blue + red). Reserve violet/teal/magenta/green for charts.
- No solid lines for "action" edges and no dashed lines for normal flow — the dashed-vs-solid contrast is load-bearing.

## Best Used For

Business proposals, internal reports, product roadmaps, data-heavy decks, and any presentation that wants a neutral, professional default with vivid categorical accents rather than a strongly branded look.
