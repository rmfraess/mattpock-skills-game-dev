---
name: to-spec
description: Turn the current conversation into a spec and publish it to the project issue tracker — no interview, just synthesis of what you've already discussed.
disable-model-invocation: true
---

This skill takes the current conversation context and project understanding and produces a spec. Do NOT interview the user—synthesize what has already been decided. Open decisions remain explicit experiments, specialist questions, protected ambiguity, or blockers; never manufacture closure to fill the template.

The issue tracker and triage label vocabulary should have been provided to you — run `/setup-matt-pocock-skills` if not.

## Process

1. Explore the project if needed. Read the configured domain glossary and every authority material to the current milestone. Search the tracker for overlapping specs/tickets and check claimed mutable artifacts before publishing; reconcile duplication and ownership instead of creating a second execution surface.

2. For application work, sketch the stable seams where behavior will be tested. Prefer existing public seams and as few necessary seams as possible. For game work, load `/game-development` and map each claim to the lowest evidence layer that can prove it: deterministic tests, editor/engine integration, play/human review, performance capture, network/multi-instance, package/cook, and target execution remain distinct.

Check that the seams/evidence plan matches the decisions already made. This is a confirmation of synthesis, not a new design interview.

3. Write the smallest applicable spec using the template below. Omit sections that add no information; do not pad user stories. Publish it as a linked, non-executable parent. Do **not** apply a universal `ready-for-agent` state to the parent—use the configured ready-for-slicing/planning state or leave it non-executable until bounded child tickets exist.

<spec-template>

## Problem Statement

The problem that the user is facing, from the user's perspective.

## Solution

The solution to the problem, from the user's perspective.

## User Stories

A LONG, numbered list of user stories. Each user story should be in the format of:

1. As an <actor>, I want a <feature>, so that <benefit>

<user-story-example>
1. As a mobile bank customer, I want to see balance on my accounts, so that I can make better informed decisions about my spending
</user-story-example>

Cover the current milestone's material behavior without inventing breadth. For refactors, tools, pipelines, and game slices, concise outcome/scenario statements may replace forced user stories.

## Player Experience and Milestone (game work)

The intended player experience, strongest creative promise, representative playable slice, milestone boundary, and what is deliberately not being designed yet.

## Authority and Source Constraints (game work)

Separate canon/source facts, approved adaptations, gameplay abstractions, production constraints, and protected ambiguity. Name the deciding authority for unresolved conflicts.

## Representative Artifacts and Ownership (game work)

Name stable artifact identities when they are needed for ownership, locking, reproduction, or evidence—for example the representative map/scene or shared package. Avoid brittle source line references.

## Implementation Decisions

A list of implementation decisions that were made. This can include:

- The modules that will be built/modified
- The interfaces of those modules that will be modified
- Technical clarifications from the developer
- Architectural decisions
- Schema changes
- API contracts
- Specific interactions

Do NOT include specific file paths or code snippets. They may end up being outdated very quickly.

Exception: if a prototype produced a snippet that encodes a decision more precisely than prose can (state machine, reducer, schema, type shape), inline it within the relevant decision and note briefly that it came from a prototype. Trim to the decision-rich parts — not a working demo, just the important bits.

## Testing Decisions

A list of testing decisions that were made. Include:

- A description of what makes a good test (only test external behavior, not implementation details)
- Which modules will be tested
- Prior art for the tests (i.e. similar types of tests in the codebase)

For game work, replace a universal test list with an evidence matrix: claim, required layer, representative conditions, artifact/evidence, owner/reviewer, and what remains unproven.

## Open Resolution Paths

Experiments, specialist questions, human/creative reviews, or unavailable evidence that must close before affected downstream tickets become executable.

## Revision and Supersession

Identify this spec snapshot and how a failed playtest, changed source decision, or production finding will supersede affected decisions and invalidate dependent tickets without silently rewriting accepted history.

## Out of Scope

A description of the things that are out of scope for this spec.

## Further Notes

Any further notes about the feature.

</spec-template>
