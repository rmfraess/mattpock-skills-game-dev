---
name: code-review
description: Review a branch, PR, changelist, shelf, or work-in-progress surface along Standards and Spec axes, with explicit artifact coverage. Use for "review since X" or mixed code/content changes.
---

Two-axis review of an explicitly pinned work surface:

- **Standards** — does each reviewable artifact conform to the project's applicable standards?
- **Spec** — does the demonstrated work faithfully implement the originating issue/spec?

Run the axes in independent contexts through the active runtime's approved worker/session adapter so they do not pollute each other. Add an **Artifact coverage** report; two text reviews cannot cover artifacts or claims their evidence cannot inspect.

The issue tracker should have been provided to you — run `/setup-matt-pocock-skills` if `docs/agents/issue-tracker.md` is missing.

## Process

### 1. Pin the review surface

Record exactly what the user wants reviewed: committed comparison, staged changes, working tree, pull request, changelist, shelf, or another project-native checkpoint. If ambiguous, ask. Verify the intended work is present before dispatch.

For a Git committed comparison, capture `git diff <fixed-point>...HEAD` and `git log <fixed-point>..HEAD --oneline`. Include `git diff --cached`, `git diff`, and `git status --short` only when staged or working-tree state was explicitly selected. For other source-control systems, use the configured adapter and record the equivalent immutable identity.

Confirm the checkpoint resolves and the selected surface is non-empty. A bad ref, empty surface, or mismatch between requested and observed work fails here—not inside reviewers.

### 2. Inventory artifacts and evidence

List every changed path and classify it as mergeable source/text, engine-serialized text, generated/derived output, source asset, opaque/editor-owned package, or build/evidence artifact. Record its owning discipline, authoritative source/import path, whether a text diff is meaningful, and the evidence available.

For game work, apply `/game-development`. Route opaque, visual, audio, spatial, animation, data, editor, performance, network, package, and target claims to their owning tool/reviewer. A listed binary path is not a reviewed behavior.

### 3. Identify the spec source

Look for the originating spec, in this order:

1. Issue references in the commit messages (`#123`, `Closes #45`, GitLab `!67`, etc.) — fetch via the workflow in `docs/agents/issue-tracker.md`.
2. A path the user passed as an argument.
3. A spec file under `docs/`, `specs/`, or `.scratch/` matching the branch name or feature.
4. If nothing is found, ask the user where the spec is. If they say there isn't one, the **Spec** reviewer will skip and report "no spec available".

### 4. Identify the standards sources

Load only standards material to the changed artifacts: code/framework conventions, engine lifecycle and serialization rules, content/folder/naming/import guidance, accessibility/localization requirements, platform rules, and material budgets.

On top of whatever the repo documents, the Standards axis always carries the **smell baseline** below — a fixed set of Fowler code smells (_Refactoring_, ch.3) that applies even when a repo documents nothing. Two rules bind it:

- **The project and framework override.** Documented standards and canonical engine patterns always win; where lifecycle, reflection, serialization, generated code, components, or data-oriented design require a pattern, suppress the generic smell.
- **Always a judgement call.** Each smell is a labelled heuristic ("possible Feature Envy"), never a hard violation — and, like any standard here, skip anything tooling already enforces.

Each smell reads *what it is* → *how to fix*; match it against the diff:

- **Mysterious Name** — a function, variable, or type whose name doesn't reveal what it does or holds. → rename it; if no honest name comes, the design's murky.
- **Duplicated Code** — the same logic shape appears in more than one hunk or file in the change. → extract the shared shape, call it from both.
- **Feature Envy** — a method that reaches into another object's data more than its own. → move the method onto the data it envies.
- **Data Clumps** — the same few fields or params keep travelling together (a type wanting to be born). → bundle them into one type, pass that.
- **Primitive Obsession** — a primitive or string standing in for a domain concept that deserves its own type. → give the concept its own small type.
- **Repeated Switches** — the same `switch`/`if`-cascade on the same type recurs across the change. → replace with polymorphism, or one map both sites share.
- **Shotgun Surgery** — one logical change forces scattered edits across many files in the diff. → gather what changes together into one module.
- **Divergent Change** — one file or module is edited for several unrelated reasons. → split so each module changes for one reason.
- **Speculative Generality** — abstraction, parameters, or hooks added for needs the spec doesn't have. → delete it; inline back until a real need shows.
- **Message Chains** — long `a.b().c().d()` navigation the caller shouldn't depend on. → hide the walk behind one method on the first object.
- **Middle Man** — a class or function that mostly just delegates onward. → cut it, call the real target direct.
- **Refused Bequest** — a subclass or implementer that ignores or overrides most of what it inherits. → drop the inheritance, use composition.

### 5. Run independent reviews

**Standards reviewer brief** — include:

- The pinned review surface, artifact inventory, and commit/change identity.
- The list of standards-source files you found in step 4, plus the smell baseline from step 4 pasted in full—the reviewer has no other access to it.
- The brief: "Review only artifacts and standards you can inspect. Report per path/hunk: documented breaches with the source rule, and baseline smells with the quoted hunk. Distinguish hard violations from judgement calls; project/framework standards override the baseline. Mark unreviewable artifacts for coverage rather than guessing. Do not invoke `/code-review` or delegate again. Under 400 words."

**Spec reviewer brief** — include:

- The pinned review surface, artifact inventory, commit/change identity, and acceptance evidence.
- The path or fetched contents of the spec.
- The brief: "Report requirements missing/partial, scope creep, and requirements whose implementation or evidence does not support the claim. Quote the spec line and cite the artifact/evidence inspected. Runtime or experiential requirements cannot pass from prose and paths alone. Do not invoke `/code-review` or delegate again. Under 400 words."

If the spec is missing, skip the Spec reviewer and note this in the final report.

Re-verify every finding against its cited source and the selected artifact before aggregation. Reviewer output is a hypothesis until this check lands.

### 6. Aggregate

Present the reports under `## Standards` and `## Spec` without merging or reranking the axes. Add `## Artifact coverage` with one row per material artifact: owner, review method, evidence inspected, and `reviewed`, `blocked`, or `not reviewable in this pass`.

End with findings per axis, the worst issue within each axis, and uncovered material artifacts. Do not claim a whole-change pass while any required artifact or acceptance evidence is blocked or uncovered. This review does not replace bug hunting, playtest, creative approval, profiling, certification, or QA unless those evidence-producing passes were explicitly included.

## Why two axes

A change can pass one axis and fail the other:

- Code that follows every standard but implements the wrong thing → **Standards pass, Spec fail.**
- Code that does exactly what the issue asked but breaks the project's conventions → **Spec pass, Standards fail.**

Reporting them separately stops one axis from masking the other.
