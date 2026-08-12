---
name: implement
description: "Implement a piece of work based on a spec or set of tickets."
disable-model-invocation: true
---

# Implement

Implement one bounded piece of work already decided in the conversation, spec, or ticket. Preserve upstream intent; do not silently redesign it.

## 1. Confirm the work surface

Resolve the full work-item identity and restate its outcome and acceptance criteria. For game work, apply `/game-development` and confirm only the execution facts material to this ticket:

- player/production outcome and deciding authority;
- engine/version, targets, and material budgets;
- every source, editor, content, generated, build, or evidence artifact in scope;
- one mutable owner, lock/check-out state, recovery point, and intended save set for non-mergeable work;
- the evidence and human/specialist gates needed to support each acceptance claim;
- the project's source-control and work-item closeout.

This is an execution-readiness check, not a new design interview. If a material fact is missing, stop with a precise owner-routed blocker instead of guessing.

## 2. Choose the tight loop

- Deterministic behavior at a stable seam: use `/tdd`, then add engine integration evidence only where lifecycle, serialization, wiring, or world state is material.
- Engine/editor integration or visual scripting: compile/validate, load the focused context, exercise the behavior, and capture relevant logs.
- Controls, camera, combat cadence, level flow, animation, lighting, VFX, audio, UI, or narrative presentation: iterate in representative context and obtain the named play/creative signal.
- Streaming, rendering, memory, loading, or other budget work: use representative scale and profile against the agreed threshold.
- Network behavior: run the required topology under stated latency/loss and capture synchronized evidence.
- Packaging/platform work: cook/package/install/launch on the required target.

For application work, keep the existing efficient path: typecheck regularly, run focused tests during implementation, and run the full relevant suite once near the end.

## 3. Protect and inspect the actual artifacts

Save only intentional editor packages. Leave unrelated dirty, generated, cached, imported, or auto-saved files out of the closeout. Validate references, imports, serialization, and generated outputs after mutation. A source diff does not behaviorally review an opaque asset.

## 4. Review a fixed surface

Create or select the project's reviewable checkpoint—committed diff, staged/working surface, changelist, shelf, or equivalent—and run `/code-review` against that exact surface. Route visual, audio, spatial, data, editor-owned, or otherwise opaque artifacts to their owning tool and reviewer. Resolve or explicitly route every blocking finding.

## 5. Reconcile and close out

Map every acceptance criterion to observed evidence. Report only the highest demonstrated state: implemented, integrated, representative-tested, approved, budget-verified, packaged, or target-verified.

Use the configured source-control closeout—commit, changelist, shelf, pull request, or evidence-backed handoff—and include only verified paths. Update the work item to its truthful state: completed only when every required gate passed; otherwise ready for the named review or blocked by the missing evidence. Do not submit merely to satisfy this skill.
