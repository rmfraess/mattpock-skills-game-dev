---
name: setup-matt-pocock-skills
description: Configure this repo for the engineering skills — issue tracker, instruction entry point, domain docs, and a game-development profile when relevant. Run once before first use.
disable-model-invocation: true
---

# Setup Matt Pocock's Skills

Scaffold the per-repo configuration that the engineering skills assume:

- **Issue tracker** — where issues live (GitHub by default; local markdown is also supported out of the box)
- **Triage labels** — the strings used for the five canonical triage roles
- **Domain docs** — where `CONTEXT.md` and ADRs live, and the consumer rules for reading them
- **Game-development profile** — when relevant, the engine, source authority, mutable artifacts, ownership, targets, budgets, and evidence adapters

This is a prompt-driven skill, not a deterministic script. Explore, present what you found, confirm with the user, then write.

## Process

### 1. Explore

Look at the current repo to understand its starting state. Read whatever exists; don't assume:

- `git remote -v` and `.git/config` — where is source hosted? Do not treat that as proof of where work is tracked.
- `AGENTS.md`, `CLAUDE.md`, and runtime-specific instruction entry points — which one does the active harness actually load? Does one point to another? Is there already an `## Agent skills` section?
- `CONTEXT.md` and `CONTEXT-MAP.md` at the repo root
- `docs/adr/` and any `src/*/docs/adr/` directories
- `docs/agents/` — does this skill's prior output already exist?
- `.scratch/` — sign that a local-markdown issue tracker convention is already in use
- Is the `triage` skill installed? (a `triage` skill folder alongside this one, or `triage` in your available skills.) This decides whether Section B runs at all.
- Monorepo signals — a `pnpm-workspace.yaml`, a `workspaces` field in `package.json`, or a populated `packages/*` with its own `src/`. Present only in a genuinely large multi-package repo; their absence means single-context, which is almost every repo.
- Tracker evidence independent of the remote — existing issue URLs, config, CLI instructions, project docs, or local issue files.
- Game-project signals — engine project files and version metadata, `Assets`/`Content` trees, editor settings, build targets, source-control lock or LFS rules, and platform SDK configuration.
- Authority and production docs — vision or design docs, source material or canon, art direction, technical constraints, ownership maps, performance budgets, test plans, and build/release instructions. Record the real paths; do not invent a standard layout.

### 2. Present findings and ask

Summarise what's present and what's missing. Then take the sections in order — one section, one answer, then the next.

Lead each section with the recommended answer so the user can accept it in a word. Give a one-line explainer only when the choice genuinely branches; skip the section entirely when exploration already settled it (Section B when `triage` isn't installed, Section C when there's no monorepo).

**Section A — Issue tracker.**

> Explainer: The "issue tracker" is where issues live for this repo. Skills like `to-tickets`, `triage`, and `to-spec` read from and write to it — they need to know whether to call `gh issue create`, write a markdown file under `.scratch/`, or follow some other workflow you describe. Pick the place you actually track work for this repo.

Recommend the tracker supported by direct evidence of where this project actually plans work. A source remote is only weak evidence: a project hosted on GitHub may track work in Linear, Jira, local files, or elsewhere. If exploration cannot settle it, offer:

- **GitHub** — issues live in the repo's GitHub Issues (uses the `gh` CLI)
- **GitLab** — issues live in the repo's GitLab Issues (uses the [`glab`](https://gitlab.com/gitlab-org/cli) CLI)
- **Local markdown** — issues live as files under `.scratch/<feature>/` in this repo (good for solo projects or repos without a remote)
- **Other** (Jira, Linear, etc.) — ask the user to describe the workflow in one paragraph; the skill will record it as freeform prose

Record the choice in `docs/agents/issue-tracker.md`. The GitHub and GitLab templates carry a "PRs as a request surface" flag, defaulted **off** — leave it off and don't raise it; a user who wants external PRs in the triage queue can flip the flag in the file later.

**Section B — Triage label vocabulary.** Skip this section entirely if the `triage` skill isn't installed (exploration told you) — an uninstalled skill needs no labels.

If it is installed, ask exactly one question:

> Do you want to keep the default triage labels? (recommended: **yes**)

The defaults are the five canonical roles, each label string equal to its name: `needs-triage`, `needs-info`, `ready-for-agent`, `ready-for-human`, `wontfix`. On **yes**, write them as-is. Only if the user says no — usually because their tracker already uses other names (e.g. `bug:triage` for `needs-triage`) — collect the overrides so `triage` applies existing labels instead of creating duplicates.

