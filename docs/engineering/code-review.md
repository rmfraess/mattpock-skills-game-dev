## What it does

`code-review` reviews an explicitly pinned work surface—a committed comparison, staged or working changes, pull request, changelist, shelf, or equivalent—along two independent axes. **Standards** asks whether each reviewable artifact follows applicable project practice. **Spec** asks whether the demonstrated work does what the originating issue or [spec](https://www.aihero.dev/ai-coding-dictionary/spec) asked for. An **Artifact coverage** table makes everything the text reviews could not inspect visible.

The two axes are never merged or re-ranked. Independent reviewers run through the active runtime adapter, their findings are re-verified, and coverage records each material artifact as reviewed, blocked, or not reviewable in the pass. A change cannot receive a whole-surface pass while material coverage is missing.

## When to reach for it

Type `/code-review`, or the agent reaches for it automatically when you ask to review a branch, a PR, work in progress, or anything "since X".

| Your situation | Reach for |
| --- | --- |
| A reviewable source-control surface exists and you want to know if it is built right *and* is the right thing | `code-review` |
| Mixed source, editor packages, content, profiles, builds, or target evidence | `code-review` for axes and coverage, plus owning-tool/specialist review |
| You want bugs hunted in the diff — null paths, races, off-by-one | Claude Code's own built-in review, not this one (see the name clash below) |
| Nothing is written yet and you want it written test-first | [tdd](https://aihero.dev/skills-tdd) |
| A whole spec needs building, review included | [implement](https://aihero.dev/skills-implement), which calls this skill itself |
| The whole codebase has drifted, not one diff | [improve-codebase-architecture](https://aihero.dev/skills-improve-codebase-architecture) |
| Something is broken and you do not know why | [diagnosing-bugs](https://aihero.dev/skills-diagnosing-bugs) |

You must identify the intended surface. For Git branch review that includes a fixed point; work-in-progress review must explicitly name staged and/or working changes. The skill verifies the intended work is present before dispatch, so a bad ref, empty surface, or wrong changelist fails early.

## Prerequisites

The Standards axis reads the guidance applicable to changed artifacts: code/framework conventions and, where relevant, engine lifecycle/serialization, content, naming/folder/import, accessibility/localization, platform, and performance rules. Canonical framework patterns override generic smells.

The Spec axis needs a spec to exist and be findable. It looks in this order:

1. Issue references in the commit messages (`#123`, `Closes #45`, a GitLab `!67`), fetched through `docs/agents/issue-tracker.md`.
2. A path you pass in as an argument.
3. A spec file under `docs/`, `specs/`, or `.scratch/` matching the branch or feature name.
4. Asking you.

Spec discovery through commit/work-item references depends on `docs/agents/issue-tracker.md`, which [setup-matt-pocock-skills](https://aihero.dev/skills-setup-matt-pocock-skills) writes. Without it the axis still works if you hand it a path. With no spec at all, the Spec reviewer is skipped and the report says "no spec available" rather than inventing requirements.

## The two axes

| | Standards | Spec |
| --- | --- | --- |
| Question | Is it built right? | Is it the right thing? |
| Reads | Applicable project/framework standards, artifact evidence, plus the smell baseline | The originating issue/spec plus acceptance evidence |
| Reports | Documented breaches (can be hard), and smells (always judgement calls) | Missing/partial requirements, scope creep, unsupported or wrong claims |
| Every finding cites | The standards source and artifact/hunk | The spec line and artifact/evidence inspected |

A generic review skill that does not know your standards is the thing this design is trying to avoid — it flags what is deliberate in your codebase and misses the invariants your codebase actually depends on. So the repo's own documentation is the [primary source](https://www.aihero.dev/ai-coding-dictionary/primary-source) on the Standards axis, and **the repo always overrides**.

The **smell baseline** remains a floor for mergeable source, not a law above engine contracts. Reflection, serialization, generated code, canonical lifecycle/inheritance, components, and data-oriented patterns are evaluated against their framework and project authority before a generic refactor is proposed.

Artifact coverage is not a third opinion axis. It is the inventory that prevents a binary path, screenshot, test result, or profiler claim from disappearing between Standards and Spec. Each row names the owner, review method, evidence inspected, and status.

## Common questions

**It collides with Claude Code's own `/code-review`. What do I do?**

This is the most reported problem with the skill, and it is not fixed. Claude Code ships its own `/code-review`, which does something different — it hunts bugs in the diff, where this one checks spec compliance and repo standards. Installing this library means one of them wins, and which one wins depends on how you installed. Via the plugin marketplace, everything is aliased under a `mattpocock-skills:` prefix and the built-in becomes hard to reach at the unqualified name; via a plain skills install, the local file wins and this skill shadows the built-in. One clean answer is to remove Claude Code's built-in skills entirely: a large [context](https://www.aihero.dev/ai-coding-dictionary/context) saving, and the collision stops mattering. The shadowing itself is arguably a Claude Code [harness](https://www.aihero.dev/ai-coding-dictionary/harness) bug — a skill author should be free to name a skill anything — so the other answer is to rename the local copy. Editing the frontmatter or renaming the directory gets undone by `npx skills update`; the durable workaround reported by users is to fork the skill to a new name and drop `code-review` from the managed set, keeping a note of the commit you forked from so you can re-sync by hand.

**Can the independent reviewers recursively invoke this skill?**

No. Both reviewer briefs now prohibit invoking `/code-review` or delegating again. The runtime adapter can use top-level sessions, a durable queue, subagents, or direct sequential contexts, but it must preserve independence, inspectability, and exactly one owner per review.

**Should I run it in the same [session](https://www.aihero.dev/ai-coding-dictionary/session) that wrote the code?**

Prefer a fresh one. As one reader put it: "Same context reviewing itself isn't review, it's confirmation bias with a slash command." The reviewing agent in the authoring session holds every assumption that shaped the code, which is exactly the context an independent reviewer would not have. This is also why people ask for [implement](https://aihero.dev/skills-implement) without its built-in review step — it runs the review inside the session that just wrote the diff. Invoking `/code-review` yourself from a clean session is the honest version.

**After every ticket, or once at the end?**

Both work, and the skill does not decide for you. Per-ticket keeps each diff small enough that the Spec axis has one clear spec to check against, which is the mode `implement` uses. Batching to the end of a branch catches interactions between tickets that the per-ticket passes each miss. If you are unsure, review per ticket and run one final pass against the branch point.

**Can I trust the findings?**

Reviewer output remains a hypothesis, but the aggregator now re-verifies every finding against its cited source and selected artifact before reporting it. You should still inspect high-impact citations; an experiential, performance, network, package, or target claim is only as strong as the evidence included in the pinned surface.

**Why does it find new problems every single time I run it?**

Because fixes create new surface, and because the judgement-call half of the Standards axis is not deterministic between runs. One reader described the loop plainly: "/code-review and /improve-code-architecture always find new stuff every time. I implement fixes, rerun these skills, and again and again." There is no convergence guarantee. Treat a pass as a list of leads, act on the ones with a cited rule behind them, and stop — do not run it in a loop until it comes back clean, because it will not.

**Does it review my uncommitted work?**

Yes, when you explicitly select staged changes, the working tree, or both. The skill records `git diff --cached`, `git diff`, and `git status --short` only for that requested surface. It never silently folds unrelated dirty work into a branch review.

## It's working if

- It refuses to start on a bad identity, empty surface, or mismatch between requested and observed work before reviewers run.
- The report arrives as separate `## Standards`, `## Spec`, and `## Artifact coverage` blocks.
- Every Standards finding names either a rule in one of your repo's files or one of the twelve smells, with the hunk quoted; every Spec finding quotes a line of the spec.
- The closing summary gives a worst issue per axis and declines to pick an overall winner.
- With no spec available, the Spec block says so instead of listing requirements it inferred from the code.
- Every material artifact has an owner, review method, evidence, and honest coverage status; uncovered material prevents a whole-change pass.

## Where it fits

`code-review` is the review step at the tail of the build chain — `grill-with-docs → to-spec → to-tickets → implement → code-review` — and also stands alone on any branch or PR you point it at.

- [implement](https://aihero.dev/skills-implement) is the closest neighbour: it drives the build and calls this skill as its own closing review before committing.
- [to-spec](https://aihero.dev/skills-to-spec) and [to-tickets](https://aihero.dev/skills-to-tickets) produce the document the Spec axis checks against; a vague spec makes that axis vague.
- [improve-codebase-architecture](https://aihero.dev/skills-improve-codebase-architecture) is the whole-codebase counterpart — this skill only ever looks at one diff.

[ask-matt](https://aihero.dev/skills-ask-matt) routes across the whole set when you are unsure which skill the situation wants.
