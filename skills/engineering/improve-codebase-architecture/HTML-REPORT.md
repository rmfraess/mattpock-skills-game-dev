# HTML Report Format

The architectural review is a single self-contained HTML file in the OS temp directory. It must render offline: inline CSS, inline SVG, and local HTML only. A graph renderer may be used during authoring, but export its result into the file—never leave remote scripts, stylesheets, web fonts, or runtime imports.

## Scaffold

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Architecture review — {{repo name}}</title>
    <style>
      :root { color-scheme: light; --paper:#fafaf9; --ink:#0f172a; --line:#cbd5e1; --accent:#047857; --warn:#b45309; --risk:#dc2626; }
      * { box-sizing: border-box; }
      body { margin:0; background:var(--paper); color:var(--ink); font:16px/1.5 system-ui,sans-serif; }
      main { max-width:72rem; margin:auto; padding:3rem 1.5rem; }
      article { background:white; border:1px solid var(--line); border-radius:.75rem; padding:1.5rem; margin:1.5rem 0; }
      #candidates { display:grid; gap:2.5rem; }
      .seam { stroke-dasharray: 4 4; }
      .leak { stroke: var(--risk); }
      .deep { fill:var(--ink); color:white; }
    </style>
  </head>
  <body>
    <main>
      <header>...</header>
      <section id="candidates">...</section>
      <section id="top-recommendation">...</section>
    </main>
  </body>
</html>
```

## Header

Project name, date, inspected surfaces, evidence limitations, and a compact legend. No introduction paragraph—straight into candidates.

## Candidate card

The diagrams carry the weight. Prose is sparse, plain, and uses the glossary terms (from the `/codebase-design` skill) without ceremony.

Each candidate is one `<article>`:

- **Title** — short, names the deepening (e.g. "Collapse the Order intake pipeline").
- **Badge row** — recommendation strength (`Strong` = emerald, `Worth exploring` = amber, `Speculative` = slate), plus a tag for the dependency category (`in-process`, `local-substitutable`, `ports & adapters`, `true-external`, `engine/platform-owned`).
- **System and artifacts** — player/user-visible system plus material source, editor, content, build, network, or target surfaces.
- **Before / After diagram** — the centrepiece. Two columns, side by side. See patterns below.
- **Problem** — one sentence. What hurts.
- **Solution** — one sentence. What changes.
- **Wins/trade-offs** — locality/leverage plus authorability, budgets, content reuse, ownership, and player impact.
- **Owner/migration/evidence** — specialist authority, shared-artifact safety, recovery order, and material evidence layers.
- **ADR callout** (if applicable) — one line in an amber-tinted box.

No paragraphs of explanation. If the diagram needs a paragraph to be understood, redraw the diagram.

## Diagram patterns

Pick the pattern that fits the candidate. Mix them. Don't make every diagram look the same — variety is part of the point.

### Exported graph SVG (dependencies / call flow)

Use any graph authoring tool when the point is "X calls Y calls Z," then export the result as accessible inline SVG. Sequence diagrams work well for "before: six round-trips; after: one." Include a text alternative or labeled nodes/edges.

```html
<svg viewBox="0 0 640 240" role="img" aria-labelledby="graph-title graph-desc">
  <title id="graph-title">Order intake dependency flow</title>
  <desc id="graph-desc">OrderHandler calls OrderValidator and OrderRepo; PricingClient leaks across the seam.</desc>
  <!-- labeled nodes and edges, fully inline -->
</svg>
```

### Hand-built boxes-and-arrows (when a graph layout fights you)

Modules as `<div>`s with borders and labels. Arrows as inline SVG `<line>` or `<path>` elements positioned absolutely over a relative container. Reach for this when you want the "after" diagram to feel like one thick-bordered deep module with greyed-out internals and the graph renderer does not give it the right weight.

### Cross-section (good for layered shallowness)

Stack fixed-height horizontal bands with a strong left border to show layers a call passes through. Before: 6 thin layers each doing nothing. After: 1 thick band labelled with the consolidated responsibility.

### Mass diagram (good for "interface as wide as implementation")

Two rectangles per module — one for interface surface area, one for implementation. Before: interface rectangle is nearly as tall as the implementation rectangle (shallow). After: interface rectangle is short, implementation rectangle is tall (deep).

### Call-graph collapse

Before: a tree of function calls rendered as nested boxes. After: the same tree collapsed into one box, with the now-internal calls shown faded inside it.

## Style guidance

- Lean editorial, not corporate-dashboard. Use generous whitespace and an inline system or serif font stack.
- Colour sparingly: one accent (emerald or indigo) plus red for leakage and amber for warnings.
- Keep diagrams ~320px tall so before/after sits comfortably side by side without scrolling.
- Give module labels small uppercase text with wider letter spacing so they read as schematic, not as UI.
- No external scripts, stylesheets, fonts, images, or network imports. Prefer no JavaScript; any optional interaction is inline, nonessential, and degrades to readable static content.

## Top recommendation section

One larger card. Candidate name, one sentence on why, anchor link to its card—or **No architecture change now** with the evidence/risk reason.

## Verification

Before handoff, verify:

- the file exists and parses as HTML;
- every candidate and the top recommendation are present;
- no `http://`, `https://`, external `<script src>`, `<link rel="stylesheet">`, or remote asset remains;
- headings and diagrams have accessible labels;
- an available local browser/preview renders the page. If no render surface is available, report structural checks only.

## Tone

Plain English, concise — but the architectural nouns and verbs come straight from the `/codebase-design` skill. Concision is not an excuse to drift.

Use **module, interface, implementation, depth, deep, shallow, seam, adapter, leverage, and locality** for architectural analysis.

Retain precise native names such as Actor Component, engine Module, Blueprint, scene, package, service, or platform API. Qualify the artifact's analytical role instead of renaming it—for example, "the Actor Component is the lifecycle shell at this seam."

**Phrasings that fit the style:**

- "Order intake module is shallow — interface nearly matches the implementation."
- "Pricing leaks across the seam."
- "Deepen: one interface, one place to test."
- "Two adapters justify the seam: HTTP in prod, in-memory in tests."

**Wins bullets** name the gain in glossary terms: *"locality: bugs concentrate in one module"*, *"leverage: one interface, N call sites"*, *"interface shrinks; implementation absorbs the wrappers"*. Don't write *"easier to maintain"* or *"cleaner code"* — those terms aren't in the glossary and don't earn their place.

No hedging, no throat-clearing, no "it's worth noting that…". If a sentence could be a bullet, make it a bullet. If a bullet could be cut, cut it. If a term isn't in the `/codebase-design` glossary, reach for one that is before inventing a new one.
