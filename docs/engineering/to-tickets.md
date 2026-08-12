## What it does

`to-tickets` takes a plan, a [spec](https://www.aihero.dev/ai-coding-dictionary/spec), or the conversation you are in, and breaks it into a set of **[tickets](https://www.aihero.dev/ai-coding-dictionary/ticket)** on your issue tracker. Each ticket declares its **blocking edges** — the other tickets that have to finish before it can start.

For one-owner application work, every ticket remains a vertical tracer bullet through all material layers. Cross-disciplinary game work preserves one **playable tracer** as the integration spine while splitting runtime, world, technical-art/content, and integration work into owner-bounded tickets. Each ticket owns evidence it can actually produce, names its reviewer and mutable artifacts, and hands off explicitly.

## When to reach for it

You invoke this by typing `/to-tickets` — the [agent](https://www.aihero.dev/ai-coding-dictionary/agent) won't reach for it on its own.

| Where you are | What to run |
| --- | --- |
| You have a spec issue and the build spans several sessions | `/to-tickets`, or `/to-tickets #<spec_issue>` |
| The plan is only in the conversation, never written up | `/to-tickets` reads the thread directly — no spec needed |
| The whole change fits in one context window | [implement](https://aihero.dev/skills-implement) — skip the tickets |
| Nothing is decided yet | [grill-with-docs](https://aihero.dev/skills-grill-with-docs), then [to-spec](https://aihero.dev/skills-to-spec) |
| A [wayfinder](https://aihero.dev/skills-wayfinder) map has cleared | [to-spec](https://aihero.dev/skills-to-spec) first, to collapse the map, then `/to-tickets` |

Tickets that `to-tickets` produced are already classified for their configured route and gate, so do not run [triage](https://aihero.dev/skills-triage) over them. Only unblocked autonomous tickets are agent-ready; specialist, HITL/creative, blocked, deferred, integration, and awaiting-verification tickets retain those states.

## Prerequisites

`to-tickets` needs the configured tracker, routing/readiness vocabulary, and ownership/evidence adapters. For game work it reads [game-development](https://aihero.dev/skills-game-development) so source constraints, protected ambiguity, representative conditions, shared artifacts, and open experiments survive the split.

## Tracer bullets, not layers

A **horizontal** slice ships one layer of the change. Nothing works until every layer has landed, and each ticket's acceptance criteria have to reach into work that another ticket owns. A **vertical** slice — the tracer bullet — ships one thin path through all the layers at once, so it is verifiable alone and owns everything it grades.

Owner boundaries are not the same as horizontal product slicing. A runtime ticket and a world/content ticket can be separately owned while both block a representative integration/play gate. What matters is that no ticket claims an outcome another owner or later evidence must supply.

Two things happen before anything is published. `to-tickets` looks for prefactoring — "make the change easy, then make the easy change" — and orders that work first. Then it presents the breakdown as a numbered list and quizzes you on it: is the granularity right, are the blocking edges real, should anything merge or split. Nothing reaches the tracker until you approve, and that quiz is the place to push back.

## Blocking edges

The edges are the point of the artifact. They read two ways depending on the tracker:

| Tracker | Where the edges live | How you work them |
| --- | --- | --- |
| Local markdown | Text in one file per ticket under `.scratch/<feature>/issues/<NN>-<slug>.md`, numbered blockers-first | Top to bottom, by hand |
| A real tracker (GitHub, Linear) | Native blocking links, or sub-issues where the tracker has them | Any ticket whose blockers are done is on the **frontier** and can be grabbed |

Edges include both logical prerequisites and mutable-artifact conflicts. Tickets that touch the same map/scene, Blueprint/visual script, material, data/source asset, project settings, or shared decision file cannot occupy the parallel frontier without explicit lock/claim and handoff.

## The wide-refactor exception

One shape breaks the tracer-bullet rule. A **wide refactor** is a single mechanical change — rename a column, retype a shared symbol — whose **blast radius** fans across the whole codebase, so one edit breaks thousands of call sites and no vertical slice can land green.

`to-tickets` sequences that as **expand–contract** instead:

- **Expand** — add the new form beside the old, so nothing breaks.
- **Migrate** — move call sites over in batches sized by blast radius (per package, per directory), one ticket per batch, each blocked by the expand. CI stays green because the old form still exists.
- **Contract** — delete the old form once no caller remains, in a ticket blocked by every migrate batch.

Where even the batches can't stay green alone, they share an integration branch and all block a final integrate-and-verify ticket. Green is promised only there.

Editor/content migrations use the owning tool: recovery and exclusive ownership, referencer/dependency inventory, native move/reparent/rename, redirector/import/reference repair, intentional save-set review, then editor load, runtime, cook/package/build, and target validation as material.

## Common questions

**It produced twelve tickets for a three-line change.**
Over-decomposition is the most reported friction on this skill, and it is consistent across practitioners: the [model](https://www.aihero.dev/ai-coding-dictionary/model) defaults to atomic units and loses the grouping that would make them meaningful. The quiz step exists for exactly this — ask it to merge, and it will. The deeper answer is that the tickets have a floor: if the whole change fits in one context window, you don't need this skill at all. Go straight to [implement](https://aihero.dev/skills-implement).

**The tickets came out one per layer — all the schema in one, all the API in another.**
This is the failure the vertical-slice rule is written against, and the skill still produces it sometimes. Catch it at the quiz step by asking one question per ticket: what can I demo when this is done? A ticket with no answer is a horizontal slice. Some people add a "demo path" line to each ticket for this reason, and report it nudges the model toward vertical decomposition.

**On GitHub the tickets weren't created as sub-issues of the spec issue.**
Known and unfixed. It has been reported across a dozen runs and several models, [most fully in issue #554](https://github.com/mattpocock/skills/issues/554), and it is worse on Codex than on Claude. `gh` has supported this natively since v2.94: `gh issue create --parent <n>`, and `gh issue edit <parent> --add-sub-issue <n>` after the fact. Until the tracker template prefers those, wiring the parent links yourself after a run is the reliable move.

**"Blocked by" was written into the issue body instead of a real blocking link.**
Same class of problem, [reported in issue #513](https://github.com/mattpocock/skills/issues/513), where the agent went as far as asserting GitHub has no native blocking relationship at all. It does — `gh issue create --blocked-by 12,15`. Because blockers are published first, their numbers are always available at creation time. The body text is meant to be the fallback for trackers with no native edge, not the default.

**Where do the local tickets go? The v1.1 notes said a root-level `tickets.md`.**
They did, and that was a bug — a single shared file also raced when parallel agents wrote to it. Local mode now writes one file per ticket under `.scratch/<feature-slug>/issues/<NN>-<slug>.md`, in dependency order, matching the layout the local tracker template already described. The `NN` prefix is a real ticket ID, so `/implement 03` works instead of retyping a long title.

**It kept truncating when it tried to read my spec.**
A very large spec can outgrow what a tracker issue serves back cleanly, and there is no local copy to fall back on — the agent then burns [tool calls](https://www.aihero.dev/ai-coding-dictionary/tool-call) re-fetching chunks and never reaches the end. Don't [clear](https://www.aihero.dev/ai-coding-dictionary/clearing) or [compact](https://www.aihero.dev/ai-coding-dictionary/compaction) between `/to-spec` and `/to-tickets`. Run them in the same context window and the spec never has to be fetched back at all.

**The acceptance criteria graded nothing—some passed before any work was done.**
Reject them during the quiz. Every criterion names an observation that can fail at the ticket baseline and evidence this ticket owns, or explicitly belongs to its integration gate. Feel, visual/audio, performance, network, package, and target claims name representative conditions and accepting authority.

**The tickets are published. How do I actually run them?**
Use the configured durable session/worker/queue adapter. Start only frontier tickets whose logical blockers and artifact conflicts are clear, and route each to its named owner. [implement](https://aihero.dev/skills-implement) reconciles acceptance evidence and updates the work item to completed, ready-for-review, or blocked; creative/specialist/integration gates remain with their named authority.

## It's working if

- The set has a player/user-visible tracer; each ticket has an independently verifiable owner-bounded outcome or explicitly feeds its integration gate.
- The list comes back to you numbered, with a "Blocked by" line on each, before anything is published.
- The ticket at the top has no blockers and can be started immediately.
- Exact shared artifact identities appear only where ownership, locking, reproduction, or evidence needs them; incidental source paths/line numbers do not.
- Each ticket reads like something a fresh session could finish without you in the room.
- Prefactoring, where it found any, is at the front of the order rather than mixed into feature tickets.
- Autonomous, specialist, HITL/creative, blocked, deferred, and awaiting-verification states remain distinct, and the parent spec never enters the execution frontier.

## Where it fits

`to-tickets` is a step in the main build chain:

```txt
grill-with-docs → to-spec → to-tickets → implement → code-review
```

Upstream is [to-spec](https://aihero.dev/skills-to-spec), which hands it a settled spec to slice against — keep both in one unbroken context window. Downstream is [implement](https://aihero.dev/skills-implement), which builds one ticket per fresh session, driving [tdd](https://aihero.dev/skills-tdd) for the tests and closing with [code-review](https://aihero.dev/skills-code-review). When you're unsure which skill or flow fits, [ask-matt](https://aihero.dev/skills-ask-matt) routes you.
