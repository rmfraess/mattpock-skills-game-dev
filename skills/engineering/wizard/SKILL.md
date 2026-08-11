---
name: wizard
description: Generate an interactive bash wizard that walks a human through steps only they can perform. Use when provisioning infrastructure, setting up credentials or CI secrets, walking an unfamiliar third-party dashboard, or running a one-off migration or cutover. Don't invoke this for steps the agent can perform itself.
---

# Wizard

A **wizard** is a bash script that walks a human, step by step, through a manual procedure that's tedious to do by hand and tedious to re-explain to an AI every time. It opens each URL, says exactly what to click and copy, captures values locally, writes them only to project-approved destinations, confirms at every stage, and shows how many stages are left. It might configure third-party services, provision a game platform or device, run a one-off migration, or move the project from one state to another.

The delightful UX is already solved by [template.sh](template.sh) — stage-by-stage progress, confirmation gates including exact-phrase gates, cross-platform URL opening (including WSL), hidden secret entry, private `.env` writes, `gh secret`/`gh variable` writes, and an honest closing summary. **Your job is to scope the procedure, establish its safety policy, and author its stages.** The library above the `STAGES` marker is identical in every wizard; that consistency is the point — never hand-edit it.

A wizard is ephemeral by default — built for one run, saved to a scratch or `scripts/` path, deleted when the job's done. Commit it only when the user wants a repeatable setup path that should live in the repo.

## Process

### 1. Scope the procedure

Work out every manual step the human must take and every value that gets captured along the way. Read the repo first — don't ask cold:

- For setup: `.env`, `.env.example`, `.env.*`, `README`, `docker-compose*`, framework config, and `.github/workflows/*` (every `secrets.*` / `vars.*` reference is a value the wizard must produce).
- For a migration or transition: the current state, the target state, and the irreversible actions between them.
- For game/platform work: engine and tool versions, source control and locks, editor/package state, platform SDK/account/device requirements, signing/provisioning, build configuration, target environment, and the project's approved credential store.

Then show the user the ordered list of stages and the values each produces, and confirm — they may add, drop, or reorder.

**Done when:** every stage is named in order, and for each captured value you know (a) where the human gets it, (b) the project-approved destination or explicit decision not to persist it, (c) whether it is secret, personal, licensed, platform-restricted, or public, and (d) which identity/environment owns it. Do not ask the user to paste credentials into the agent conversation.

### 2. Map each stage's journey

For each stage, write the precise path a human follows: which URL/tool/editor to open, what to do there, where a value is shown, which destination it fills, and how success is observed. Verify the current procedure against an authorized, version-relevant primary source. Where you don't know the UI, command, engine version, or platform policy, say so and ask the user or check the docs — never invent steps that may not exist.

Before any destructive, billable, production, migration, signing, account, entitlement, device, editor-content, or platform action, define a preflight: deciding authority, affected environment and artifact inventory, backup/snapshot or source-control recovery point, clean/known editor and working-tree state, dry run or sandbox where feasible, rollback, and an exact-phrase confirmation naming the consequence.

**Done when:** every stage traces to concrete instructions a stranger could follow.

### 3. Author the wizard

Copy `template.sh` to the target path. Replace the example stage with one `stage` per step, in dependency order. Use the library helpers — `stage`, `say`/`step`, `open_url`, `ask`/`ask_secret`, `write_env`/`write_secret_env`, `set_secret`/`set_var`, `pause`, and `confirm`/`confirm_exact` — and set `TOTAL_STAGES` to the number of stages you wrote.

Hold the bar the template sets: open the URL before asking for its value, use `ask_secret` for secrets, use `write_secret_env` only for private ignored files, write public values only to approved destinations, and use `confirm_exact` before irreversible actions. Never print, log, interpolate into a command line, or copy a secret back into chat. Each `stage` clears the screen so only the current step is visible — keep a stage to one focused task so nothing the human needs scrolls away. Don't touch the library above the marker.

### 4. Verify and hand off

- `bash -n <script>`; run `shellcheck` if available.
- `chmod +x <script>`.
- Don't run live credential, production, account, device, migration, or irreversible stages yourself. Trace every path statically, then rehearse safe branches in a disposable environment or dry-run mode where possible. Verify that every value lands only at its approved destination and that skipped work prevents a false "complete" result.
- Tell the user how to run it. If it's a repeatable setup path, commit it and link it from the README so the next person runs the script instead of asking an AI.
