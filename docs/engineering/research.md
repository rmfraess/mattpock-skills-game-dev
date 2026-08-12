## What it does

`research` answers a bounded question by matching each claim to the source that can own it, then leaves one cited artifact in the project's configured research location. Versioned official docs/specs/source own documented behavior; executed project evidence owns local behavior; original or contractually approved material owns canon; actual licenses and platform-holder sources own obligations. Credible papers, technical talks, and postmortems may support labeled practice claims.

Its defining constraint is the separation of **documented**, **observed**, **inferred**, and **unresolved** truth. A vendor page can document support; it cannot prove that support in this project configuration, content set, build, or target. Each load-bearing claim records its truth class, version/revision/platform scope, access date, and verifiable citation.

## When to reach for it

Type `/research`, or the [agent](https://www.aihero.dev/ai-coding-dictionary/agent) reaches for it automatically when a task turns into reading legwork.

Reach for it when the next step is *finding something out* from outside the working directory — how a third-party API behaves, what a spec actually says, whether a version claim holds — and you'd rather not stall your own thread doing the reading. What you need decides which skill:

| What you need | Reach for |
| --- | --- |
| A bounded external fact, version, source/canon, license, platform, or practice question | `research` |
| A decision made *with* you, by interview | [grilling](https://aihero.dev/skills-grilling) |
| A durable architecture decision, written into `CONTEXT.md` and ADRs | [grill-with-docs](https://aihero.dev/skills-grill-with-docs) |
| To find out whether documented behavior works in this project | Research the contract, then route the smallest empirical question to [prototype](https://aihero.dev/skills-prototype) or [diagnosing-bugs](https://aihero.dev/skills-diagnosing-bugs) |
| A plan too big to hold in one session | [wayfinder](https://aihero.dev/skills-wayfinder) |

The line between `research` and `grill-with-docs` is the **shelf life of what comes back**. Research produces short-lived assets — what this library's auth mechanism does as of this week. An ADR records a decision you keep. If what you are producing is a decision rather than a fact, you are [grilling](https://www.aihero.dev/ai-coding-dictionary/grilling), not researching.

## Delegated legwork

Reading may run through exactly one approved, inspectable worker/session adapter so you can keep working. The worker may not redelegate. If the runtime cannot provide a durable visible result, the caller researches directly. Research is legwork you may delegate, not a decision you outsource.

Before reading, the run states the decision, exact scope, versions/platforms, stopping criterion, and what research will not establish. That bound prevents both endless reading and broad reports that miss the deciding fact.

Where the artifact lands follows the project's location and retention policy. Repository storage is only for shared durable context; transient or restricted work belongs in the configured tracker, knowledge base, or local research area with a durable pointer. Time-sensitive findings carry review/expiry conditions.

## Common questions

**Can the research worker spawn another worker?**

No. The workflow requires exactly one owner and explicitly forbids redelegation. The runtime adapter can use a top-level session, queue, background worker, or direct execution, but completion must return one inspectable artifact and one evidence-backed handoff.

**Where should the file live — and should I commit it?**

Follow the project policy. Commit only research intended as shared durable context. Otherwise archive or delete it after the decision and leave a pointer from the work item. Version-sensitive reports are dated and name when they must be reviewed; stale unscoped research is worse than no research.

**What counts as an authoritative source?**

The claim decides. API contracts prefer versioned official docs/specs/source; project behavior requires executed project evidence; canon follows the approved authority order; obligations follow actual licenses or platform-holder material; practice may use labeled credible secondary evidence. Conflicts stay visible. Critical or disputed facts quote exact source wording.

**How are confidential platform or licensed sources handled?**

The artifact summarizes the decision-useful fact and stores an authorized pointer. It never copies secrets, NDA text, licensed assets, or sensitive telemetry into chat or a public repository, and records provenance/redistribution constraints for third-party material.

**Does a later session reuse what an earlier run found?**

No. Nothing auto-loads a past research file; it is a document sitting in the repo until a human or a skill points at it. This was raised early as the strongest challenge to the design — "the value's the markdown becoming context the agent re-reads later, not the fetch itself. A write-once dead file is just a fancy search" — and the shipped skill does not solve it. In practice the file earns its keep by being fed into the next step deliberately: attach it to a spec, quote it into a grilling session, point a [ticket](https://www.aihero.dev/ai-coding-dictionary/ticket) at it.

**Why not just ask the agent to go read the docs?**

You can, and a two-line prompt saying exactly that was the practice this skill replaced. Two things the skill buys over the prompt: it runs in the background so your session keeps its [context](https://www.aihero.dev/ai-coding-dictionary/context) clean, and the primary-source constraint and the cited-file output come out the same way every time rather than however you happened to phrase it. Against a [harness](https://www.aihero.dev/ai-coding-dictionary/harness)'s own deep-research mode, the difference is the artifact and the source discipline, not the search. If a two-line prompt gets you what you need on a small question, use the two-line prompt.

**When does it stop reading?**

The run defines one before reading. It stops when the bounded question can be answered at the required confidence, every load-bearing claim has an authority/truth class, source conflicts and unknowns are explicit, and any necessary empirical project check is named.

**`/wayfinder` created research tickets — do I resolve those myself?**

No, it now fires them for you. In the unreleased changes since v1.1, a charting session spawns a `/research` subagent per research ticket and burns them down in parallel, capturing findings on a throwaway `research/<name>` branch with a [context pointer](https://www.aihero.dev/ai-coding-dictionary/context-pointer) from the ticket. Research tickets are the one exception to wayfinder's one-ticket-per-session rule, because they are [AFK](https://www.aihero.dev/ai-coding-dictionary/afk) — nothing waits on you. Two known snags with those branches: the subagent has been seen opening a draft PR from a branch that is never meant to merge ([issue #576](https://github.com/mattpocock/skills/issues/576)), and deleting the branch later breaks the context pointers the tickets hold.

## It's working if

- The exact question, decision, scope, versions/platforms, and stopping criterion appear before the findings.
- Exactly one owner produces one artifact at the configured durable location; no recursive delegation occurs.
- Every load-bearing claim names its authority, truth class, version/configuration scope, and verifiable citation.
- Documented support remains distinct from project-observed behavior, with the needed prototype/diagnosis evidence linked or left explicit.
- Restricted material is summarized safely, provenance/licensing constraints are recorded, and time-sensitive findings carry retention/review conditions.

## Where it fits

A reach-for-it-anytime standalone that feeds the thinking skills rather than sitting in the build chain. Its file is something to take *into* the flow: [grilling](https://aihero.dev/skills-grilling) and [grill-with-docs](https://aihero.dev/skills-grill-with-docs) ask sharper questions when the facts are already on the table, and [to-spec](https://aihero.dev/skills-to-spec) can synthesise against it. [wayfinder](https://aihero.dev/skills-wayfinder) is the one skill that invokes it directly, resolving each research ticket on its map with a `/research` subagent. For the whole map, see [ask-matt](https://aihero.dev/skills-ask-matt).
