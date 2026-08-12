## What it does

`game-development` is the shared game-work reference beneath the other skills. It does not replace prototyping, implementation, review, diagnosis, or planning. It makes those workflows choose the right authority, mutable artifacts, representative slice, and completion evidence when the work involves a game engine, editor-authored content, player experience, real-time budgets, networking, builds, or target platforms.

Its defining constraint is **credible slice**: the smallest experiment or deliverable must preserve the behavior being claimed. A unit test can prove deterministic inventory arithmetic. It cannot prove traversal feel, streaming at production scale, or a packaged console build.

## When to reach for it

Type `/game-development`, or the [agent](https://www.aihero.dev/ai-coding-dictionary/agent) reaches for it automatically when a task involves a video game, game engine/editor, player-facing behavior, game content, performance, networking, cooking, or platform constraints.

Use it alongside the task skill:

| Situation | Pair it with |
| --- | --- |
| An uncertain gameplay, content, systems, performance, network, or platform question | [prototype](https://aihero.dev/skills-prototype) |
| Building source plus editor/content work | [implement](https://aihero.dev/skills-implement) |
| Reviewing mixed source, packages, assets, builds, or player-facing behavior | [code-review](https://aihero.dev/skills-code-review) |
| A hard engine, runtime, editor, content, network, or platform defect | [diagnosing-bugs](https://aihero.dev/skills-diagnosing-bugs) |
| Turning game direction into specs, issues, or a long-range map | [to-spec](https://aihero.dev/skills-to-spec), [to-tickets](https://aihero.dev/skills-to-tickets), or [wayfinder](https://aihero.dev/skills-wayfinder) |

For ordinary application work with no material game branch, stay on the original workflow.

## The credible slice

The skill first asks what must remain real. A controls question needs hands-on input and timing. A rendering-budget question needs representative content and a profiler. A replication question needs the relevant server/client topology. A platform question may need a cooked build on the target. Everything outside that boundary can stay small or mocked.

It then protects the production surface: one mutable owner, known editor/working-tree state, locks/checkouts, recovery, intentional saves, and source/import/generated lineage. A Git diff is evidence about text; it is not a semantic review of an opaque map, graph, animation, or material package.

## Evidence follows the claim

The reference separates evidence layers instead of treating tests as universal proof:

- deterministic automation;
- editor validation;
- representative play or runtime observation;
- visual/audio/creative review;
- network scenarios;
- profiles and budget captures;
- cook/package/build results;
- target-device checks.

Use only the layers the claim needs, and report the highest state actually demonstrated: implemented, integrated, representative-tested, approved, budget-verified, packaged, or target-verified.

## Common questions

**Does every game change need a playtest and a target build?**

No. Evidence is conditional. A pure save-game checksum can close with deterministic tests. A camera-feel change needs representative play. A platform entitlement fix needs the affected target. The reference exists to prevent both under-testing and ceremonial over-testing.

**Who decides when specialists disagree?**

The owning specialist decides the technical mechanism within accepted constraints and provides options, consequences, and evidence. The Game Director or named creative authority decides player-facing intent and tradeoffs. Production, platform, legal, accessibility, and source/canon truths remain with their named authorities.

**Does this make the other skills game-specific?**

Only on the game branch. The application path stays intact. Shared policy lives here so each consumer needs only its unique correction rather than another game-development checklist.

## It's working if

- The task names the player or production outcome before choosing a mechanism.
- One owner is responsible for every mutable non-mergeable artifact.
- The prototype or test preserves the behavior it claims to answer.
- “Tests pass,” “compiled,” “played,” “profiled,” “packaged,” and “target-verified” remain distinct states.
- A deterministic application task still follows the original lightweight route.

## Where it fits

`game-development` is a model-invoked shared reference beneath the whole set. [ask-matt](https://aihero.dev/skills-ask-matt) routes game work through it; task skills keep owning their processes. [writing-for-agents](https://aihero.dev/skills-writing-for-agents) governs how the resulting instructions are written, while this reference governs what game-specific facts and evidence they must preserve.