**Section C — Domain docs.** Default to **single-context** — one `CONTEXT.md` + `docs/adr/` at the repo root. This fits almost every repo; write it without asking.

Offer **multi-context** — a root `CONTEXT-MAP.md` pointing to per-context `CONTEXT.md` files — only when exploration found monorepo signals. Then confirm which layout they want.

If the project already has authoritative vocabulary, design, source, or decision docs elsewhere, preserve those paths. The generated domain guide points to them rather than moving or duplicating them.

**Section D — Game-development profile.** Run this section only when exploration found game-project signals. Present the detected answers, mark unknowns, and ask for one confirmation pass covering:

- player-facing promise and authoritative vision/source/canon documents,
- engine and version, target platforms, build/package entry points, and runtime-specific adapters,
- mutable or opaque artifact classes, source-control/lock policy, and ownership boundaries,
- performance or memory budgets and the evidence required for code, editor, play, network, package, and target-device claims.

Write the result to `docs/agents/game-development.md`. Keep engine- or platform-specific commands in that project file; the shared skills stay runtime-neutral.

### 3. Confirm and edit

Show the user a draft of:

- The `## Agent skills` block to add to whichever of `CLAUDE.md` / `AGENTS.md` is being edited (see step 4 for selection rules)
- The contents of `docs/agents/issue-tracker.md`, `docs/agents/domain.md`, and `docs/agents/triage-labels.md` (the last only when `triage` is installed)
- `docs/agents/game-development.md` when Section D ran

Let them edit before writing.

### 4. Write

**Pick the file to edit:** use the instruction entry point the active harness actually loads. If multiple files exist, follow an existing pointer to the canonical one. If there is no canonical entry point, show the supported choices and ask which should own the block. Do not write standing instructions into a file the active harness ignores, and do not duplicate the block across files; a short pointer from an adapter file to the canonical file is preferable.

If an `## Agent skills` block already exists in the chosen file, update its contents in-place rather than appending a duplicate. Don't overwrite user edits to the surrounding sections.

The block:

```markdown
## Agent skills

### Issue tracker

[one-line summary of where issues are tracked]. See `docs/agents/issue-tracker.md`.

### Triage labels

[one-line summary of the label vocabulary]. See `docs/agents/triage-labels.md`.

### Domain docs

[one-line summary of layout — "single-context" or "multi-context"]. See `docs/agents/domain.md`.

### Game development

[one-line summary of engine, targets, authority, artifact ownership, and evidence adapters]. See `docs/agents/game-development.md`.
```

Include the `### Triage labels` sub-block, and write `docs/agents/triage-labels.md`, only when `triage` is installed and Section B ran. When it isn't, both are omitted.

Include the `### Game development` sub-block, and write `docs/agents/game-development.md`, only when Section D ran.

Then write the docs files using the seed templates in this skill folder as a starting point:

- [issue-tracker-github.md](./issue-tracker-github.md) — GitHub issue tracker
- [issue-tracker-gitlab.md](./issue-tracker-gitlab.md) — GitLab issue tracker
- [issue-tracker-local.md](./issue-tracker-local.md) — local-markdown issue tracker
- [triage-labels.md](./triage-labels.md) — label mapping (only if `triage` is installed)
- [domain.md](./domain.md) — domain doc consumer rules + layout
- [game-development.md](./game-development.md) — game-development project profile

For "other" issue trackers, write `docs/agents/issue-tracker.md` from scratch using the user's description.

At the top of each generated file, record the installed setup-skill version or source revision as its **configuration contract**. On a later run, compare that contract with the current templates, show only material migrations, and preserve project-authored decisions.

### 5. Verify

Before declaring readiness:

- use non-destructive reads to prove the configured tracker and required issue/link operations are reachable;
- verify mapped triage and wayfinder labels exist when their skills need them—create nothing without approval, and name any missing prerequisite;
- verify the canonical instruction entry point reaches every generated file;
- for a game project, verify that every recorded authority and runtime-adapter pointer exists or is explicitly marked unresolved;
- inspect the final diff so secrets, restricted material, generated noise, and unrelated instructions are absent.

Setup may finish as **configured with prerequisites** when an external owner must provide access, labels, tools, or authority. It is not **ready** until the checks above pass.

### 6. Done

Tell the user the setup is complete and which engineering skills will now read from these files. Mention they can edit `docs/agents/*.md` directly later — re-run when the tracker, canonical instruction entry point, engine, targets, ownership model, or evidence requirements materially change.
