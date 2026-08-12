---
name: domain-modeling
description: Build and sharpen a project's domain model. Use when the user wants to pin down domain terminology or a ubiquitous language, record an architectural decision, or when another skill needs to maintain the domain model.
---

# Domain Modeling

Actively build and sharpen the project's domain model as you design. This is the *active* discipline — challenging terms, inventing edge-case scenarios, and writing the glossary and decisions down the moment they crystallise. (Merely *reading* `CONTEXT.md` for vocabulary is not this skill — that's a one-line habit any skill can do. This skill is for when you're changing the model, not just consuming it.)

## File structure

Use the project's configured domain-language and decision-record locations when they exist. The layouts below are defaults, not universal requirements. Most application repos have a single context:

```
/
├── CONTEXT.md
├── docs/
│   └── adr/
│       ├── 0001-event-sourced-orders.md
│       └── 0002-postgres-for-write-model.md
└── src/
```

If a `CONTEXT-MAP.md` exists at the root, the repo has multiple contexts. The map points to where each one lives:

```
/
├── CONTEXT-MAP.md
├── docs/
│   └── adr/                          ← system-wide decisions
├── src/
│   ├── ordering/
│   │   ├── CONTEXT.md
│   │   └── docs/adr/                 ← context-specific decisions
│   └── billing/
│       ├── CONTEXT.md
│       └── docs/adr/
```

Create files lazily — only when you have something to write. If no `CONTEXT.md` exists, create one when the first term is resolved. If no `docs/adr/` exists, create it when the first ADR is needed.

For game work, also load `/game-development` and read the approved vision/source/canon, adaptation, gameplay, engine, art, world, and production authorities that bear on the term. A glossary does not outrank those artifacts.

## During the session

### Challenge against the glossary

When the user uses a term that conflicts with the existing language in `CONTEXT.md`, call it out immediately. "Your glossary defines 'cancellation' as X, but you seem to mean Y — which is it?"

### Sharpen fuzzy language

When the user uses vague or overloaded terms, propose a precise canonical term. "You're saying 'account' — do you mean the Customer or the User? Those are different things."

Prefer a **qualified term or boundary mapping** when one word has legitimate meanings in different contexts. Narrative Character, Gameplay Character, engine character class, and Character Asset should not be collapsed merely to enforce one global synonym. Record where meanings translate and where they do not.

### Discuss concrete scenarios

When domain relationships are being discussed, stress-test them with specific scenarios. Invent scenarios that probe edge cases and force the user to be precise about the boundaries between concepts.

Classify scenarios and resulting claims as source/canon fact, approved adaptation, gameplay abstraction, implementation convention, or empirical observation. Hypothetical scenarios test a model; they do not create canon. Preserve intentional ambiguity. If meaning depends on observed play or runtime behavior, mark the term provisional and link the experiment that can close it.

### Cross-reference with authoritative artifacts

When the user states how something works, check every material authority: source, code, Blueprint/visual script, serialized/editor content, data/config, approved design, and observed runtime evidence. Code is not automatically correct when another authority owns the claim. Surface contradictions with their scopes and route them to the owner rather than silently picking a winner.

### Update CONTEXT.md inline

When a term is resolved, update `CONTEXT.md` right there. Don't batch these up — capture them as they happen. Use the format in [CONTEXT-FORMAT.md](./CONTEXT-FORMAT.md).

`CONTEXT.md` should be totally devoid of implementation details. Do not treat `CONTEXT.md` as a spec, a scratch pad, or a repository for implementation decisions. It is a glossary and nothing else.

Before writing, confirm the artifact is not being edited by another owner and preserve the project's lock/checkout/recovery convention. A handoff names the current owner. Do not allocate an ADR number concurrently without rechecking the destination immediately before creation.

### Offer ADRs sparingly

Only offer to create an ADR when all three are true:

1. **Hard to reverse** — the cost of changing your mind later is meaningful
2. **Surprising without context** — a future reader will wonder "why did they do it this way?"
3. **The result of a real trade-off** — there were genuine alternatives and you picked one for specific reasons

If any of the three is missing, skip the ADR. Use the format in [ADR-FORMAT.md](./ADR-FORMAT.md).

An ADR records a technical or architectural trade-off only when the project has not designated another decision record. Canon, adaptation, art-direction, narrative, and player-experience decisions go to their owning creative artifact; the glossary may point to them but must not absorb their requirements or evidence.
