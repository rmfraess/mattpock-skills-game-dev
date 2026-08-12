---
name: game-development
description: Use when work involves a video game, game engine or editor, player experience, game content, real-time constraints, networking, builds, or target platforms. Selects authority, artifact ownership, a credible slice, and evidence without replacing the task-specific skill.
---

# Game Development

Game work is credible when the **smallest slice preserves the risk being claimed**. Apply this reference alongside the task-specific skill; it selects the game-specific authority, artifacts, ownership, and evidence while that skill still owns its process.

Use only the dimensions material to the current claim. Deterministic inventory arithmetic does not need a playtest. Traversal feel does.

## 1. Establish outcome and authority

State the player-facing or production outcome and why it matters now. Separate fixed constraints from implementation choices.

| Kind of truth | Authority |
| --- | --- |
| Source/canon fact | Approved source material and recorded adaptation decisions |
| Player experience, pillars, tone, scope | Game Director or named creative/design authority |
| Technical mechanism | Owning engineering, technical-art, world-building, audio, animation, or platform specialist |
| Schedule, platform, legal, licensing, accessibility | Named production or subject owner |
| Observed runtime behavior | Reproducible evidence under recorded conditions |

A specialist recommends within their discipline. The creative authority decides player-facing tradeoffs. Neither silently replaces the other.

## 2. Classify the work product

Name every material artifact before mutation:

- source code, scripts, tests, plugins, build configuration;
- visual scripts, graphs, data, prefabs/entities, scenes/maps/levels;
- materials, VFX, animation, audio, UI, narrative, localization;
- source assets, imported derivatives, generated outputs, caches;
- engine/editor settings, platform configuration, packages and builds;
- design, source/canon, technical, production, and evidence documents.

For each, record its authoritative source, mutable owner, source-control/lock rules, generation or import path, and whether a text diff is meaningful. Git visibility is not semantic reviewability.

## 3. Choose the credible slice

Resolve the largest uncertainty with the smallest artifact that preserves it:

| Risk | Credible slice |
| --- | --- |
| Deterministic rules or tooling | Unit/property tests at a stable seam plus engine integration where material |
| Controls, camera, combat, pacing, readability | Representative playable slice and named observation conditions |
| Visual, animation, audio, VFX, spatial composition | Representative content in context plus owner/creative review |
| Frame time, memory, streaming, loading, shader/draw cost | Representative scale and profiler capture on the named configuration |
| Replication, prediction, persistence, online flow | Required server/client topology, latency/loss conditions, and traces |
| Import, cooking, packaging, platform behavior | Real pipeline step or minimal packaged build on the affected target |

Conversation can define an experiment. It cannot substitute for behavior nobody has observed.

## 4. Protect mutable state

Before changing editor-authored, non-mergeable, imported, generated, or shared content:

1. Establish one mutable owner and check locks/checkouts.
2. Inspect working-tree and editor dirty state.
3. Create a recovery point appropriate to the source-control and authoring tools.
4. Name the intended save/reimport/migration set.
5. Keep unrelated dirty packages and local settings untouched.
6. Validate referencers, imports, serialization/version compatibility, and generated outputs after the change.

For destructive migrations, upgrades, reimports, or conversions, use a disposable copy or verified rollback and an explicit human gate naming the consequence.

## 5. Select evidence

Read [EVIDENCE.md](EVIDENCE.md) when completion, review, diagnosis, or handoff depends on more than deterministic source checks. Select evidence by claim; do not collect every layer by habit.

Keep these states distinct when material:

- implemented;
- integrated in the engine/editor;
- representative-tested;
- creatively approved;
- performance-verified;
- cooked/packaged;
- target-verified.

Report only the highest state actually demonstrated and name the remaining owner/gate.

## 6. Route unresolved work

Classify uncertainty before turning it into a question or task:

- **authoritative decision** — named creative, production, source/canon, or technical owner;
- **research** — version-relevant primary sources;
- **prototype** — smallest credible experiment;
- **measurement** — instrumentation, profiling, telemetry, or content-volume check;
- **specialist/editor work** — owning discipline and mutable artifacts;
- **content production** — deliverable, quality bar, dependencies, and reviewer;
- **implementation** — sufficiently decided work with an evidence plan;
- **intentional ambiguity/deferred branch** — reason, owner, trigger, and review point.

Do not ask the user to predict engine, platform, performance, visual, audio, spatial, or feel outcomes that must be observed.

## 7. Preserve runtime neutrality

Keep shared game behavior engine-, model-, provider-, source-control-, and harness-neutral. Put exact commands, frontmatter keys, editor automation, session spawning, work-queue mechanics, platform labs, and source-control operations in disclosed adapters. Verify that an adapter exists and is available before a workflow depends on it.

## Done when

- The outcome, fixed constraints, and deciding authority are explicit.
- Material artifacts and mutable owners are named.
- The slice preserves the disputed behavior.
- Evidence matches the claim and records representative conditions.
- Completion state is honest about what remains unverified.
- Application work that has no material game branch remains on its normal efficient path.
