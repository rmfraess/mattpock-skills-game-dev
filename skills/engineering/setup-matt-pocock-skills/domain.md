# Domain Docs

How the engineering skills should consume this project's authoritative language and decision documentation when exploring the codebase, content, or editor-owned state.

## Before exploring, read these

- **The authoritative glossary or context docs recorded by setup** — commonly `CONTEXT.md`, or `CONTEXT-MAP.md` pointing at context-specific files.
- **The recorded decision locations** — commonly `docs/adr/`, but preserve an established project layout.
- **For game projects, `docs/agents/game-development.md`** — follow its pointers to vision, design, source/canon, art direction, engine, target, ownership, budget, and evidence authorities.

If optional domain files don't exist, **proceed silently**. Don't suggest creating them upfront. The `/domain-modeling` skill creates language and decision docs lazily when terms or decisions actually get resolved. Missing game authority, ownership, or target evidence is different: surface it when it blocks a safe or truthful claim.

## File structure

Single-context layout (common example, not a required path):

```
/
├── CONTEXT.md
├── docs/adr/
│   ├── 0001-event-sourced-orders.md
│   └── 0002-postgres-for-write-model.md
└── src/
```

Multi-context layout (example):

```
/
├── CONTEXT-MAP.md
├── docs/adr/                          ← system-wide decisions
└── src/
    ├── ordering/
    │   ├── CONTEXT.md
    │   └── docs/adr/                  ← context-specific decisions
    └── billing/
        ├── CONTEXT.md
        └── docs/adr/
```

## Use the glossary's vocabulary

When your output names a domain concept (in an issue title, a refactor proposal, a hypothesis, a test name), use the term as defined in `CONTEXT.md`. Don't drift to synonyms the glossary explicitly avoids.

If the concept you need isn't in the glossary yet, that's a signal — either you're inventing language the project doesn't use (reconsider) or there's a real gap (note it for `/domain-modeling`).

For game projects, keep native engine, editor, rendering, animation, audio, level-design, and platform terms intact when they are already precise. Do not replace a production term with generic app vocabulary merely to make the glossary look uniform.

## Flag ADR conflicts

If your output contradicts an existing ADR or recorded vision, canon, art-direction, platform, ownership, or budget decision, surface it explicitly rather than silently overriding:

> _Contradicts ADR-0007 (event-sourced orders) — but worth reopening because…_
