## What it does

`to-spec` turns the settled conversation into a concise, revisioned [spec](https://www.aihero.dev/ai-coding-dictionary/spec) and publishes it as a linked, **non-executable parent**. Open experiments, specialist questions, protected ambiguity, and unavailable evidence stay open instead of being filled with invented decisions.

It does not interview you. By the time you reach for it the deciding is already done, so it synthesises what is known — from the thread, from the codebase, from your `CONTEXT.md` and ADRs — rather than opening a fresh round of questions. The spec is a record of decisions already made, not a place where new ones get made.

## When to reach for it

You invoke this by typing `/to-spec` — the [agent](https://www.aihero.dev/ai-coding-dictionary/agent) won't reach for it on its own.

Reach for it when the build is too big for one agent [session](https://www.aihero.dev/ai-coding-dictionary/session) and has to survive being split across several. That is the whole trigger:

| Where you are | What to run |
| --- | --- |
| You haven't decided anything yet | [grill-with-docs](https://aihero.dev/skills-grill-with-docs) first |
| Decided, and the work fits one [context window](https://www.aihero.dev/ai-coding-dictionary/context-window) | [implement](https://aihero.dev/skills-implement) — skip the spec |
| Decided, and the work spans several sessions | `/to-spec`, then [to-tickets](https://aihero.dev/skills-to-tickets) |
| A [wayfinder](https://aihero.dev/skills-wayfinder) map has cleared | `/to-spec #<map_issue>` |

## Prerequisites

`to-spec` needs the configured tracker and label vocabulary. Before publishing it searches for overlapping specs/tickets and checks claims on shared mutable artifacts. Game projects also need the configured authority, source/canon, representative slice, ownership, budget, and evidence adapters.

## The spec is a decision record

The spec exists because context windows end. Everything you settled while [grilling](https://www.aihero.dev/ai-coding-dictionary/grilling) — the shape of the solution, the choices you argued through, what you deliberately refused — is in one conversation that is about to be cleared. The spec is what survives that.

It does not decide anything new. It does verify that the synthesis has not duplicated active work, erased open resolution paths, or assigned a claim to evidence that cannot prove it. Anything the spec asserts that you never decided or observed is a defect.

## Evidence interfaces before prose

For application work, `to-spec` still sketches stable public seams and prefers existing ones. For game work, it maps claims to necessary evidence layers: deterministic contracts, editor/engine integration, representative play/human review, profile captures, network scenarios, cook/package/build, and target execution. One unit seam cannot certify all of them.

Those agreed seams then travel. [tdd](https://aihero.dev/skills-tdd) works only at pre-agreed seams, and [code-review](https://aihero.dev/skills-code-review) reviews the diff against the spec, so a seam nobody agreed to shows up as a review finding. The binding is indirect — it runs through this document — which is exactly why the seam conversation is worth taking seriously here rather than deferring it to implementation.

## Common questions

**Where did `/to-prd` go?**
It is this skill, renamed in v1.1. "Spec" is now the single through-line term, and the old `to-prd` slug is dead — reinstall under the new name. The pair that replaced the old vocabulary is *spec* and *tickets*: the spec is the destination and the decisions that fix it, the [tickets](https://www.aihero.dev/ai-coding-dictionary/ticket) are the execution steps that get there. If you pivot, delete the unfinished tickets and keep the spec.

**Why is the parent spec not `ready-for-agent`?**
Because a polling worker cannot distinguish “complete input” from “execute this whole multi-session build.” The parent uses the configured ready-for-slicing/planning state or remains non-executable. Only bounded child tickets enter an implementation frontier.

**Why not go straight from grilling to `/to-tickets` and skip the spec?**
Often you should — the spec earns its step only on multi-session work. Where it pays is that the tickets are disposable and the spec isn't: each ticket is sized for one fresh context window and gets deleted or closed, while the spec stays as the one place the reasoning behind them lives. On a single-session change that buys you nothing, and you have paid an extra synthesis step where the [model](https://www.aihero.dev/ai-coding-dictionary/model) can drift. Go grilling → `/implement`.

**I just finished a wayfinder map. What do I feed it?**
The main map issue — `/to-spec #<map_issue>`, not the individual decision tickets. [wayfinder](https://aihero.dev/skills-wayfinder) produces decisions rather than deliverables, scattered across a map; `to-spec` is the step that collapses them into one buildable document. Looping the map straight into `/implement` throws that collapse away.

**Is the spec for me to review, or is it just for the agent?**
Mostly for the agent, and it reads that way — complete, dense, reference-heavy. The parts worth your eyes are the seams and the out-of-scope section, because those are the two places a wrong decision is cheapest to catch and most expensive to discover later. Reading the whole thing end to end is a real complaint people have, and there is no summary mode: the honest answer is that if the spec surprises you, the grilling was too shallow, not the spec too long.

**Do I keep the spec frozen once tickets start, or let the agent rewrite it?**
Treat it as an identified snapshot. A failed playtest, changed source decision, or production finding supersedes the affected snapshot and invalidates dependent tickets explicitly; it does not silently rewrite accepted history. Durable terms and decisions still belong in their authoritative glossary, ADR, or creative record rather than accumulating in the spec.

**My work is a refactor, module boundary, pipeline, or playable slice. Does the template fit?**
Use only informative sections. Concise outcome/scenario statements can replace forced user stories. Game specs add player experience/milestone, authority/source constraints, representative artifacts/ownership, evidence matrix, open resolution paths, and revision/supersession; they do not pad an exhaustive feature inventory.

**Will it check the tracker for related work and active artifact claims?**
Yes. It searches for overlapping specs/tickets and claimed mutable artifacts before publication, then reconciles duplication and ownership. It also points to the authority records that constrain the milestone instead of copying their full contents.

**`/to-tickets` couldn't read my spec — it kept truncating.**
Very large specs can outgrow what a tracker issue will serve back cleanly, and there is no local copy to fall back on. The fix is context hygiene: don't [clear](https://www.aihero.dev/ai-coding-dictionary/clearing) or [compact](https://www.aihero.dev/ai-coding-dictionary/compaction) between `/to-spec` and `/to-tickets`. Run them in the same window and the spec never has to be re-fetched at all.

## It's working if

- It starts writing rather than asking you a fresh round of questions.
- It confirms stable seams or the claim-specific evidence plan before it writes.
- It comes back in your project's nouns, not generic product-management boilerplate.
- Every decision in it is one you can remember making. Nothing was invented to fill a section.
- The out-of-scope section has real things in it — the things you refused are usually the most useful lines on the page.
- The parent is non-executable, overlap/ownership is reconciled, and downstream work can identify which snapshot it implements.

## Where it fits

`to-spec` is a step in the main build chain, and only on the multi-session branch of it:

```txt
grill-with-docs → to-spec → to-tickets → implement → code-review
```

Its neighbours upstream are [grill-with-docs](https://aihero.dev/skills-grill-with-docs), which does the deciding this skill only records, and [wayfinder](https://aihero.dev/skills-wayfinder), whose finished map merges onto the chain right here. Downstream, [to-tickets](https://aihero.dev/skills-to-tickets) cuts the spec into tracer-bullet tickets for [implement](https://aihero.dev/skills-implement) to build. When you're unsure which skill or flow fits, [ask-matt](https://aihero.dev/skills-ask-matt) routes you.
