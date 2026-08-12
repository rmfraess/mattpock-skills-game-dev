# Engineering

Skills I use daily for software and game work.

## User-invoked

Reachable only when you type them (Claude Code: `disable-model-invocation: true`; Codex: `policy.allow_implicit_invocation: false` in `agents/openai.yaml`).

- **[ask-matt](./ask-matt/SKILL.md)** — Ask which skill or flow fits your situation. A router over the user-invoked skills in this repo.
- **[grill-with-docs](./grill-with-docs/SKILL.md)** — Grilling session that also builds your project's domain model, sharpening terminology and updating `CONTEXT.md` and ADRs inline.
- **[triage](./triage/SKILL.md)** — Move issues through a state machine of triage roles.
- **[improve-codebase-architecture](./improve-codebase-architecture/SKILL.md)** — Survey code and material production surfaces for justified deepening opportunities, present an offline visual report, then grill through a chosen candidate—or recommend no change.
- **[setup-matt-pocock-skills](./setup-matt-pocock-skills/SKILL.md)** — Configure the project's tracker, instruction entry point, domain docs, and game-development profile when relevant. Run once per project.
- **[to-spec](./to-spec/SKILL.md)** — Turn the current conversation into a spec and publish it to the issue tracker.
- **[to-tickets](./to-tickets/SKILL.md)** — Break any plan, spec, or conversation into a set of tracer-bullet tickets, each declaring its blocking edges — text in a local file, or native blocking links on a real tracker.
- **[implement](./implement/SKILL.md)** — Build one bounded work item with the tight loop, artifact ownership, review surface, and evidence needed for its actual acceptance claims.
- **[wayfinder](./wayfinder/SKILL.md)** — Plan a huge chunk of work — more than one agent session can hold — as a shared map of decision tickets on the issue tracker, resolved one at a time until the way to the destination is clear.

## Model-invoked

Model- or user-reachable (rich trigger phrasing so the model can reach for them).

- **[game-development](./game-development/SKILL.md)** — Shared discipline for game work: player/source authority, mutable artifacts, ownership, credible slices, and claim-appropriate evidence.
- **[prototype](./prototype/SKILL.md)** — Build the smallest throwaway experiment that can answer one design question: an HTML logic/UI study when credible, or an engine-native slice when runtime behavior matters.

- **[diagnosing-bugs](./diagnosing-bugs/SKILL.md)** — Disciplined diagnosis loop for hard bugs and performance regressions: build a feedback loop that goes red on this bug → minimise → hypothesise → instrument → fix → regression-test.
- **[research](./research/SKILL.md)** — Investigate a bounded question against claim-appropriate authority, separate documented from observed truth, and retain cited findings intentionally.
- **[tdd](./tdd/SKILL.md)** — Red-green-refactor for deterministic behavior at stable seams, with the minimal engine/content/runtime evidence needed for integration claims.
- **[domain-modeling](./domain-modeling/SKILL.md)** — Actively build and sharpen a project's domain model — challenge terms, stress-test with scenarios, update `CONTEXT.md` and ADRs inline.
- **[codebase-design](./codebase-design/SKILL.md)** — Deep-module vocabulary that preserves native framework/engine contracts, supports distinct interfaces, and separates test seams from other evidence.
- **[code-review](./code-review/SKILL.md)** — Independent Standards and Spec review of a fixed work surface, plus explicit coverage for source, content, opaque, and evidence artifacts.
- **[resolving-merge-conflicts](./resolving-merge-conflicts/SKILL.md)** — Resolve merge or rebase conflicts by intent, with recovery and owning-tool gates for generated, serialized, or opaque artifacts; abort/restart when forcing completion is unsafe.
- **[wizard](./wizard/SKILL.md)** — Generate an interactive bash wizard that walks a human through steps only they can perform: provisioning infrastructure, setting up credentials or CI secrets, walking an unfamiliar third-party dashboard, or running a one-off migration or cutover.
