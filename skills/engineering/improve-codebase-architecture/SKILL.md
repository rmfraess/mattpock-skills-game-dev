---
name: improve-codebase-architecture
description: Scan a codebase for deepening opportunities, present them as a visual HTML report, then grill through whichever one you pick.
disable-model-invocation: true
---

# Improve Codebase Architecture

Surface architectural friction and propose **deepening opportunities** without changing production artifacts. The aim is sustainable player/user value, authorability, testability, and navigability—not source-code neatness in isolation.

This command is _informed_ by the project's domain model and built on a shared design vocabulary:

- Run `/codebase-design` for the architecture vocabulary and principles. Use its analytical terms precisely without replacing native framework/engine names such as Actor Component, Module, Blueprint, scene, or package.
- The domain language in `CONTEXT.md` gives names to good seams; ADRs in `docs/adr/` record decisions this command should not re-litigate.
- For game work, run `/game-development` and read the configured player-facing, source/canon, engine, content, ownership, budget, and evidence authorities.

## Process

### 1. Explore

**Scope before you scan — YAGNI.** Deepening a module pays off by making future changes to it easier, so put extra weight on the parts of the codebase that have recently changed. Decide *where* to look before you look:

- If the user named a direction — a module, a subsystem, a pain point — take it, and skip the inference below.
- Otherwise, inspect the project's available change history and production evidence. Source-control churn is one signal; editor/content revisions, import failures, recurring bugs, profiler captures, build/cook failures, asset dependency churn, and slow/unsafe authoring loops can reveal hot spots that text history misses.

Read the project's domain glossary (`CONTEXT.md`) and any ADRs in the area you're touching first.

Use one accountable exploration context through the runtime's configured adapter, or explore directly. Do not assume a named agent primitive or allow recursive delegation. Survey all material surfaces without editing them:

- Where does understanding one concept require bouncing between many small modules?
- Where are modules **shallow** — interface nearly as complex as the implementation?
- Where have pure functions been extracted just for testability, but the real bugs hide in how they're called (no **locality**)?
- Where do tightly-coupled modules leak across their seams?
- Which parts of the codebase are untested, or hard to test through their current interface?
- Where does one player-visible system span source, visual scripting, input, data, animation, UI, content, editor tooling, networking, or platform code?
- Which thin reflected/serialized/lifecycle shells are required by the engine or authoring workflow and must not be deleted by a generic shallowness heuristic?
- Where do content, rendering, world, audio, animation, or import-pipeline problems recur despite low text-file churn?
- Would a code-locality win make designer iteration, content reuse, frame budget, source fidelity, or artifact ownership worse?

Apply the **deletion test** only after identifying framework lifecycle, serialization/reflection, networking, editor, content-authoring, and platform obligations. Deleting a required shell does not simplify the system; it breaks a contract.

### 2. Present candidates as an HTML report

Write a self-contained HTML file to the OS temp directory so nothing lands in the repo. Resolve the platform temp directory and write `<tmpdir>/architecture-review-<timestamp>.html`. Use inline CSS and inline SVG/HTML diagrams; the delivered report must not depend on remote resources or network access. Open it with the available platform adapter and give the user the absolute path.

Each candidate gets a before/after visualization. If a graph renderer helps author it, export the rendered result to inline SVG before delivery; do not ship a runtime dependency.

For each candidate, render a card with:

- **System and artifacts** — the player/user-visible system and every material source/editor/content/build surface involved
- **Problem** — why the current architecture is causing friction
- **Solution** — plain English description of what would change
- **Benefits and trade-offs** — locality/leverage plus player value, authoring speed/safety, content reuse, budgets, and ownership consequences
- **Owner and migration risk** — deciding specialist(s), shared opaque artifacts, locks/claims, order, recovery, and rollback
- **Evidence plan** — deterministic, editor/runtime, play/review, network, profile, cook/build, and target checks that are material
- **Before / After diagram** — side-by-side, custom-drawn, illustrating the shallowness and the deepening
- **Recommendation strength** — one of `Strong`, `Worth exploring`, `Speculative`, rendered as a badge

End with **Top recommendation**. "No architecture change now" is a valid and preferred result when evidence does not justify migration cost/risk.

**Use CONTEXT.md vocabulary for the domain, and the `/codebase-design` vocabulary for the architecture.** If `CONTEXT.md` defines "Order," talk about "the Order intake module" — not "the FooBarHandler," and not "the Order service."

**ADR conflicts**: if a candidate contradicts an existing ADR, only surface it when the friction is real enough to warrant revisiting the ADR. Mark it clearly in the card (e.g. a warning callout: _"contradicts ADR-0007 — but worth reopening because…"_). Don't list every theoretical refactor an ADR forbids.

See [HTML-REPORT.md](HTML-REPORT.md) for the full HTML scaffold, diagram patterns, and styling guidance.

Verify the saved file exists, contains the expected candidate count and top recommendation, has no external script/stylesheet/font dependency, and renders through an available local preview/browser before handoff. If rendering cannot be inspected, say so and provide the structural checks rather than claiming visual verification.

Do NOT propose interfaces yet. After the file is written, ask the user: "Which of these would you like to explore?"

### 3. Grilling loop

Once the user picks a candidate, run the `/grilling` skill to walk the decision tree with them — constraints, dependencies, the shape of the deepened module, what sits behind the seam, what tests survive.

Side effects happen inline as decisions crystallize — run the `/domain-modeling` skill to keep the domain model current as you go:

- **Naming a deepened module after a concept not in `CONTEXT.md`?** Add the term to `CONTEXT.md`. Create the file lazily if it doesn't exist.
- **Sharpening a fuzzy term during the conversation?** Update `CONTEXT.md` right there.
- **User rejects the candidate with a load-bearing reason?** Offer an ADR, framed as: _"Want me to record this as an ADR so future architecture reviews don't re-suggest it?"_ Only offer when the reason would actually be needed by a future explorer to avoid re-suggesting the same thing — skip ephemeral reasons ("not worth it right now") and self-evident ones.
- **Want to explore alternative interfaces for the deepened module?** Use `/codebase-design` with a named driver and its runtime-neutral design-it-twice adapter. Route runtime, rendering, world/content, source/canon, and creative trade-offs to their proper owners; never let design exploration concurrently edit shared artifacts.
