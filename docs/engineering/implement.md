## What it does

`implement` builds one bounded piece of work that has already been decided. You point it at a [ticket](https://www.aihero.dev/ai-coding-dictionary/ticket), a [spec](https://www.aihero.dev/ai-coding-dictionary/spec), or the plan just agreed in the conversation. It confirms that the work is executable, chooses the tightest feedback loop that can observe the artifacts, reviews a pinned surface, reconciles acceptance evidence, and uses the project's configured closeout.

It does not reopen design. Its preflight is narrower: if ownership, affected artifacts, targets, budgets, or acceptance evidence are missing, it routes a precise blocker instead of inventing a production contract. That preserves upstream intent without treating an unsafe or untestable ticket as ready.

## When to reach for it

You invoke this by typing `/implement` — the agent won't reach for it on its own. It ships with `disable-model-invocation: true`, so no other skill can call it either. Wherever [ask-matt](https://aihero.dev/skills-ask-matt) or [to-tickets](https://aihero.dev/skills-to-tickets) says "then `/implement` per ticket", that is an instruction to you, not something the agent will do unprompted.

Where the work currently lives decides whether this is the right skill:

| The work is… | Reach for |
| --- | --- |
| A ticket on the tracker | `/implement #42`, one ticket per [session](https://www.aihero.dev/ai-coding-dictionary/session), [clearing](https://www.aihero.dev/ai-coding-dictionary/clearing) context between tickets |
| A spec, not yet split up, and the build spans sessions | [to-tickets](https://aihero.dev/skills-to-tickets) first, then `/implement` per ticket |
| A spec, and the build is small | `/implement` directly against the spec |
| Only in the conversation you just had, and it's still small | `/implement` right there, in the same window |
| Not written down anywhere yet | [grill-with-docs](https://aihero.dev/skills-grill-with-docs), or [grill-me](https://aihero.dev/skills-grill-me) if there's no codebase |
| One concrete behaviour you want test-first, with no spec | [tdd](https://aihero.dev/skills-tdd) directly |
| Already built, and you want it checked | [code-review](https://aihero.dev/skills-code-review) directly |

The same-session case is worth naming because the skill's own first line doesn't cover it. `SKILL.md` says "the spec or tickets", which nudges the [model](https://www.aihero.dev/ai-coding-dictionary/model) to go hunting for a file that doesn't exist. If the plan lives only in the thread, say so when you invoke it.

## Prerequisites

`implement` follows the project's source-control closeout: commit, changelist, shelf, pull request, or evidence-backed handoff. Confirm the intended branch/workspace/changelist and review surface before mutation.

If the tickets came from [to-tickets](https://aihero.dev/skills-to-tickets), the tracker they live on was configured by [setup-matt-pocock-skills](https://aihero.dev/skills-setup-matt-pocock-skills). `code-review` reads the same configuration to find the originating spec at close-out.

For game work, [setup-matt-pocock-skills](https://aihero.dev/skills-setup-matt-pocock-skills) should also have recorded engine, authority, target, ownership, budget, and evidence adapters in `docs/agents/game-development.md`.

## What one run does

A run is five beats, in order:

1. Confirm the work identity, outcome, artifacts, ownership, acceptance signals, and configured closeout. Missing execution facts become owner-routed blockers, not guesses.
2. Choose the tight loop: [tdd](https://aihero.dev/skills-tdd) for deterministic seams; engine/editor, play, profile, network, package, target, or human-review evidence where those are the material risks.
3. Mutate only owned artifacts and save only the intentional set, validating imports, references, serialization, and generated outputs where relevant.
4. Pin the actual work surface and run [code-review](https://aihero.dev/skills-code-review), plus owning-tool/specialist review for opaque or experiential artifacts.
5. Map every acceptance criterion to evidence, then close out only verified paths and update the work item to completed, ready-for-review, or blocked truthfully.

One run covers one ticket. The tickets [to-tickets](https://aihero.dev/skills-to-tickets) produces are tracer-bullet vertical slices sized to fit a single fresh [context window](https://www.aihero.dev/ai-coding-dictionary/context-window), so the intended rhythm is: clear context, implement one ticket, complete its configured checkpoint/handoff, clear again. Each ticket is self-contained, which is what makes the previous ticket's context disposable.

## Pre-agreed seams

For deterministic code, the skill still runs on the **seam**: the public boundary where behavior is observed without reaching inside. Game work adds other observation surfaces. Engine lifecycle, editor serialization, feel, visuals, audio, spatial composition, real-time budgets, networking, packaging, and target behavior need evidence that can actually execute or inspect them.

The word "pre-agreed" is doing real work, and it is also the skill's weakest joint. Nothing inside `implement` agrees the seams. `tdd` is the skill that asks, and it refuses to write a test at an unconfirmed seam. So in practice the agreement happens either upstream in the spec, or in the first exchange of the run. If it happens nowhere, the precondition never fires and the run quietly becomes "just write the code". Naming the seams in the spec is what stops that.

## Common questions

**When does it close the ticket?**

Only after it reconciles every acceptance criterion with observed evidence and resolves blocking review findings. If a human creative review, profiler run, target build, permission, or artifact owner is still outstanding, it records `ready for <gate>` or `blocked by <prerequisite>` rather than closing the ticket. This keeps dependency frontiers honest.

**Can I point it at all my tickets at once, or run several in parallel?**

No. One invocation, one ticket. Batch dispatch across a ticket queue and [subagent](https://www.aihero.dev/ai-coding-dictionary/subagent) fan-out are both requested repeatedly, and neither exists. Running several `/implement` sessions side by side in one checkout is worse than unsupported: one field report describes a `git commit --amend` in one session landing on another session's commit, a stash vanishing from `refs/stash`, and commits landing on the wrong branch, all in a single afternoon across three issues. The sessions share one working directory, one index, and one HEAD. Git worktrees are the community workaround, and note that `refs/stash` is shared across worktrees too, so worktrees alone do not fix the stash case. If you want parallelism today, you are assembling it yourself.

**Can it open a pull request instead of committing?**

Yes when that is the configured source-control closeout. The generic workflow no longer assumes Git or a current-branch commit: a commit, changelist, shelf, pull request, or evidence-backed handoff can be correct. It includes only verified paths and never submits solely to satisfy the workflow.

**`code-review` says it cannot see my changes.**

`code-review` now requires an explicit surface. Pin a committed comparison, staged changes, working tree, changelist, shelf, or equivalent and verify that the intended work is present before review. If the reviewer cannot see a material artifact, coverage is blocked rather than silently passing.

Separately, some people deliberately do not want the review inside the authoring context, because an agent reviewing the work it just produced is biased toward its own solution. Running [code-review](https://aihero.dev/skills-code-review) from a fresh session against the pinned surface is a legitimate alternative, and is the same reason that skill keeps its two axes in independent contexts.

**One ticket burned 150k tokens. Am I using it wrong?**

Probably the ticket is too big rather than the skill being misused. A run does codebase exploration, a red-green loop per seam, a full suite, and a review, so a non-trivial ticket exceeding 100k [tokens](https://www.aihero.dev/ai-coding-dictionary/token) is normal rather than a sign something broke. The lever is upstream: right-size the tickets in [to-tickets](https://aihero.dev/skills-to-tickets) so each fits one fresh window. If a single ticket keeps blowing out, split it rather than raising the [effort](https://www.aihero.dev/ai-coding-dictionary/effort) level.

**`/implement #2` in a fresh session worked on something completely unrelated.**

`#2` is resolved against whatever numbered list the agent can see, which in a fresh session may be a todo file, a checklist, or another work list rather than the configured tracker. The resolution is confident rather than fail-closed, so the mistake is not obvious until it has started. Pass the full reference, the issue URL or `owner/repo#2`, and ask it to confirm the title back before it begins.

## It's working if

- The session opens by reading the ticket or spec and restating what it will build, rather than asking you what to build.
- Deterministic behavior shows a real `/tdd` loop; other work uses the editor, play, profile, network, package, target, or review evidence its claim requires.
- Every non-mergeable artifact has one owner, and unrelated dirty/generated files stay out of the closeout.
- Review names its exact surface and reports coverage for every material artifact.
- The work item and completion language match the highest state actually demonstrated.
- The diff is one ticket's worth of change: a vertical slice through every layer, not several tickets swept together.

## Where it fits

`implement` is the build step of the main chain, second from the end:

```txt
grill-with-docs → to-spec → to-tickets → implement → code-review
```

Its neighbours are [to-tickets](https://aihero.dev/skills-to-tickets), which produces owner-bounded tickets and blocking edges; [tdd](https://aihero.dev/skills-tdd), which it drives for deterministic seams; [game-development](https://aihero.dev/skills-game-development), which selects authority, artifacts, and evidence for game work; and [code-review](https://aihero.dev/skills-code-review), which checks the pinned work surface and coverage. It trusts settled design while still validating execution safety.

That trust is why [wayfinder](https://aihero.dev/skills-wayfinder) merges onto the chain at [to-spec](https://aihero.dev/skills-to-spec) rather than looping its map straight into `implement`. Go straight to `implement` from a map only when the effort turned out genuinely small.

[ask-matt](https://aihero.dev/skills-ask-matt) is the router over the whole set when you are not sure which flow you are in.
