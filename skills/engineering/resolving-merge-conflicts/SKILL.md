---
name: resolving-merge-conflicts
description: "Use when you need to resolve an in-progress git merge/rebase conflict."
---

1. **Protect recoverability before resolving.** Inspect the merge/rebase state, working tree, index, editor state, locks/checkouts, and conflicting paths. Preserve uncommitted work and record a recovery point before changing or staging anything.

2. **Classify every conflicted path.** Separate mergeable text from editor-authored packages, scenes/maps, visual graphs, binary assets, generated outputs, imported derivatives, source assets, and lock-managed files. Git conflict markers make a text file mergeable; they do not make an opaque asset reviewable.

3. **Find the primary sources and owners.** Understand why each side changed and who owns the artifact. Read commit messages, PRs, issues, design/technical decisions, import provenance, and relevant engine/editor history. Do not infer the contents of an opaque package from its filename or Git status.

4. **Resolve mergeable text hunk by hunk.** Preserve both intents where compatible. Where incompatible, choose the result matching the integration goal and authoritative decision, and record the trade-off. Do not invent new behavior merely to remove markers.

5. **Resolve non-text conflicts through recovery, not guessing.** Identify the authoritative side or owner, recover complete versions, and use an engine/tool-native merge only when that artifact type supports one. Otherwise choose one complete version, recreate the other intent deliberately in the owning tool, and save only the intended artifact. Never text-merge, concatenate, or blindly choose `ours`/`theirs` for an opaque asset.

6. **Validate the merged behavior at the affected surfaces.** Run the project's automated checks, then add editor load/compile/validation, referencer/import checks, representative play, visual/audio review, networking, profiling, cook/package, or target-platform evidence where the changed artifact requires it.

7. **Stage only the intentional result.** Review the exact path list and staged diff. Exclude unrelated dirty files, generated noise, credentials, local settings, and packages not intentionally resolved.

8. **Finish only when the operation is safe.** Continue and commit the merge/rebase when every conflict has an evidence-backed resolution and the intended checks pass. Abort or return to the recovery point when the integration goal is wrong, required ownership/evidence is unavailable, or continuing would risk data loss; report why rather than forcing a plausible result.
