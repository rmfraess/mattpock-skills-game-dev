---
name: handoff
description: Write a portable, evidence-aware handoff for another agent or session.
argument-hint: "What will the next session be used for?"
disable-model-invocation: true
---

Write a compact handoff document so a fresh agent, session, harness, directory, or collaborator can continue without reopening the source conversation. If the user passed arguments, use them as the destination outcome and keep only context that bears on it.

## 1. Choose a reachable destination

- For an immediate move on the same machine, save to the resolved OS temporary directory.
- For a delayed, cross-machine, cross-runtime, or team transfer, save to an approved durable location the recipient can access. Do not place it in the repository unless the user or project convention chooses that location.
- Return the absolute path and verify that the file exists there. Every referenced local artifact must also be reachable from the destination; otherwise use an approved durable path or mark it unavailable.

## 2. Preflight mutable state

Inspect the available workspace, source-control, editor, and ownership state before declaring the work transferable. Record dirty/untracked source, unsaved editor assets, opaque packages, locks/checkouts, shelves or recovery copies, generated artifacts, and the current owner where material. Ask for editor state that cannot be inspected.

Each concurrently mutable or non-mergeable artifact has one current owner. If an unsaved or editor-owned artifact has not been saved, closed, shelved, backed up, or explicitly retained by its owner, mark the handoff **blocked** rather than implying that ownership transferred.

## 3. Write the handoff

Use only the sections the destination needs, in this order:

1. **Destination outcome** — what the recipient should accomplish and why.
2. **Owner and transfer status** — current owner, intended next owner, transfer state, and any blocked artifacts.
3. **Fixed intent and constraints** — acceptance intent, player/user outcome, approved creative/source/canon requirements, budgets, and decisions the recipient must preserve.
4. **Flexible implementation choices** — mechanisms still owned by the receiving specialist; do not turn creative intent into an invented technical prescription.
5. **Artifact state** — a compact table of path/URL, artifact type, saved/dirty/locked state, owner, transfer/recovery status, and compatibility/version limits.
6. **Evidence state** — label claims `verified`, `observed`, `inferred`, or `not run`; link exact builds, tests, editor checks, reviews, playtests, profiles, or target evidence.
7. **Prototype findings and fidelity** — what uncertainty a prototype resolved, what it did not resolve, and where it diverges from production conditions.
8. **Decisions, blockers, and next actions** — include reasons and the first safe next step.
9. **Authoritative references** — specs, plans, ADRs, issues, commits, diffs, source material, and project docs by path or URL rather than copied content.
10. **Suggested skills and owners** — what the recipient should invoke and which specialist owns each unresolved decision.

Redact secrets, credentials, and unnecessary personal information. Preserve precise engine/framework names and artifact states.

## 4. Verify the transfer

Read the document cold. The destination outcome, fixed intent, current ownership, blocked state, evidence limits, and first action must be unambiguous without the original conversation. Verify every local path is accessible from the stated destination. Report `ready`, `ready with stated gaps`, or `blocked`; never upgrade an assumption or unsaved artifact to completed work.
