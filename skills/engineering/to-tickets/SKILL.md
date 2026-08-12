---
name: to-tickets
description: Break a plan, spec, or the current conversation into a set of tracer-bullet tickets, each declaring its blocking edges, published to the configured tracker — edges as text in one file per ticket locally, or native blocking links on a real tracker.
disable-model-invocation: true
---

# To Tickets

Break a plan, spec, or conversation into a set of **tickets** — tracer-bullet vertical slices, each declaring the tickets that **block** it.

The issue tracker and triage label vocabulary should have been provided to you — run `/setup-matt-pocock-skills` if not.

## Process

### 1. Gather context

Work from whatever is already in the conversation context. If the user passes a reference (a spec path, an issue number or URL) as an argument, fetch it and read its full body and comments.

If the work is game development, load `/game-development`. Carry forward player-facing outcome, authority/source constraints, protected ambiguity, representative conditions, evidence layers, artifact identity, and ownership. Unresolved experiments or specialist questions are blockers, not values for the ticket author to invent.

### 2. Explore the codebase (optional)

If you have not already explored the project, inspect every material surface—not only source text. Ticket titles/descriptions use the project's qualified domain vocabulary and respect the authority that owns each claim.

Look for opportunities to prefactor the code to make the implementation easier. "Make the change easy, then make the easy change."

### 3. Draft vertical slices

Break the work into **tracer bullet** tickets.

<vertical-slice-rules>

- For one-owner application work, each slice cuts a narrow but complete path through every material layer (schema, API, UI, tests)—vertical, not a horizontal slice
- For cross-disciplinary game work, preserve one player-visible **playable tracer** as the integration spine, but split runtime, world, technical-art/content, and integration work into owner-bounded tickets with explicit handoffs
- A completed ticket is independently verifiable by evidence it owns, or explicitly blocks an integration gate that owns the cross-disciplinary claim
- Each slice is sized to fit in a single fresh context window
- Any prefactoring should be done first
- A ticket identifies its owner/reviewer, mutable artifacts, readiness mode, required evidence, source/canon constraints, and what it cannot prove

</vertical-slice-rules>

Give each ticket its **blocking edges** — the other tickets that must complete before it can start. A ticket with no blockers can start immediately.

Add conflict edges for shared non-mergeable artifacts even when the logic is independent. Two tickets that require the same map/scene, Blueprint/visual script, material, data asset, source asset, project settings, or shared glossary/decision file cannot enter the parallel frontier without explicit checkout/lock and handoff.

**Wide refactors are the exception to vertical slicing.** A **wide refactor** is one mechanical change — rename a column, retype a shared symbol — whose **blast radius** fans across the whole codebase, so a single edit breaks thousands of call sites at once and no vertical slice can land green. Don't force it into a tracer bullet; sequence it as **expand–contract**. First expand: add the new form beside the old so nothing breaks. Then migrate the call sites over in batches sized by blast radius (per package, per directory), each batch its own ticket blocked by the expand, keeping CI green batch to batch because the old form still exists. Finally contract: delete the old form once no caller remains, in a ticket blocked by every migrate batch. When even the batches can't stay green alone, keep the sequence but let them share an integration branch that all block a final integrate-and-verify ticket — green is promised only there.

Editor/content migrations need a project-native migration sequence rather than source-only expand–contract: establish recovery and exclusive ownership; inventory referencers/dependencies; perform reparent/move/rename through the owning tool; fix redirectors/imports/references; verify the intentional save set; then run editor load, runtime, cook/package/build, and target evidence that is material.

### 4. Quiz the user

Present the proposed breakdown as a numbered list. For each ticket, show:

- **Title**: short descriptive name
- **Blocked by**: which other tickets (if any) must complete first
- **What it delivers**: the end-to-end behaviour this ticket makes work
- **Owner and review authority**: autonomous worker, named specialist, human/creative gate, or integration owner
- **Artifacts and evidence**: mutable artifacts, locks/handoffs, representative conditions, and the proof this ticket owns

Ask the user:

- Does the granularity feel right? (too coarse / too fine)
- Are the blocking edges correct — does each ticket only depend on tickets that genuinely gate it?
- Should any tickets be merged or split further?

Iterate until the user approves the breakdown.

### 5. Publish the tickets to the configured tracker

Publish the approved tickets. **How** depends on the tracker `/setup-matt-pocock-skills` configured — the tickets are the same either way, only the shape of the blocking edges changes:

- **Local files** → write one file per ticket under `.scratch/<feature-slug>/issues/<NN>-<slug>.md`, numbered from `01` in dependency order (blockers first). Each file's "Blocked by" lists the numbers/titles it depends on. Use the per-ticket file template below — one ticket per file, never a single combined file.
- **A real issue tracker (GitHub, Linear, …)** → publish one issue per ticket in dependency order (blockers first) so each ticket's blocking edges can reference real identifiers. Use native blocking/sub-issue relationships where available; otherwise set "Blocked by" explicitly. Apply the configured readiness/routing state: autonomous-ready only when unblocked and safely delegable; specialist, HITL/creative, deferred, blocked, and awaiting-verification work stay distinct.

Work the **frontier**: any ticket whose blockers are all done. For a purely linear chain that means top to bottom.

Do NOT close or make the parent spec executable. Link bounded children to it and keep unresolved parent-level gates visible.

<local-ticket-template>

# <NN> — <Ticket title>

**What to build:** the end-to-end behaviour this ticket makes work, from the user's perspective — not a layer-by-layer implementation list.

**Blocked by:** the numbers/titles of the tickets that gate this one, or "None — can start immediately".

**Status:** <configured readiness: autonomous-ready / specialist / HITL / blocked / deferred / awaiting-verification>

**Owner / reviewer:** <who performs the work; who accepts the evidence>

**Artifacts / lock:** <stable identities and concurrency rule, or none>

**Evidence:** <necessary proof this ticket owns; representative conditions>

- [ ] Acceptance criterion 1
- [ ] Acceptance criterion 2

</local-ticket-template>

<issue-template>

## Parent

A reference to the parent issue on the tracker (if the source was an existing issue, otherwise omit this section).

## What to build

The end-to-end behaviour this ticket makes work, from the user's perspective — not layer-by-layer implementation.

## Owner, readiness, and handoff

Who owns implementation, who reviews it, whether it is autonomous/specialist/HITL/integration work, and the evidence-backed handoff expected.

## Artifacts and concurrency

Stable identities of mutable/shared artifacts, required locks/claims/recovery, and incompatible tickets.

## Acceptance criteria

- [ ] Criterion 1
- [ ] Criterion 2

Each criterion names an observation that can fail at this ticket's baseline and is provable by this ticket or its explicit integration gate. Creative, performance, network, package, and target claims name representative evidence and authority.

## Blocked by

- A reference to each blocking ticket, or "None — can start immediately".

</issue-template>

In either form, avoid specific file paths or code snippets — they go stale fast. Exception: if a prototype produced a snippet that encodes a decision more precisely than prose can (state machine, reducer, schema, type shape), inline it and note briefly that it came from a prototype. Trim to the decision-rich parts — not a working demo, just the important bits.
