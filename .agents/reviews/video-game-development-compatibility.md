# Video-Game Development Compatibility Review

## Review contract

This review asks whether each promoted Matt Pocock skill remains dependable when used on a professional video-game project. Application examples are not defects by themselves. An adaptation is justified only when a current instruction creates a concrete failure for a normal game task, artifact, discipline, or completion gate.

Preserve each skill's defining strength. Prefer a narrow game branch or shared reference over duplicating a universal game checklist. Keep generic behavior engine-, model-, provider-, and harness-neutral.

Each skill is reviewed as a design brief:

1. preserve the useful core;
2. name one normal game situation;
3. trace the current instruction to a concrete failure;
4. choose the narrowest correction;
5. define scenarios that can falsify the correction.

Verdicts use `Pass`, `Low`, `Medium`, `High`, and `Critical`. A verdict describes the current default under game use, not the skill's intrinsic value.

## Pinned source and scope

- Canonical source: `https://github.com/mattpocock/skills`
- Review checkout: `https://github.com/rmfraess/mattpock-skills-game-dev`
- Revision: `84fdeffd12f2ee307994d1eb6feb48173b6e0502`
- Branch: `game-development-compatibility`
- In scope: all 25 promoted skills under `skills/engineering/` and `skills/productivity/`
- Manifest reconciliation: the 25 frontmatter names exactly match the 25 entries in `.claude-plugin/plugin.json`
- Deferred unless promoted later: `claude-handoff`, `loop-me`, `setup-ts-deep-modules`, `writing-beats`, `writing-fragments`, `writing-shape`, `git-guardrails-claude-code`, `migrate-to-shoehorn`, `scaffold-exercises`, and `setup-pre-commit`

The historical review path referenced by prior work was not present at this revision. Findings below are re-derived from the current source rather than carried forward without evidence.

## Assessment order

The router is reviewed first to expose the current flow. Direct safety and runtime-evidence risks follow, then execution, planning, and bounded productivity skills. This is the assessment order; final patches will be sequenced by dependency after verdicts are accepted.

1. `ask-matt`
2. `prototype`
3. `resolving-merge-conflicts`
4. `implement`
5. `tdd`
6. `code-review`
7. `diagnosing-bugs`
8. `research`
9. `wizard`
10. `setup-matt-pocock-skills`
11. `grill-with-docs`
12. `grilling`
13. `grill-me`
14. `domain-modeling`
15. `wayfinder`
16. `to-spec`
17. `to-tickets`
18. `triage`
19. `improve-codebase-architecture`
20. `codebase-design`
21. `handoff`
22. `to-questionnaire`
23. `teach`
24. `wait-what`
25. `writing-for-agents`

---

## 01 — `ask-matt`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review

**Patch class:** shared game reference plus a router-local game branch

### Preserve

`ask-matt`'s strongest idea is the **flow**: route from the user's actual situation through composable skills instead of matching one skill by keyword. Its phase-boundary guidance and distinction between main flow, on-ramps, standalone skills, and underlying vocabulary remain useful for game development.

### Normal game situations

- Tune a third-person camera until traversal feels readable and responsive.
- Build a deterministic inventory stacking rule inside an engine project.
- Review a change containing gameplay source, animation data, and opaque editor packages.
- Make a lighting pass in a representative level under a frame-time budget.

### Current evidence

- `skills/engineering/ask-matt/SKILL.md:13-26` defines the main route for “most work” and recognizes runnable questions only as state, business logic, or UI before routing them through the existing HTML-oriented `prototype`, `implement`, `tdd`, and `code-review` path.
- `skills/engineering/ask-matt/SKILL.md:26` says every implementation is driven through red-green TDD and closes with review of the diff before committing.
- `skills/engineering/ask-matt/SKILL.md:42` requires a hard bug to start with one command that goes red on the bug and finish with a regression test.
- `skills/engineering/ask-matt/SKILL.md:80` describes a prototype only as a state-model or UI program.
- `skills/engineering/ask-matt/SKILL.md:90` claims the setup precondition configures the assumptions used by the other engineering flows, but that setup discovers no game engine, target platform, source-control model, mutable editor assets, or project authority.

### Concrete game failure

For a camera-feel question, the router's nearest runnable branch is `prototype`, but its advertised artifact cannot reproduce the engine input stack, camera update order, collision, animation, frame loop, or target-device behavior that determines the answer. If the work proceeds through the main route, TDD and text-diff review can then be treated as the universal completion evidence even though the material risk is hands-on feel in a representative playable scene.

For a mixed source-and-content change, the same route can report completion after tests and a Git diff while animation, map, material, audio, or other opaque packages have not been behaviorally reviewed in their owning editor. For a lighting task, the route has no branch for visual ownership, representative-scene review, or performance evidence and therefore maps a normal game task onto the wrong production surface.

This is **High**, rather than a criticism of the application flow itself: the existing route is coherent for application work, but under ordinary game use it is likely to choose the wrong experiment or completion evidence. The failure is recoverable and the router itself does not mutate assets, so it is not classified as destructive.

### Narrow adaptation

1. Keep the current application main flow intact.
2. Before entering it, add a game-development branch that pins the player-facing outcome and classifies the material work product and uncertainty.
3. Route deterministic rules at stable seams through `implement`/`tdd`, adding engine integration evidence only when serialization or runtime wiring is material.
4. Route feel, controls, camera, combat cadence, level, lighting, VFX, animation, audio, streaming, networking, and target-platform questions to the smallest **engine-native playable or production-verifiable slice**. Do not send runtime-dependent questions to an HTML artifact merely because they are runnable.
5. For editor content and mixed changes, identify one mutable owner per package/scene/map/graph and select evidence that can inspect the actual artifact. A text diff may review source without proving opaque content correct.
6. Put the shared vocabulary for player outcome, artifact class, ownership, budgets, and layered evidence in one model-reachable, engine-neutral game-development reference. Keep `ask-matt` as a map rather than duplicating that reference.
7. Keep exact Hermes delegation, engine automation, provider commands, and specialist-profile mechanics in disclosed runtime adapters rather than the generic router.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a normal web or service feature still takes the existing efficient grill → spec/tickets when needed → implement/TDD/review route without a game checklist.
- **Deterministic game logic:** an inventory constraint can take the TDD route, with an engine integration check only when its serialization or runtime binding matters.
- **Experiential game work:** a camera-feel question produces an engine-native test scene/build and a named playtest signal, not a synthetic assertion or browser prototype.
- **Content work:** a lighting change identifies the owning level/content packages and closes on in-context visual review plus any material performance budget.
- **Mixed work:** source and opaque assets receive separate, appropriate evidence; Git path visibility is not reported as behavioral review of binary content.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `docs/engineering/ask-matt.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- the eventual shared game-development reference and its invocation metadata

No production skill has been edited as part of this assessment.

---

## 02 — `prototype`

**Accepted verdict: Critical — adaptation required**

**Decision:** accepted by the user during the one-skill review

**Patch class:** direct self-gate plus a skill-local engine-native branch

### Preserve

`prototype` has the right governing idea: **throwaway work that answers one explicit design question**. Its insistence on a narrow question, low polish, fast feedback, and durable capture of the answer is especially valuable in games, where experiential uncertainty can otherwise grow into an expensive feature before anyone tests the feel.

The existing HTML logic demo and application-UI variation branches should remain available. They are efficient when the question is genuinely independent of a game engine's runtime semantics.

### Normal game situations

- Decide whether traversal acceleration, camera lag, and collision response create the intended sense of weight.
- Compare HUD layouts under gamepad focus navigation, platform safe zones, localization expansion, and gameplay motion.
- Check whether a VFX treatment remains readable in representative lighting while meeting its frame-time budget.
- Test a networked ability under multiple instances, latency, and packet loss.
- Explore an engine-independent economy state machine with a designer who only needs to press actions and inspect state.

### Current evidence

- `skills/engineering/prototype/SKILL.md:3` advertises the skill for design questions but names only state/logic feel and UI appearance.
- `skills/engineering/prototype/SKILL.md:10-17` makes the HTML logic demo and web UI route an exhaustive two-way branch; an ambiguous question is forced into whichever application branch resembles the surrounding source.
- `skills/engineering/prototype/SKILL.md:21-22` locates throwaway work beside its future production location and fixes execution to either a project task-runner command or a double-clicked HTML file.
- `skills/engineering/prototype/SKILL.md:23-25` assumes in-memory state, universally rejects tests and hardening, and requires relevant state to be rendered after each action or variant switch.
- `skills/engineering/prototype/SKILL.md:26` requires capture on a throwaway Git branch out of main.
- `skills/engineering/prototype/LOGIC.md:3,35-39` requires one plain HTML/CSS/JavaScript file even though engine lifecycle, serialization, physics, and frame-loop behavior may be part of the question.
- `skills/engineering/prototype/UI.md:16-30,50-54,58-92` assumes an application page, web component system, URL parameter, browser keyboard events, and production environment flag.
- `skills/engineering/prototype/UI.md:111` forbids real mutations, which prevents a prototype from evaluating interactions whose meaning depends on engine state or gameplay consequences.

### Concrete game failure

For traversal feel, an HTML state machine can display acceleration values but cannot reproduce engine input sampling, frame update order, character movement, collision, root motion, camera obstruction, animation, frame pacing, or the target controller. The artifact can be internally correct and still answer the player's question falsely. The two-branch gate nevertheless forces the task into logic or web UI and presents the result as a design answer.

For HUD work, a browser route can help with composition, but it cannot establish gamepad focus behavior, input-mode transitions, safe-zone placement, render scaling, readability over moving gameplay, or target-platform performance. For VFX, audio, streaming, multiplayer, and target-device questions, neither current artifact can expose the causal system at all.

The storage instructions create a second game-specific risk. Placing throwaway assets beside production content can create package references, redirectors, source-import coupling, or accidental cook inclusion. Switching to or preserving a Git branch is not a source-control-neutral operation for teams using Perforce, locks, LFS, streams, or non-mergeable packages, and branch switching while an editor holds dirty state can lose or mis-serialize work.

This is **Critical** under the review rubric because a directly invocable skill claims to answer design questions while its exhaustive primary branch cannot answer ordinary runtime-dependent game questions. The verdict does not reject browser prototypes; it requires the skill to refuse false fidelity and choose an engine-native artifact when the causal system demands one.

### Narrow adaptation

1. Keep the existing logic and application-UI branches unchanged for engine-independent questions.
2. Add a self-gate before branch selection: identify whether the answer materially depends on the game engine, frame loop, input device, physics, rendering, animation, audio, networking, streaming, editor serialization, or target hardware.
3. When it does, select an **engine-native prototype**: the smallest isolated map/scene, test actor/component, gameplay sandbox, content testbed, or target build that can produce the causal behavior. The question chooses the artifact; “engine-native” does not imply a full vertical slice.
4. State the intended player-facing effect, the one uncertainty being resolved, and an observable acceptance signal before building. Preserve source/canon constraints when they are part of the design question.
5. Isolate throwaway editor assets from production packages. Establish one mutable owner, a recovery point, and an intentional save list before changing non-mergeable content. Avoid broad saves, migrations, reimports, or production-folder placement merely for proximity.
6. Replace the Git-only capture rule with project-discovered source-control and evidence handling. A branch may remain right for text work; a changelist, shelf, stream, isolated content folder, source asset, video capture, profiler trace, or documented build may be the durable primary evidence elsewhere. Record engine/project version and dependencies needed to reproduce it.
7. Replace the universal “no tests” rule with “no production hardening.” Add only the instrumentation, deterministic harness, capture, logging, or automation needed to answer the question reliably; do not turn the prototype into production architecture.
8. Treat browser UI as a valid low-fidelity composition tool, not proof of in-game interaction. Use the owning engine when focus, input mode, safe zones, world-space presentation, gameplay readability, localization, render path, or platform performance is material.
9. Keep exact Unreal, Unity, Godot, proprietary-engine, harness, and source-control commands in disclosed adapters. The shared branch remains engine-neutral.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application logic control:** an application state-model question still produces the existing single-file HTML demo.
- **Application UI control:** a dashboard layout question still produces the existing route-based variants without game-production ceremony.
- **Engine-independent game logic:** a turn-based economy rule may use the HTML logic demo when engine lifecycle and serialization are explicitly irrelevant.
- **Traversal feel:** a movement/camera question creates an isolated engine-native playable slice and closes on a named hands-on playtest signal.
- **In-game UI:** a HUD interaction question runs in the engine with the required input device and representative gameplay backdrop; a browser composition study may feed it but cannot close it.
- **Real-time visual work:** a VFX question uses a representative scene, capture, and profiler/budget comparison on material hardware.
- **Network behavior:** a replicated ability question uses multiple instances and stated latency/loss conditions.
- **Binary/editor safety:** a prototype involving non-mergeable packages identifies owner, recovery point, save inventory, storage method, and reproduction dependencies without assuming a Git branch.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/prototype/LOGIC.md`
- `skills/engineering/prototype/UI.md`
- a new disclosed engine-native prototype reference or branch document
- `docs/engineering/prototype.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- `ask-matt` and `wayfinder`, because both route design questions into this skill

No production skill has been edited as part of this assessment.

---

## 03 — `resolving-merge-conflicts`

**Accepted verdict: Critical — adaptation required**

**Decision:** accepted by the user during the one-skill review

**Patch class:** direct safety self-gate

### Preserve

The skill's central discipline is strong: resolve **intent**, not conflict-marker syntax. Reading both sides' commits, pull requests, and issues before touching a conflict is as important for game code as for application code. Preserving compatible intents, naming unavoidable trade-offs, avoiding invented behavior, and validating before finishing should remain the default for safely mergeable text.

### Normal game situations

- Two Git branches modify the same Unreal map or asset package tracked with LFS.
- Two Unity branches modify one scene or prefab whose YAML contains object IDs and cross-asset GUID references.
- A source texture, its import settings, and an engine-generated asset disagree across branches.
- A merge combines gameplay source with Blueprints, maps, animation, materials, audio, or other editor-owned content.
- The working tree already contains unrelated dirty editor files when the merge begins.

### Current evidence

- `skills/engineering/resolving-merge-conflicts/SKILL.md:6-10` assumes every conflict can be understood and resolved hunk by hunk, then commands “Always resolve; never `--abort`.”
- `skills/engineering/resolving-merge-conflicts/SKILL.md:12` fixes verification to automated checks such as typecheck, tests, and format.
- `skills/engineering/resolving-merge-conflicts/SKILL.md:14` instructs the agent to “Stage everything and commit.”
- `docs/engineering/resolving-merge-conflicts.md:19-23` frames the failure as choosing text via `ours` or `theirs` and treats automated checks as the post-merge gate.
- `docs/engineering/resolving-merge-conflicts.md:31-35` advises that keeping parallel agents off the same files usually costs more than it saves.
- `docs/engineering/resolving-merge-conflicts.md:37-39` says aborting only throws away resolution work and returns to the same conflict, so abort is categorically excluded.
- `docs/engineering/resolving-merge-conflicts.md:41-47` defines success through intent notes, typecheck/tests/format, and a clean committed tree, with no owning-editor or binary-package validation.

### Concrete game failure

An Unreal `.umap` or `.uasset` conflict has no meaningful text hunk for an agent to reconcile. Choosing `ours` or `theirs` makes the Git conflict disappear by silently deleting the other side's package-level work. Trying to treat the file as text risks corruption. If both branches contain valuable edits, the safe path is often to preserve a recovery point, identify the authoritative owner/version, abort or restart the merge, and deliberately recreate the other intent in the editor. The current “never abort” rule forbids that recovery path.

A Unity scene or prefab may expose textual YAML and conflict markers, yet a syntactically clean merge can still break object identity, serialized references, hierarchy, importer state, or editor compatibility. Typecheck, tests, and formatting cannot establish that the scene loads or that both authored intents survived.

“Stage everything” adds a separate destructive risk: editor auto-saves, generated files, imported outputs, caches, or unrelated dirty packages can be swept into the commit without ever being part of the conflict resolution. The parallel-file advice is also unsafe for non-mergeable game packages, where exclusive mutable ownership prevents work from becoming mutually unrecoverable in the first place.

This is **Critical** because the skill directly prohibits a safe recovery operation and requires broad staging in a workflow that can encounter opaque, non-mergeable assets. Following the current instructions can cause irreversible loss of authored game content or commit unrelated editor state.

### Narrow adaptation

1. Keep the existing intent-first hunk workflow for safely mergeable text source and configuration.
2. Before resolving anything, inventory the conflict paths and classify each as mergeable text, engine-serialized text, generated/derived output, source asset, or opaque/non-mergeable editor package.
3. Establish a recovery point and inspect working-tree/editor state before changing files, switching revisions, running importers, or opening the owning editor. Preserve unrelated dirty work.
4. Regenerate derived files from their authoritative source rather than hand-merging them.
5. Use the project's engine-aware merge driver and owning editor for engine-serialized text. A clean textual diff is intermediate evidence; load, reference, compile, and behavior checks decide whether the artifact survived.
6. For opaque or non-mergeable packages, stop the hunk workflow. Identify each side's owner and authoritative source, choose the surviving base deliberately, then recreate the compatible losing intent in the owning editor when feasible. Never attempt a text merge or infer behavioral correctness from Git metadata.
7. Replace “never `--abort`” with an explicit recovery decision. Abort/restart is valid when authority is unresolved, the artifact cannot be merged safely in place, the editor state is unsafe, or a serialized reconstruction needs a clean base. Preserve any useful analysis before restarting.
8. Stage only explicitly resolved and verified paths. Leave unrelated dirty, generated, cached, and editor-auto-saved files unstaged.
9. Select verification by artifact: automated checks for source, editor load/reference/compile validation for serialized assets, in-context visual/audio review or playtest for authored content, profiling where budgets are material, and cook/package/target checks when integration risk reaches those layers.
10. Update the parallel-work guidance: mergeable text may be shared when the team accepts reconciliation cost; non-mergeable packages, scenes, maps, graphs, and source assets need one mutable owner at a time.
11. Keep the trigger Git-specific. When the project uses Perforce, Plastic, or another system, route to its native conflict and recovery procedure rather than translating Git commands mechanically.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** two branches with ordinary source-code hunks still follow the existing intent-first resolution, automated checks, and completion path.
- **Opaque Unreal package:** a conflicting map/package causes a safe stop, recovery check, and owner/authority decision; it is never text-merged or blindly selected and staged.
- **Serialized Unity scene:** conflict markers may be reconciled with the configured merge driver, but completion also requires the scene to open and its object references and intended behavior to validate in the editor.
- **Generated artifact:** the generated side is rebuilt from its authoritative input instead of hand-combined.
- **Mixed source/content merge:** source tests and editor/content evidence are both required; one cannot stand in for the other.
- **Dirty working tree:** unrelated editor changes remain preserved and unstaged while only verified conflict paths enter the merge commit.
- **Unrecoverable in-place merge:** the workflow permits abort/restart and records why that route is safer than forcing completion.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/resolving-merge-conflicts/SKILL.md`
- `docs/engineering/resolving-merge-conflicts.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- `ask-matt`, whose standalone summary currently repeats “never `--abort`”
- the shared game-development ownership and evidence reference

No production skill has been edited as part of this assessment.

---

## 04 — `implement`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review

**Patch class:** skill-local execution branch backed by the shared game reference

### Preserve

`implement` is usefully decisive: consume work that was settled upstream, execute one bounded ticket, keep feedback tight, review the result, and leave a durable source-control checkpoint. One ticket per fresh context and pre-agreed behavioral seams remain good defaults for deterministic game code.

The adaptation should not turn implementation back into open-ended design. It should validate that the ticket contains enough game-production information to execute safely, then choose the feedback loop that matches the artifact and risk.

### Normal game situations

- Implement a deterministic inventory stacking rule in gameplay source.
- Build a Blueprint-driven interaction with engine serialization and editor wiring.
- Tune locomotion and camera behavior to a named player-feel target.
- Produce a lighting or VFX slice in a representative level under a performance budget.
- Deliver a change containing source code plus animation, audio, material, data, and map packages.
- Package and run a feature on the required console, PC profile, or other target device.

### Current evidence

- `skills/engineering/implement/SKILL.md:7-15` defines one universal path: implement the ticket, use `tdd` where possible, repeatedly typecheck and test, run the full suite, invoke `code-review`, then commit to the current Git branch.
- `docs/engineering/implement.md:3-5` describes the output as code and a commit and says the skill never reopens or challenges what was settled upstream.
- `docs/engineering/implement.md:27-29` says the skill commits to the current branch without creating, checking, or asking about it.
- `docs/engineering/implement.md:31-41` makes TDD, typecheck, tests, code review, and commit the exhaustive five-beat run.
- `docs/engineering/implement.md:43-47` defines pre-agreed seams only as public boundaries observed by tests.
- `docs/engineering/implement.md:51-53` confirms the run has no completion step: it neither reconciles acceptance criteria nor advances the work item.
- `docs/engineering/implement.md:63-67` documents that the invoked `code-review` cannot see ordinary uncommitted changes and that a same-session reviewer may be biased.
- `docs/engineering/implement.md:77-83` declares success through visible TDD, repeated tests, a commit, and a diff-sized vertical slice.
- `docs/engineering/implement.md:93` says the skill trusts upstream work and does not revalidate its shape.

### Concrete game failure

A ticket to tune traversal feel can be implemented, compiled, unit-tested, diff-reviewed, and committed without anyone playing the representative route with the required controller. The automated loop proves deterministic parts but cannot establish weight, readability, cadence, or camera comfort. A lighting or VFX ticket may have little meaningful typecheck or unit-test surface at all, so the current five beats either force irrelevant activity or let the run claim completion using evidence that cannot inspect the work.

For mixed source and editor content, `code-review` can see path-level Git changes but cannot behaviorally inspect opaque packages. Committing to the current branch without checking the project source-control workflow, mutable owner, locks, dirty editor state, or intentional save set can put the right work on the wrong branch/changelist and include generated or unrelated editor changes.

The skill's trust in upstream planning is appropriate for design decisions but too broad for execution safety. If a game ticket omits the player-facing acceptance signal, owning packages, target platform, material budget, or required human creative approval, silently building it does not preserve the plan—it guesses at the production contract.

This is **High** because the default path is likely to mark ordinary game work complete with the wrong evidence or source-control action. The `where possible` qualifier leaves TDD optional, and the skill is not directly destructive in every invocation, so the overall verdict stays below Critical.

### Narrow adaptation

1. Keep the current application and deterministic-code path intact.
2. Add a game preflight that restates the player-facing outcome, classifies every material artifact, confirms the ticket's acceptance signals, and discovers the project engine, target platforms, source-control workflow, mutable owners, and material budgets. This is an execution-readiness check, not a redesign interview.
3. If required execution facts are missing, surface a precise blocker to the owning planning task or specialist rather than inventing them.
4. Select the implementation loop by artifact and risk:
   - deterministic rules at stable seams → TDD/unit/property tests plus integration evidence when needed;
   - engine integration or visual scripting → compile/validation, focused functional tests, test map/scene, and logs;
   - controls, camera, combat cadence, level flow, animation, lighting, VFX, or audio → in-context iteration plus a named hands-on or creative-review signal;
   - streaming, performance, memory, or rendering → representative content and profiler evidence against the agreed budget;
   - network behavior → multi-instance sessions under stated latency/loss conditions;
   - packaging/platform work → cook/package/install/run on the required target.
5. Before editor mutation, confirm one owner per non-mergeable package/scene/map/graph, a recovery point, and the intended save set. Save deliberately; do not sweep generated, cached, auto-saved, or unrelated assets into the handoff.
6. Review the actual work product. `code-review` may own mergeable source and text, but visual, audio, spatial, Blueprint, data, and opaque package changes require their owning editor and the appropriate specialist or human creative review.
7. Resolve the existing review-order mismatch: expose a fixed, reviewable checkpoint before claiming `code-review` ran, and keep independent review separate when bias or creative authority matters.
8. Replace the unconditional current-branch commit with the project's source-control closeout: commit, changelist, shelf, pull request, or evidence-backed handoff as configured. Include only verified paths and never submit merely to satisfy the skill.
9. Reconcile every acceptance criterion with evidence and update the work item to the project's truthful state—completed only when all required gates are satisfied, otherwise ready for the named review or blocked with the missing evidence. Human creative approval remains human-owned.
10. Keep engine commands, editor automation, platform tooling, and Hermes specialist delegation in disclosed adapters; the shared behavior remains engine- and harness-neutral.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a normal service or web ticket retains the existing efficient TDD/typecheck/test/review path.
- **Deterministic game logic:** an inventory invariant uses TDD at a stable seam and adds only the engine integration evidence material to serialization or runtime wiring.
- **Visual scripting:** a Blueprint interaction compiles, validates, loads in an isolated test map, and demonstrates the ticket behavior rather than relying on source tests.
- **Experiential work:** a traversal/camera ticket closes on a named playable scenario and player-feel signal, not only compile and tests.
- **Content and budget:** a lighting or VFX task is reviewed in representative content and profiled against its material budget.
- **Mixed artifacts:** source and opaque packages receive separate evidence and explicit owners; diff visibility is never described as full behavioral review.
- **Target platform:** a platform-sensitive ticket includes cook/package/install/run evidence on the required target.
- **Missing production facts:** implementation stops with a precise owner-routed blocker instead of guessing acceptance, ownership, or budget.
- **Source-control closeout:** only verified paths enter the configured commit/changelist/handoff, and the work item reflects its true review state.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/implement/SKILL.md`
- `docs/engineering/implement.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- `ask-matt`, `to-tickets`, and `wayfinder`, which route work into implementation
- `tdd` and `code-review`, whose responsibilities and evidence boundaries must agree
- the shared game-development ownership and evidence reference

No production skill has been edited as part of this assessment.

---

## 05 — `tdd`

**Accepted verdict: Medium — adaptation required**

**Decision:** accepted by the user during the one-skill review

**Patch class:** skill-local applicability and evidence gate

### Preserve

Red → green remains excellent for deterministic game behavior at stable seams: rules, transforms, inventory constraints, save-data migration, seeded generation logic, simulation math, validation, and protocol contracts. The skill's insistence on observable behavior, independent expected values, vertical slices, and tests that survive internal refactors is fully compatible with good game engineering.

The adaptation should bound TDD rather than dilute it. Tests remain authoritative for the behavior they can actually observe; they must not be promoted into proof of player feel, visual quality, editor integration, real-time budgets, or target-platform behavior.

### Normal game situations

- Test deterministic inventory, damage, cooldown, or save-migration rules.
- Exercise a gameplay component whose behavior depends on engine lifecycle and serialization.
- Tune movement or camera feel where numeric behavior is only part of the player outcome.
- Validate seeded procedural generation while also checking spatial quality and streaming volume.
- Test replicated gameplay behavior under latency, loss, prediction, and reconciliation.
- Diagnose a frame-time or memory regression in representative content.

### Current evidence

- `skills/engineering/tdd/SKILL.md:3` broadly triggers on features, bugs, red-green-refactor, and integration tests without stating when a game question is not falsifiable by a retained automated test.
- `skills/engineering/tdd/SKILL.md:8` says every section applies on every cycle.
- `skills/engineering/tdd/SKILL.md:12-24` defines good tests only through public interfaces and makes user-confirmed test seams an absolute precondition.
- `skills/engineering/tdd/SKILL.md:28-38` prohibits implementation-coupled and tautological tests, requires vertical red-green slices, and moves refactoring outside the loop.
- `skills/engineering/tdd/mocking.md:3-14` defines system boundaries through application examples and categorically says not to mock anything the project controls.
- `docs/engineering/tdd.md:11-21` recommends the skill for concrete input/output behavior but explicitly acknowledges that nothing decides whether a change is worth the loop and that missing independent truth produces tautological tests.
- `docs/engineering/tdd.md:27-45` makes red-green, vertical slices, pre-agreed seams, and boundary-only mocks the complete working model.
- `docs/engineering/tdd.md:61-63` recognizes that slow browser/end-to-end tests can destroy the red-green feedback loop, but carries no corresponding layering guidance for editor, engine, multiplayer, or target-device tests.
- `docs/engineering/tdd.md:77-84` defines success entirely through test structure and behavior, with no boundary between a green test and completion of a larger experiential or platform task.

### Concrete game failure

For camera or traversal feel, an agent can turn tuning values into expected literals and make the loop go green without proving that movement feels responsive, weighty, readable, or comfortable. If those literals came from the implementation proposal rather than an independent design truth, the test is the skill's own tautological anti-pattern wearing a game-specific disguise.

For engine-integrated behavior, a pure class test through a nominally public method can bypass actor/component lifecycle, serialization, editor wiring, world state, input routing, animation, physics, or replication. The unit seam may be correct while the feature fails in the engine. At the other extreme, running a full editor or multi-instance test on every red-green cycle makes feedback so slow that TDD loses its value.

Procedural, networking, performance, visual, and audio work often combines deterministic subproblems with risks that require seeded replay, representative scenes, profiler traces, multiple instances, captures, or human judgment. A retained automated test can guard the deterministic contract without closing the whole player-facing task.

This is **Medium** because the skill remains dependable when deliberately invoked for concrete deterministic behavior with an independent oracle. The predictable weakness is an unstated game boundary: without it, multidisciplinary or real-time work can acquire synthetic tests or stop at a green layer that does not cover the material risk.

### Narrow adaptation

1. Keep the current red-green discipline for deterministic behavior with an independent source of truth.
2. Add an applicability gate before agreeing seams: identify the player-facing outcome, then ask whether the proposed test can independently falsify the behavior. If the main uncertainty is feel, visual/audio quality, spatial composition, content volume, streaming, performance, or platform integration, use TDD only for deterministic subcontracts and name the higher evidence that will close the task.
3. Never manufacture an assertion merely to make an experiential task test-first. A design value copied from the proposed implementation is not an independent oracle.
4. Classify the test layer:
   - pure deterministic seam → fast unit/property test in the red-green loop;
   - engine lifecycle, serialization, visual scripting, physics, or world integration → focused engine-native functional/integration test at deliberate checkpoints;
   - end-to-end, multiplayer, packaging, or target-device behavior → slower scenario evidence after the tight behavior loop is green;
   - feel, visuals, animation, audio, and spatial readability → named playtest or creative-review evidence outside TDD.
5. Treat engine and platform services as system boundaries when they are expensive, nondeterministic, or unavailable in the tight loop. Use controlled clocks, seeded randomness, fakes, test worlds, recorded inputs, or adapters where they preserve the public contract; avoid mocking internal gameplay collaborators merely to force isolation.
6. Respect canonical engine lifecycle and serialization boundaries. A generic module seam must not erase Actor/Component/Scene/Package semantics or claim integration coverage it did not execute.
7. Use deterministic replay and property/invariant tests where state spaces or seeded simulation behavior make single examples weak.
8. Carry the agreed seams and every intentionally uncovered higher risk into the implementation handoff. “Green” means the tested contract holds, not that the entire game ticket is complete.
9. If no independent oracle or stable seam exists, route to the engine-native `prototype` branch or the artifact-appropriate `implement` loop instead of forcing TDD.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a request/response or transformation feature retains the current fast red-green path without game-specific overhead.
- **Deterministic game logic:** an inventory invariant is expressed through a stable public seam with independent expected values and vertical cycles.
- **Save migration:** example and property tests protect deterministic transformation, followed by engine serialization/load evidence when material.
- **Engine integration:** an Actor/Component or scene-bound behavior uses a focused engine-native test rather than pretending a pure unit test exercised lifecycle and wiring.
- **Experiential work:** camera feel receives automated coverage only for deterministic math; a named hands-on scenario remains the completion evidence.
- **Seeded procedural work:** deterministic replay/invariants guard generation while representative spatial, streaming, and content-volume review covers higher risks.
- **Network behavior:** unit contracts are supplemented by multi-instance conditions rather than mocked call counts standing in for replication.
- **Performance work:** correctness tests remain green, but a profiler trace against the agreed budget decides the real-time question.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/tdd/SKILL.md`
- `skills/engineering/tdd/tests.md`
- `skills/engineering/tdd/mocking.md`
- `docs/engineering/tdd.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- `implement`, `to-spec`, `code-review`, and `ask-matt`, which assign or evaluate test seams
- the shared game-development evidence reference

No production skill has been edited as part of this assessment.

---

## 06 — `code-review`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review

**Patch class:** skill-local mixed-artifact scope gate backed by the shared game reference

### Preserve

The skill's two independent questions remain valuable:

- **Standards:** was the work produced according to the project's accepted practice?
- **Spec:** does the work satisfy the authoritative request without omission or scope creep?

Pinning a fixed point, reading primary standards/spec sources, keeping the axes independent, and requiring cited findings are all sound. The adaptation should preserve that structure while making review coverage explicit and routing artifacts that a text diff cannot inspect.

### Normal game situations

- Review a gameplay-source-only change against engine coding standards and a ticket.
- Review a branch containing C++ or C# plus Blueprints, scenes, maps, materials, animation, audio, data, or imported assets.
- Review a lighting or VFX change whose acceptance includes visual intent and a frame-time budget.
- Review an in-game UI change that must work with gamepad focus, localization, safe zones, and gameplay readability.
- Review a Perforce changelist or shelf rather than a Git branch.
- Review work-in-progress editor changes that are not yet committed.

### Current evidence

- `skills/engineering/code-review/SKILL.md:3-11` promises review of a branch, PR, or work-in-progress change but defines the work solely as code in a Git diff and uses Standards plus Spec as its exhaustive axes.
- `skills/engineering/code-review/SKILL.md:17-23` requires `git diff <fixed-point>...HEAD`, rejects an empty committed diff, and therefore excludes staged and working-tree changes.
- `skills/engineering/code-review/SKILL.md:34-57` discovers only coding standards and applies a Fowler code-smell baseline to diff hunks.
- `skills/engineering/code-review/SKILL.md:58-72` sends only the diff, commit list, coding standards, and prose spec to the two reviewers.
- `skills/engineering/code-review/SKILL.md:74-78` aggregates those reports without a coverage check or re-verification.
- `docs/engineering/code-review.md:3-20` presents a diff as sufficient for deciding whether a change is built right and is the right thing.
- `docs/engineering/code-review.md:35-46` limits the Standards axis to code conventions and code smells.
- `docs/engineering/code-review.md:66-68` warns that sub-agent findings are hypotheses and are not re-verified.
- `docs/engineering/code-review.md:74-76` confirms that staged and working-tree changes are invisible even when `implement` invokes review before committing.
- `docs/engineering/code-review.md:78-84` defines success through the two text reports without accounting for unreviewable or unreviewed artifacts.

### Concrete game failure

A branch can contain correct-looking gameplay source plus a broken Blueprint reference, an unloaded map package, an animation with the wrong skeleton, a material that exceeds its shader budget, or an audio asset with incorrect import/compression settings. Git may list those paths or report only that binary files differ. Neither sub-agent can infer behavior, visual quality, serialization health, source-import provenance, or runtime cost from that diff, yet the current report has no “not reviewable here” state and can appear to cover the branch.

For an experiential change, the Spec axis can quote an acceptance line such as “camera remains readable during traversal” but cannot establish compliance without a named playable scenario. For performance, a reviewer can speculate from source yet cannot replace a profiler trace in representative content. For work in Perforce or in dirty editor packages, the fixed Git comparison may omit the work entirely.

The Fowler baseline can also mislabel canonical engine patterns when a project has not documented its conventions: reflection, serialization, component lifecycle, ECS/data-oriented structure, generated code, and engine-owned inheritance can make an application-oriented smell look actionable when it is part of the framework contract.

This is **High** because a normal mixed game change is likely to receive a confident but incomplete review and proceed with the wrong evidence. The skill does not itself mutate artifacts and remains dependable for mergeable source when its scope is explicit, so the verdict stays below Critical.

### Narrow adaptation

1. Preserve Standards and Spec as separate axes for every artifact they can actually evaluate.
2. Before dispatch, pin the review surface and inventory every changed path. Include the explicitly requested committed, staged, working-tree, changelist, or shelf state; fail if the intended work is absent rather than silently reviewing an older checkpoint.
3. Classify each path as mergeable source/text, engine-serialized text, generated output, source asset, or opaque editor package, and record its owning discipline and available evidence.
4. Keep the existing text-diff review for mergeable source. Discover engine/framework/project standards before applying the generic smell baseline, and treat canonical lifecycle, reflection, serialization, generated-code, component, or data-oriented patterns as framework constraints rather than generic refactor opportunities.
5. Expand the Standards sources conditionally to the project's relevant content, naming, folder, import, platform, accessibility, localization, and performance rules. Do not paste all of them into every reviewer; route only what applies to the changed artifact.
6. Give the Spec reviewer the acceptance evidence as well as the diff: editor validation, captures, playtest notes, profiler traces, multi-instance logs, cook/package results, and target-device runs where material. A requirement that depends on experience or runtime cannot pass from prose and paths alone.
7. Route binary, visual, audio, spatial, data, and editor-owned artifacts to the appropriate specialist or human reviewer in their owning tools. Require load/reference/compile checks and the lowest-cost evidence capable of falsifying the relevant failure.
8. Add an explicit **coverage report** alongside the two axes: artifact/path, owner, review method, evidence inspected, and status (`reviewed`, `blocked`, or `not reviewable in this pass`). Never describe the whole change as reviewed while material artifacts remain uncovered.
9. Keep independent review contexts, but use disclosed runtime adapters to choose top-level specialist sessions, persistent profiles, sub-agents, or human gates. The generic skill should require independence and ownership without hard-coding one harness.
10. Re-verify every reported finding against its cited source and artifact before aggregation. Findings remain hypotheses until that check lands.
11. Keep source-control mechanics project-native. A Git fixed point, Perforce changelist/shelf, or other reviewable checkpoint is acceptable; exact commands live in adapters.
12. State the boundary: this review checks standards, spec fidelity, and artifact coverage. It does not replace bug hunting, playtest, creative approval, profiling, certification, or QA unless those evidence-producing passes are explicitly included.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a normal source-only application diff retains the current two-axis review without a game-content checklist.
- **Gameplay source:** a source-only engine change is checked against project/engine conventions and the originating spec with cited findings.
- **Mixed source/content:** source receives text review while each opaque package has an owner, owning-tool review, and explicit coverage status.
- **Experiential change:** a camera or HUD requirement cannot pass Spec without the named playable or runtime evidence.
- **Visual budget:** a material/VFX change includes representative visual review and profiler/budget evidence rather than diff speculation.
- **Serialized asset:** a scene/map/Blueprint change loads and validates in the owning editor; a listed binary path is not mistaken for reviewability.
- **Work in progress:** staged or dirty work is included only when explicitly selected and verified as the intended review surface.
- **Non-Git project:** a changelist or shelf can serve as the fixed point through an adapter without forcing a Git branch model.
- **Coverage failure:** any material unreviewed artifact prevents a whole-change pass and names the owner/evidence still required.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/code-review/SKILL.md`
- `docs/engineering/code-review.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- `implement`, whose closeout currently treats this as complete review
- `ask-matt`, `to-spec`, and `to-tickets`, which define the route and acceptance inputs
- the shared game-development artifact, ownership, and evidence reference
- runtime adapters for independent specialist review and non-Git review surfaces

No production skill has been edited as part of this assessment.

---

## 07 — `diagnosing-bugs`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review

**Patch class:** skill-local faithful-loop branch backed by runtime adapters

### Preserve

The skill's strongest discipline is exactly right: establish an observable signal for the reported symptom before falling in love with a theory. Reproduce the user's bug, sharpen the signal, minimise without changing the phenomenon, rank falsifiable hypotheses, instrument one prediction at a time, re-run the original scenario, and retain a regression guard where a correct seam exists.

Game adaptation should broaden what counts as a **tight loop**, not permit guess-first debugging. “Tight” must mean the shortest repeatable loop that remains faithful to the causal game system, even when that loop needs an editor, representative scene, multiple clients, a target device, profiler capture, or structured human observation.

### Normal game situations

- A deterministic inventory or save-data failure reproducible in an automated test.
- A one-frame animation, lighting, camera, or VFX pop visible only during a specific runtime transition.
- A streaming hitch that appears on target hardware with cold caches and representative world content.
- A network desync that requires multiple instances plus latency and packet loss.
- A long-session memory leak or crash that takes minutes to trigger.
- A bad reimport, serialization, or editor-only package problem whose source asset and import settings matter.

### Current evidence

- `skills/engineering/diagnosing-bugs/SKILL.md:18-37` makes a red-capable feedback loop the absolute gate but offers an application-shaped ladder of tests, HTTP, CLI, browser, traces, function harnesses, Git bisection, and a Bash HITL script.
- `skills/engineering/diagnosing-bugs/SKILL.md:39-47` defines a useful loop as seconds-long and deterministic.
- `skills/engineering/diagnosing-bugs/SKILL.md:49-55` handles nondeterminism only by increasing the reproduction rate and otherwise stops without hypothesis work.
- `skills/engineering/diagnosing-bugs/SKILL.md:57-66` requires one already-run, deterministic, seconds-fast, agent-runnable command before Phase 2.
- `skills/engineering/diagnosing-bugs/SKILL.md:68-86` requires minimisation until every remaining element is load-bearing, without distinguishing smallest from smallest **faithful** representative scenario.
- `skills/engineering/diagnosing-bugs/SKILL.md:100-112` prefers debugger/logs and gives performance a baseline/profiler branch, but provides no visual, audio, render, animation, asset, network, streaming, or target-device instrumentation path.
- `skills/engineering/diagnosing-bugs/SKILL.md:114-140` wisely permits no regression test when no correct seam exists, but completion still centers on the command/test and instructs deletion or relocation of throwaway artifacts without editor-package safety.
- `skills/engineering/diagnosing-bugs/scripts/hitl-loop.template.sh:1-44` assumes Bash, a web app, terminal prompts, and text observations.
- `docs/engineering/diagnosing-bugs.md:23-40` repeats the seconds-fast, deterministic, unattended command as the required loop.
- `docs/engineering/diagnosing-bugs.md:70-71` says redaction is absent even though `SKILL.md:12-16` now contains a redaction gate, so the public documentation is stale against the current behavior.

### Concrete game failure

A console streaming hitch may require a packaged build, cold cache, a particular traversal route, representative content volume, and several minutes per run. Replacing that with a two-second isolated harness can remove the streaming pressure that causes the hitch; insisting on seconds and determinism either blocks diagnosis or produces a fast loop for the wrong symptom. Minimising the map until every object is individually load-bearing can likewise destroy the representative workload.

A one-frame animation or lighting pop may need frame capture, slowed playback, a timestamped video, or structured human observation rather than a command-line assertion. A network desync may be reproducible only probabilistically across clients under stated adverse conditions. A long-session memory leak cannot honestly become a seconds-long loop. These are diagnosable when the conditions, signal, rate, and evidence are controlled, but the current gate rejects them before hypotheses can be tested.

Editor and content failures introduce mutable package state. Adding instrumentation, reimporting, switching versions, or deleting a debug map without confirming ownership, source provenance, recovery, and intended saves can change the evidence or damage authored work. The shipped HITL template also cannot capture the media, engine state, device details, or profiler artifacts needed to distinguish many game hypotheses.

This is **High** because the default gate can block or distort ordinary runtime, content, network, performance, and target-device diagnoses while still claiming general bug/performance coverage. The core method remains safe and highly valuable for deterministic failures, and the skill does not categorically force destructive action, so the verdict stays below Critical.

### Narrow adaptation

1. Preserve the rule: no causal conclusion before an observable signal for the user's exact symptom.
2. Classify the failure before constructing the loop: deterministic logic, engine integration, visual/audio/animation, editor/asset, streaming/performance/memory, network, packaging/platform, or mixed.
3. Replace “one seconds-fast agent command” with the shortest **faithful repro protocol**. It may be a command, engine automation, deterministic replay, test map/scene, recorded input, multi-instance script, profiler capture, packaged target run, or structured human procedure.
4. Record the loop's environment and quality explicitly: engine/build revision, map/scene/content, device, graphics/runtime settings, cache state, input or network conditions, run duration, reproduction rate, symptom signal, and captured evidence.
5. Prefer deterministic and unattended loops when fidelity survives. When it does not, maximise repeatability, control conditions, timestamp observations, and quantify the reproduction rate rather than fabricating determinism.
6. Minimise to the smallest **faithful** scenario. Preserve representative content volume, concurrency, duration, hardware, cache, timing, or world context when any of those are causal variables.
7. Add artifact-specific instrumentation routes: engine debugger/visual logger, frame/render capture, animation and audio diagnostics, profiler/memory trace, asset/reference/import audit, network emulation and multi-instance logs, package/cook logs, and target crash artifacts. Exact tools and commands live in engine/platform adapters.
8. Make structured human observation first-class when perception or unavailable hardware is part of the signal. The protocol should capture media, timestamps, settings, expected/observed result, and confidence—not only a yes/no terminal answer.
9. Before mutating editor assets or import state, confirm the authoritative source, one mutable owner, a recovery point, and intentional save paths. Do not broad-save, reimport, migrate, or delete packages merely to tighten the loop.
10. Keep the correct-seam regression-test escape hatch. Where automation is impossible, preserve the smallest reliable regression protocol and evidence artifact, then route any necessary recurring human/target check to the project's QA or review process.
11. Close the fix against the original unminimised scenario and every material layer: test, editor/runtime behavior, profiler/budget, multiplayer, package, or target device as applicable.
12. Clean up instrumentation and throwaway artifacts intentionally. Preserve reusable primary evidence when it explains the bug; delete editor assets only through their owning workflow and verify references/redirectors or equivalent state.
13. Keep source-control and shell mechanics project-native. Commit/PR, changelist/shelf, Bash, PowerShell, editor automation, and Hermes specialist routing belong in disclosed adapters.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a deterministic service failure still produces the current fast red command, minimal repro, hypotheses, fix, and regression test.
- **Deterministic game bug:** a save or inventory defect uses a tight automated engine or pure-logic loop and a retained test at the correct seam.
- **Visual one-frame defect:** a timestamped capture and repeatable runtime protocol qualify as the red signal; no fake numeric assertion is invented.
- **Streaming regression:** representative world content, cache state, target hardware, profiler capture, and budget remain in the loop even when runs take minutes.
- **Network desync:** multiple instances, stated latency/loss, synchronized logs, and reproduction rate define the loop.
- **Long-session leak:** duration and memory trace remain causal instead of being rejected for not fitting seconds.
- **Editor/asset failure:** source/import/package ownership and recovery are established before reimport or mutation, and cleanup does not damage references.
- **No automated seam:** the workflow preserves a structured regression protocol and routes the recurring check without claiming an automated test exists.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/diagnosing-bugs/SKILL.md`
- `skills/engineering/diagnosing-bugs/scripts/hitl-loop.template.sh` or a disclosed platform-neutral replacement
- `docs/engineering/diagnosing-bugs.md`, including its stale redaction claim
- `skills/engineering/README.md`
- the top-level `README.md`
- `ask-matt`, `triage`, and `improve-codebase-architecture`, which route into or out of diagnosis
- the shared game-development artifact, ownership, evidence, and budget reference
- engine/platform/runtime diagnostic adapters

No production skill has been edited as part of this assessment.

---

## 08 — `research`

**Accepted verdict: Medium — adaptation required**

**Decision:** accepted by the user during the one-skill review

**Patch class:** skill-local authority and empiricism branch

### Preserve

The defining strength is source discipline: ask a narrow factual question, follow claims to the sources that own them, cite the result, and leave a durable artifact that can feed a later decision without outsourcing that decision. That is useful for engine APIs, platform requirements, source material, pipeline tools, licensing, and production practice.

Game adaptation should sharpen **which source can own which kind of claim**. Official documentation can establish what a vendor documents; it cannot by itself establish behavior in this engine fork, project configuration, renderer, scene, build, or target device. A research artifact must keep documented, observed, inferred, and unresolved claims separate.

### Normal game situations

- Determine whether a rendering or platform feature is documented for an exact engine and target version.
- Establish whether a third-party plugin supports the project's engine branch and carries an acceptable license.
- Research a source-faithful character, location, object, or event across original material, adaptation material, and an approved project bible.
- Understand a platform certification rule without exposing confidential platform-holder material.
- Investigate an art or content pipeline whose real behavior depends on project import settings and representative assets.
- Study industry practice where the strongest evidence may be a technical talk, postmortem, paper, or measured case rather than first-party product documentation.

### Current evidence

- `skills/engineering/research/SKILL.md:3` defines research as external documentation/API fact gathering and requires a Markdown file in the repository.
- `skills/engineering/research/SKILL.md:6` hard-codes a background-agent execution shape.
- `skills/engineering/research/SKILL.md:10` admits only official docs, source code, specs, and first-party APIs as primary sources.
- `skills/engineering/research/SKILL.md:11-12` requires claim citations and repository-local placement but provides no version, evidence-class, confidentiality, licensing, or retention gate.
- `docs/engineering/research.md:3-5` says primary-source citations are sufficient for a reusable answer file.
- `docs/engineering/research.md:11-21` correctly distinguishes external facts from “does it work in this codebase,” routing the latter to `prototype`, but does not cover engine/project/hardware questions that mix both.
- `docs/engineering/research.md:23-29` defines unguarded background delegation and leaves file placement to repository convention.
- `docs/engineering/research.md:39-45` acknowledges that transient research can become stale repository cruft and that source trust is left to model judgement.
- `docs/engineering/research.md:55-57` confirms the skill has no stopping criterion.
- `docs/engineering/research.md:63-69` defines success through one Markdown file, links to official sources, and enough prose to make the decision without revisiting the evidence.

### Concrete game failure

An engine vendor's documentation may say a feature is supported while the project uses a different minor version, custom fork, disabled plugin, renderer path, platform profile, or incompatible content setup. A well-cited report can therefore state the documentation truth and still give the project the wrong operational answer. The correct output is “documented for X; unverified in project Y” plus the smallest empirical check, not a collapsed yes/no.

Source-faithful research has a different authority structure. An original novel, film adaptation, licensed reference pack, internal IP bible, and accepted project decision can conflict without any one source being generically “official.” Flattening them into a single answer erases canon level and approved adaptation constraints. Conversely, industry best-practice questions may require credible secondary evidence such as conference talks, postmortems, and papers; refusing all secondary sources can leave the report broad but incomplete.

Repository-first output creates production and legal risk when the material includes confidential platform documentation, licensed reference imagery, NDA text, personally identifying telemetry, large captures, or short-lived version claims. Even a harmless Markdown note can become stale authority for future agents if it lacks date/version scope and retention status.

This is **Medium** because the primary-source/citation discipline remains dependable for bounded external facts, and the skill already routes clearly project-local experiments toward `prototype`. The predictable gap is mixed game evidence: exact versions, canon authority, licensing/confidentiality, and empirical project behavior need explicit separation.

### Narrow adaptation

1. Begin with the exact question, the decision it informs, the in-scope engine/tool/source versions and platforms, and a stopping criterion. Name what the research will not establish.
2. Classify each material claim before selecting sources:
   - normative requirement or API contract;
   - exact implementation/source behavior;
   - project-specific empirical behavior;
   - player-facing or creative judgement;
   - canon/source-material fact or approved adaptation decision;
   - licensing, certification, or production-practice claim.
3. Use the authority appropriate to the claim. Prefer versioned official docs/specs/source for documented behavior; project configuration/builds for local state; original or contractually approved material for canon; license texts and platform-holder sources for obligations. Preserve conflicts instead of silently averaging them.
4. Permit high-quality secondary evidence when the question itself concerns practice, measured experience, historical outcomes, or unavailable first-party detail. Label it as secondary, corroborate load-bearing claims where possible, and distinguish vendor marketing from technical evidence.
5. Record version, revision, platform, access date, and relevant configuration beside every claim whose truth can drift. Do not generalize one engine version, renderer, device, or plugin release to another.
6. Separate **documented**, **observed**, **inferred**, and **unresolved** findings in the report. Never let documentation stand in for project behavior.
7. When a load-bearing claim depends on the project's engine loop, content, renderer, networking, hardware, import settings, or editor serialization, route the smallest empirical question to `prototype` or `diagnosing-bugs` and link the resulting evidence back into the report.
8. Record licensing and provenance for third-party assets, plugins, datasets, code, audio, and reference material when adoption or redistribution is part of the decision.
9. Apply confidentiality and data-minimization gates before writing. Summarize restricted platform/IP material without copying it into an unauthorized location; never place secrets, NDA text, licensed source assets, or sensitive telemetry into a public repository.
10. Discover the project's approved research location and retention policy. Use the repository only when the artifact is meant to become shared project context; otherwise use the configured tracker, knowledge base, or local research area and leave a durable pointer. Mark time-sensitive reports with review/expiry conditions.
11. Require claim-level verifiable citations, quote exact wording for critical or disputed facts, and record unresolved source conflicts. Mechanical citation ledgers may live in runtime-specific tooling; the generic skill requires the behavior, not one implementation.
12. Keep delegation model-neutral and non-recursive. The runtime adapter may use a visible top-level session, persistent profile, background worker, or another approved mechanism, but exactly one owner produces and verifies the artifact.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a versioned third-party API question still produces the current concise, cited external research artifact.
- **Engine-version claim:** the report names exact engine/plugin/platform versions and separates vendor documentation from project verification.
- **Project-dependent behavior:** a renderer or import claim routes to a small empirical check rather than being inferred from docs alone.
- **Source-faithful adaptation:** conflicting original, adaptation, bible, and project-decision sources retain their authority levels and unresolved differences.
- **License decision:** a plugin or asset recommendation cites the actual license and records redistribution/attribution constraints.
- **Restricted platform material:** the report preserves a decision-useful summary and authorized pointer without copying confidential content into the repo.
- **Industry practice:** a technical talk or postmortem may support a labeled practice claim without being misrepresented as a normative engine contract.
- **Retention:** a short-lived version report is dated and placed under the configured retention policy instead of becoming permanent unscoped authority.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/research/SKILL.md`
- `docs/engineering/research.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- `ask-matt`, `wayfinder`, `prototype`, `diagnosing-bugs`, and `to-spec`, which route research or consume its output
- the shared game-development authority and evidence reference
- runtime adapters for delegation, citation verification, restricted-source handling, and project research storage

No production skill has been edited as part of this assessment.

---

## 09 — `wizard`

**Accepted verdict: Critical — adaptation required**

**Decision:** accepted by the user during the one-skill review

**Patch class:** direct credential and irreversible-action safety self-gate

### Preserve

The skill's central product is valuable: turn a fragile human-only procedure into explicit, ordered stages with dependencies, progress, confirmation gates, resumability, verification, and a final account of what succeeded or remains. Refusing to invent unfamiliar dashboard steps and keeping runtime secret entry outside the agent's conversation are both strong instincts.

Game adaptation should preserve the guided procedure while separating its **behavior** from one Bash/`.env`/GitHub implementation. The correct artifact and secret destination depend on the host OS, engine, platform SDK, studio policy, CI system, credential store, editor state, and reversibility of the operation.

### Normal game situations

- Install and license a console SDK, pair a development kit, and verify a target build can run.
- Provision signing certificates, keystores, provisioning profiles, or platform-service credentials.
- Configure DCC tools, source-control workspaces, engine plugins, build agents, or proprietary platform portals.
- Migrate project/editor assets or change engine/project settings through an irreversible GUI workflow.
- Accept an SDK or middleware license whose material may be confidential or redistribution-restricted.
- Set up a new developer's Windows workstation where native installers, registry changes, elevated permissions, reboots, and editor validation are involved.

### Current evidence

- `skills/engineering/wizard/SKILL.md:3-10` fixes every human procedure to an interactive Bash script that opens URLs, captures values, writes `.env`, and sets GitHub secrets.
- `skills/engineering/wizard/SKILL.md:12` makes the script ephemeral by default but allows it to be committed when repeatable.
- `skills/engineering/wizard/SKILL.md:16-25` instructs the agent to read `.env`, `.env.*`, and CI files during scoping, then classify captured values only as `.env`, GitHub secret, both, or nowhere.
- `skills/engineering/wizard/SKILL.md:27-37` assumes each stage is a dashboard/URL journey and uses a fixed helper library that must not be adapted.
- `skills/engineering/wizard/SKILL.md:39-44` validates only Bash syntax/static flow and explicitly makes the user's first live run the behavioral test.
- `skills/engineering/wizard/template.sh:25-29,91-139` reads existing `.env` values and writes captured values back to a plaintext file without a project security-policy or file-permission gate.
- `skills/engineering/wizard/template.sh:141-167` supports only GitHub Actions as a managed secret/variable destination.
- `skills/engineering/wizard/template.sh:169-180` can print “Setup complete” while skipped work remains.
- `docs/engineering/wizard.md:22-46` repeats Bash, `.env`, GitHub, dashboard, and static-verification assumptions.
- `docs/engineering/wizard.md:42-44` still advertises “time remaining,” although the current template no longer implements time estimates.
- `docs/engineering/wizard.md:57-59` claims runtime credentials cannot enter model context, but the scoping instructions still tell the agent to read secret-bearing `.env` files.

### Concrete game failure

During setup for a platform build, the scoping pass can read an existing `.env` that contains production or platform credentials into the agent context even though the generated wizard would have captured new secrets safely at runtime. The template can then persist signing or platform secrets in plaintext `.env`, with no guarantee that the file is ignored, access-restricted, correctly formatted, or an approved storage location. The public claim that secrets stay out of model context is therefore not guaranteed by the actual process.

Many game setup procedures are not browser journeys. Console SDKs, devkit pairing, DCC licenses, engine plugins, signing tools, registry changes, IDE components, device drivers, reboots, and editor project settings are native, platform-specific, and sometimes confidential. A Bash script that has only been syntax-checked cannot establish that the native procedure is correct, and “the first run is the test” is unsafe for migrations, certificate changes, production services, or editor serialization.

An irreversible asset migration or engine-setting transition needs authoritative ownership, a clean editor state, backups or a source-control recovery point, a dry run or representative sandbox when possible, explicit rollback limits, intentional saves, and post-step validation. A yes/no confirmation by itself does not make the action recoverable.

This is **Critical** because the directly invoked workflow can expose existing credentials during scoping, persist sensitive game/platform material to an unapproved plaintext destination, and make an untested first run the execution path for irreversible procedures. These are safety failures, not merely missing game examples.

### Narrow adaptation

1. Preserve the stage model, dependency order, human confirmation, resumability, and final verification summary.
2. Start by classifying the procedure: reversible setup, credential provisioning, restricted-platform setup, native tool installation, device pairing, editor/project mutation, data/content migration, or production cutover. Record host OS, engine/tool versions, required privileges, expected reboots, ownership, and rollback limits.
3. Never read secret-bearing files or values into the agent context. Inspect schemas, example files, variable names, secret references, and sanitized status only. If an existing secret's presence must be checked, use a trusted local command that returns existence/validity without the value.
4. Map every captured value to the project's approved destination before authoring: OS credential manager/keychain, platform SDK store, encrypted studio vault, CI secret store, hardware-backed key store, protected file, or intentionally non-secret config. Plaintext `.env` is allowed only when project policy explicitly permits it; secret values never appear in generated source, logs, chat, or committed artifacts.
5. Select the procedure artifact from the real environment. Bash may remain one adapter; PowerShell, signed native scripts, package-manager commands, platform CLIs, editor automation, or a non-executable guided checklist may be safer elsewhere. Do not force a script where the procedure cannot be validated or automated safely.
6. Keep confidential SDK, platform-holder, license, and IP instructions in authorized storage. A committed wizard must be sanitized, redistribution-safe, free of secrets, and approved for the repository's visibility.
7. For irreversible or high-impact stages, require a preflight: authoritative owner, backup/snapshot or source-control recovery point, clean/known editor and working-tree state, affected asset/file inventory, dry run or sandbox where feasible, rollback procedure, and a human confirmation that names the consequence.
8. For editor/content mutations, establish one mutable owner, close or stabilize conflicting editor sessions, save only intentional packages, and validate references, imports, serialization, and representative content after each boundary.
9. Give every stage a non-secret postcondition that can be checked: tool/version installed, service identity authenticated, device reachable, certificate fingerprint present, build signs, editor loads, package compiles, target build launches. Do not print “complete” while a required stage is skipped or unverified.
10. Separate discovery from execution. Verify current vendor/platform instructions against authorized, versioned sources before encoding clicks or commands; stale UI text must fail closed rather than invite guessing.
11. Rehearse destructive procedures in a disposable environment or with a dry-run mode whenever possible. Static syntax checks remain necessary but are not sufficient.
12. Keep exact shell, OS, engine, CI, platform, secret-store, and Hermes mechanics in disclosed adapters. The generic skill defines the safe stage contract.
13. Retain or delete the generated artifact according to a stated policy. One-off procedures stay private and ephemeral; repeatable procedures become reviewed project tooling with version ownership and verification instructions.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** an ordinary web-service credential setup can still generate the current Bash wizard when Bash, `.env`, and GitHub Actions are explicitly the approved environment.
- **Secret-safe discovery:** scoping detects required credential names and whether they are configured without reading or displaying any value.
- **Windows game workstation:** native installers, elevated actions, reboots, registry/toolchain state, and editor validation select a Windows-appropriate procedure instead of a nominally cross-platform Bash script.
- **Platform signing:** secrets land only in the approved credential/CI stores, confidential instructions stay authorized, and a non-secret signing verification proves success.
- **Devkit setup:** device pairing closes only after the required target build installs and launches, not after the user merely confirms a portal step.
- **Editor migration:** owner, backup/recovery, affected packages, dry run, intentional saves, and reference/load checks precede completion.
- **Irreversible cutover:** the first production run is not the first behavioral test; rehearsal or explicit inability to rehearse and rollback limits are recorded.
- **Committed wizard:** the artifact contains no secrets or restricted material and has a versioned owner plus verification path.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/wizard/SKILL.md`
- `skills/engineering/wizard/template.sh`, retained as one Bash adapter rather than the universal contract
- new disclosed OS/platform/editor/secret-store adapter guidance
- `docs/engineering/wizard.md`, including its stale time-estimate and secret-context claims
- `skills/engineering/README.md`
- the top-level `README.md`
- `ask-matt`, `implement`, and `setup-matt-pocock-skills`, which route or expose setup work
- the shared game-development ownership, editor safety, platform, and evidence reference

No production skill has been edited as part of this assessment.

---

## 10 — `setup-matt-pocock-skills`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review

**Patch class:** shared game reference plus a setup-local project-discovery branch

### Preserve

The setup pattern is right: inspect the project, distinguish discovered facts from choices, recommend defaults, let the user confirm, and write concise per-project configuration that downstream skills can trust. Centralizing tracker and domain-document conventions prevents every skill from guessing independently.

Game adaptation should extend that same pattern to the few cross-disciplinary facts that all later work needs. It should not become a giant studio questionnaire or duplicate engine manuals. The output is a concise set of authoritative pointers, ownership/safety rules, material budgets, and evidence expectations.

### Normal game situations

- An Unreal project uses Perforce for game content, GitHub for tools, Jira for production work, and platform-restricted build documentation.
- A Unity project stores mergeable YAML plus non-mergeable source art and uses locks for selected scenes/prefabs.
- A source-faithful adaptation has a novel, adaptation references, an internal canon bible, and approved project decisions with different authority.
- A project targets PC and console with different performance, memory, input, packaging, and certification constraints.
- Several specialists work in parallel but maps, scenes, graphs, source assets, and packages require one mutable owner.
- The repo contains `CLAUDE.md`, but the active harness reads `AGENTS.md` or another canonical project instruction file.

### Current evidence

- `skills/engineering/setup-matt-pocock-skills/SKILL.md:3-15` scopes setup to issue tracker, triage labels, and domain-doc layout.
- `skills/engineering/setup-matt-pocock-skills/SKILL.md:19-30` explores Git remotes, agent files, context/ADR paths, local scratch issues, installed triage, and JavaScript-monorepo signals, but no engine/project descriptor, platforms, source-control model, editor packages, content pipeline, authority, ownership, or budgets.
- `skills/engineering/setup-matt-pocock-skills/SKILL.md:38-61` uses source-host remotes to recommend a tracker and defaults domain layout from app/monorepo topology.
- `skills/engineering/setup-matt-pocock-skills/SKILL.md:63-110` confirms and writes only tracker, labels, and domain docs.
- `skills/engineering/setup-matt-pocock-skills/SKILL.md:74-80` selects `CLAUDE.md` whenever it exists, regardless of the active harness or canonical project instruction source.
- `skills/engineering/setup-matt-pocock-skills/SKILL.md:114-116` declares setup complete without verifying tracker labels/operations or any broader production prerequisites.
- `skills/engineering/setup-matt-pocock-skills/domain.md:13-39` models only single-context or `src/<context>` application/monorepo layouts.
- `skills/engineering/setup-matt-pocock-skills/triage-labels.md:5-15` maps five generic states, including only `ready-for-agent` and `ready-for-human`, with no discipline ownership or evidence/review state.
- The GitHub/GitLab/local templates define issue operations and wayfinder links, but do not distinguish the production tracker from source hosting or source control.
- `docs/engineering/setup-matt-pocock-skills.md:3-7,28-49` reinforces the three-decision setup model.
- `docs/engineering/setup-matt-pocock-skills.md:57-63` acknowledges template drift and harness-blind instruction-file selection.
- `docs/engineering/setup-matt-pocock-skills.md:65-70` confirms setup does not create or verify required tracker labels, including wayfinder labels that can make the first run fail.

### Concrete game failure

Consider an Unreal game whose code/tools mirror lives on GitHub, production work lives in Jira, and content is controlled through Perforce with exclusive checkout. The current setup sees the GitHub remote and recommends GitHub Issues, writes no source-control or package-ownership rules, and declares the engineering skills ready. Downstream flows can then treat Git as the production system, parallelize work on one map, review binary paths as if they were diffs, or commit without the project's changelist/lock procedure.

Even when the user corrects the tracker choice, downstream skills still lack the game facts that choose safe behavior: engine/version, target platforms, authoritative vision/source material, mutable package classes, source/import boundaries, generated state, specialist ownership, performance budgets, and required playtest/editor/package evidence. Every later skill must rediscover them or guess, so setup has not fulfilled its role as the run-once precondition.

The app-shaped domain layout can also misclassify a game project whose meaningful contexts are modules/plugins, gameplay systems, maps/world regions, or content pipelines rather than `packages/*`. Harness-blind instruction-file selection can write the only pointers into a file the active agent never reads. Committed setup docs may expose restricted platform/IP details if they copy content instead of storing authorized pointers.

This is **High** because the setup omission systematically sends ordinary game work into unsafe or inappropriate downstream defaults. The skill itself confirms before writing and does not directly mutate editor assets, so it remains below Critical.

### Narrow adaptation

1. Keep the existing inspect → recommend → confirm → write sequence and the current application path.
2. Detect whether this is a game project from current source: engine/project descriptors, engine version files, project settings, modules/plugins, content/source directories, build targets, source-control config, and existing project instructions. Do not read secrets or restricted source contents during detection.
3. Separate four tools that must not be conflated: source host, source control, production tracker, and review/build system. Discover and confirm each independently; a GitHub remote is evidence about hosting, not proof that GitHub Issues holds production work.
4. Add one concise project-specific game-development reference, linked from the canonical agent instruction file. It should point to rather than duplicate:
   - intended player experience, design pillars, tone, and approved scope owner;
   - authoritative source/canon/design docs and conflict order;
   - engine/project version, platforms, build/cook/package entry points, and restricted-doc locations;
   - source-control model, locks/LFS/streams, generated state, source-import provenance, and recovery conventions;
   - material artifact classes and one-owner rules for packages/scenes/maps/graphs/source assets;
   - material performance/platform budgets;
   - the evidence and human approvals used for code, editor integration, feel, visual/audio/content, networking, performance, and target builds;
   - specialist ownership and expected handoff evidence.
5. Ask only about missing, material choices. If the project already names its vision, platforms, budgets, tracker, source control, and owners, record pointers silently and avoid governance duplication.
6. Derive context layout from actual project topology and authority boundaries—not only JavaScript workspace signals. Preserve engine terminology such as Module, Plugin, Actor/Component, Scene, Package, Map, and project-specific content domains.
7. Keep `CONTEXT.md` focused on shared language and accepted decisions. Do not force all creative direction, technical settings, content inventories, or engine docs into the glossary.
8. Choose the instruction surface the active harness actually reads, or update one canonical model-neutral file and make other harness files thin pointers. Existing file presence alone is not authority.
9. Store only authorized pointers to confidential platform/IP material. Never copy secrets, NDA content, restricted SDK instructions, licensed reference assets, or sensitive telemetry into committed setup docs.
10. Verify the configured tracker and label vocabulary with non-destructive reads; create missing labels only with user approval or report the exact prerequisite. Confirm wayfinder dependencies/labels and issue operations before declaring setup ready.
11. Version the generated configuration/template contract. On skill updates, detect stale generated docs and offer a bounded migration that preserves project edits rather than telling users both “run once” and “rerun after updates.”
12. Keep runtime-specific commands and persistent-profile mappings in disclosed adapters. The generic setup stores stable project facts and ownership, not Hermes-, Claude-, Codex-, Unreal-, or provider-specific mechanics.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a normal single-package web repository still receives the existing tracker/labels/domain setup without game questions.
- **Unreal + Perforce:** the setup distinguishes Git hosting from Perforce content control and Jira production work, records package ownership/locks, and links engine/platform evidence.
- **Unity mixed assets:** mergeable scripts/YAML and non-mergeable source content receive different ownership and review rules.
- **Source-faithful game:** original source, adaptations, internal bible, and accepted project decisions are pointed to with an explicit authority order.
- **Multi-platform project:** platform-specific budgets and package/target evidence are discoverable without copying restricted documentation.
- **Parallel specialists:** one-owner mutable assets and evidence-backed handoffs are recorded without assigning two profiles to the same package.
- **Harness neutrality:** the active agent receives the pointers through the canonical file even when stale harness-specific files coexist.
- **Setup verification:** tracker operations and required labels are proven available or left as named prerequisites; setup never claims readiness after a silent failure.
- **Upgrade:** rerunning after a skill version change identifies only stale generated surfaces and preserves project-authored decisions.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/setup-matt-pocock-skills/SKILL.md`
- `skills/engineering/setup-matt-pocock-skills/domain.md`
- issue-tracker and triage-label templates where production-tool distinctions or verification change
- a new project-specific game-development reference template and optional runtime adapters
- `docs/engineering/setup-matt-pocock-skills.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- `ask-matt` and every downstream engineering skill that consumes setup facts
- invocation metadata and the repository's canonical agent-instruction guidance

No production skill has been edited as part of this assessment.

---

## 11 — `grill-with-docs`

**Accepted verdict: Pass — no direct skill-body adaptation required**

**Decision:** accepted by the user during the one-skill review

**Patch class:** no change to the thin wrapper; inherit primitive fixes and resynchronize public docs

### Preserve

`grill-with-docs` is intentionally one line: run the `grilling` interview while applying `domain-modeling`. That composition is useful for games. A fuzzy game idea benefits from a disciplined interview, a shared vocabulary, and durable records of genuinely hard-to-reverse decisions.

Keeping the wrapper thin is important. Player outcome, source/canon authority, playable uncertainty, creative ambiguity, documentation ownership, and ADR fitness belong in the two primitives or the shared game-development reference—not copied into this wrapper as a second policy source.

### Normal game situations

- Sharpen a combat, traversal, camera, quest, encounter, world, art, or narrative idea that fits one focused session.
- Resolve project language shared by design, engineering, art, audio, narrative, and production.
- Record a hard-to-reverse cross-disciplinary decision without turning every tuning choice into an ADR.
- Stop a conversation when a feel, visual, spatial, audio, performance, or multiplayer question needs a playable/production-verifiable experiment.
- Preserve source/canon authority while deliberately choosing an adaptation departure.

### Current evidence

- `skills/engineering/grill-with-docs/SKILL.md:3-7` contains only the trigger description and delegation to `grilling` plus `domain-modeling`; it defines no independent interview, artifact, evidence, or safety behavior.
- `docs/engineering/grill-with-docs.md:3-5` describes the wrapper's effect entirely through the interview and domain-document primitives.
- `docs/engineering/grill-with-docs.md:23-27` makes those two skills explicit prerequisites.
- `docs/engineering/grill-with-docs.md:29-41` assigns terms to `CONTEXT.md`, qualifying decisions to ADRs, and everything else to the live conversation—the behavior owned by `domain-modeling` and downstream `to-spec`.
- `docs/engineering/grill-with-docs.md:43-47` acknowledges one-writer state and doc drift but does not add wrapper-specific coordination.
- `docs/engineering/grill-with-docs.md:54-61` documents that dependency-loading and conversation-to-spec handoff are the actual failure points.
- `docs/engineering/grill-with-docs.md:72-88` defines success and flow through the two dependencies and later `to-spec`/`implement` routing.

### Concrete-failure test

The normal game failures visible through this command are real, but none originates in the wrapper:

- an interview that ignores intended player experience or tries to resolve feel through prose belongs to `grilling`;
- app-domain vocabulary that erases engine/content semantics or writes premature ADRs belongs to `domain-modeling`;
- concurrent edits to the same glossary/ADR surface belong to domain-document ownership and setup;
- routing a runtime-dependent question to conversation instead of an engine-native prototype belongs to `ask-matt`, `grilling`, and `prototype`;
- loss of non-ADR decisions between interview and spec belongs to the `to-spec` handoff.

Adding those rules directly here would duplicate policy, make the wrapper larger than its primitives, and create a second place for game behavior to drift. Under the review rubric, no wrapper-local concrete failure justifies a direct patch.

### Required dependency behavior

The Pass verdict is contingent on the rest of the adaptation landing in the owning locations:

1. `grilling` starts from intended player experience and fixed creative constraints, distinguishes facts from decisions, preserves useful ambiguity, and routes empirical questions to the smallest playable or production-verifiable experiment.
2. `domain-modeling` preserves canonical engine/art/narrative terminology, separates vocabulary from vision/specs/content inventories, records only accepted and appropriately durable decisions, and protects one-writer ownership.
3. `setup-matt-pocock-skills` exposes authoritative game/source docs, mutable document ownership, and the project evidence model.
4. `ask-matt` and `prototype` handle the engine-native detour; this wrapper should not reproduce their route.
5. `to-spec` consumes the same session before context is cleared and preserves settled player-facing acceptance, unresolved experiments, and ownership.
6. Any runtime-specific transcript storage or persistent-session mechanics live in an adapter. This wrapper itself creates glossary/ADR changes, not a transcript archive.

### Verification scenarios

The no-direct-change decision is acceptable only if all of these routes are observed after primitive adaptation:

- **Application control:** an application-design session behaves exactly as before.
- **Player-facing game design:** a traversal discussion begins from intended feel and constraints through `grilling`, without wrapper-specific duplicated instructions.
- **Playable uncertainty:** a camera question that needs runtime fidelity exits conversation into the engine-native prototype route and returns with evidence.
- **Source-faithful decision:** canon facts remain distinct from an approved adaptation decision, and only the durable decision enters the appropriate record.
- **Domain vocabulary:** engine and content terms retain their lifecycle/serialization meaning through `domain-modeling`.
- **Concurrent documentation:** the owning primitive prevents two sessions from unknowingly editing the same mutable context/ADR surface.
- **Information hierarchy:** the wrapper remains a short composition after all game rules land in their authoritative sources.

### Public surfaces after dependency changes

The skill body should remain unchanged. Re-read and synchronize only the descriptions or docs that become inaccurate after the primitives change:

- `docs/engineering/grill-with-docs.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- `ask-matt`, which describes where the wrapper sits in the game flow

No production skill has been edited as part of this assessment.

---

## 12 — `grilling`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review. Frontier classifications must remain explicit in handoffs so downstream specs and issues can preserve scope and route each item to the correct decision authority or specialist.

**Patch class:** skill-local decision-type and evidence branch backed by the shared game reference

### Preserve

The design tree, dependency-aware frontier, round structure, recommended answer, fact/decision distinction, and final user confirmation are a strong interview mechanism. They prevent random question dumps and expose assumptions in an order the user can actually answer.

Game adaptation should make the tree serve a **player-facing decision horizon**, not attempt to convert every creative, technical, or empirical uncertainty into a conversational choice. A game frontier contains several different node types, each with a different owner and resolution method.

### Normal game situations

- Define the intended feel and scope of traversal or combat before implementation.
- Preserve a source-material mystery rather than forcing an explicit lore answer.
- Decide whether a camera, control, encounter, visual, animation, or audio question needs an engine-native experiment.
- Route runtime architecture, shaders/VFX, or world-streaming mechanisms to the specialist who owns them.
- Bound a milestone around the strongest playable promise instead of exploring the entire possible game.
- Reconcile creative priorities with platform, performance, schedule, accessibility, localization, and production constraints.

### Current evidence

- `skills/productivity/grilling/SKILL.md:3-8` promises relentless interviewing until shared understanding and models every subject as a branching decision tree.
- `skills/productivity/grilling/SKILL.md:8-18` asks the entire frontier in rounds and attaches an agent recommendation to every question.
- `skills/productivity/grilling/SKILL.md:20` divides the world into facts the agent retrieves and decisions the user answers, with sub-agent dispatch for environmental facts.
- `skills/productivity/grilling/SKILL.md:22` declares completion only when every branch has been visited, nothing remains silently assumed, and the user confirms.
- `docs/productivity/grilling.md:13-19` recognizes that look/feel questions talking cannot settle should route to `prototype`, but that gate is absent from the directly invoked skill body.
- `docs/productivity/grilling.md:21-31` reinforces the fact/user-decision binary and acknowledges that the frontier is model judgement rather than a computed dependency graph.
- `docs/productivity/grilling.md:43-67` documents user overload, premature action, self-answered decisions, and unbounded question count as recurring failure modes.
- `docs/productivity/grilling.md:75-83` treats a high question count and empty frontier as success without distinguishing resolved, experimentally blocked, specialist-owned, intentionally ambiguous, or deferred branches.

### Concrete game failure

For a traversal-feel discussion, the tree can ask the user to select acceleration, camera lag, collision response, and animation timing from prose, attach confident recommendations, and reach an empty frontier without anyone playing the result. The conversation is complete while the causal game question remains unanswered.

For a source-faithful mystery game, “nothing left silently assumed” can pressure the interview to explain an intentionally unknowable character, threat, or world event. Resolving that branch destroys the mystery the game is meant to preserve. Intentional ambiguity is a creative requirement, not an incomplete decision.

For cross-disciplinary work, the fact/decision binary asks the user to decide mechanisms that belong to specialists: Unreal runtime architecture, material/VFX implementation, World Partition and streaming, or content-pipeline details. The user should decide player value, creative priority, scope, and acceptable trade-offs; the appropriate specialist should decide the technical mechanism with evidence.

Finally, an unbounded design tree can turn “define the next playable milestone” into “design the whole game.” Emptying every conceivable branch rewards breadth and premature certainty rather than the smallest coherent core and highest-risk playable slice.

This is **High** because the default interview can close normal game-design work conversationally while the material experiential, technical, or creative question remains unresolved—or resolves the wrong owner’s decision. The method itself is non-destructive and remains useful for bounded application decisions, so it stays below Critical.

### Narrow adaptation

1. Preserve the tree, frontier, rounds, recommendations, and confirmation gate.
2. Frame the tree before the first round with the intended player experience, strongest creative promise, milestone, fixed source/canon constraints, known production constraints, and what is explicitly out of scope.
3. Classify every frontier node before asking it:
   - **fact** — answer from the authoritative source or current environment;
   - **creative/product decision** — the user or named creative authority decides;
   - **empirical uncertainty** — resolve through the smallest playable or production-verifiable experiment;
   - **specialist technical decision** — route to the owning discipline for options, consequences, and an evidence-backed recommendation;
   - **production constraint** — confirm with the owner of platform, schedule, legal, accessibility, localization, or budget truth;
   - **intentional ambiguity or deferred branch** — preserve it with a reason, owner, trigger, and review point rather than forcing an answer.
4. Treat source/canon and approved project decisions as constraints unless the user explicitly chooses an adaptation departure. Surface conflicts; do not present established facts as open preference questions.
5. For feel, controls, camera, combat cadence, visual/audio quality, spatial flow, animation, networking, streaming, or performance, ask only enough to define the experiment and acceptance signal. Do not ask the user to predict an engine result from prose.
6. Route implementation mechanisms to the correct specialist. The interview decides player-facing priority and acceptable trade-offs; the specialist decides within that boundary. Keep one owner per mutable artifact while experiments run.
7. Scope the tree to the current **decision horizon**: every material branch needed for this milestone is resolved, empirically owned, specialist-owned, intentionally ambiguous, or explicitly deferred. Do not enumerate the whole possible game.
8. Recommendations should state the player-facing benefit, source/constraint fit, cost, and meaningful downside. Avoid generic “best practice” answers where the game’s promise should decide.
9. Keep unanswered evidence visible. An empty conversational frontier is not required; a frontier whose remaining nodes all have named resolution paths is complete enough to hand off.
10. Adjust round size to cognitive load and accessibility. Independent questions may share a round, but dense cross-disciplinary or emotionally loaded creative choices can run sequentially without changing the method.
11. End with a concise shared understanding: fixed decisions, preserved ambiguity, experiments, specialist questions, constraints, deferred branches, and the next decision point. Preserve each item's classification and owner so downstream issue composition does not blur authority. Acting still requires user confirmation.
12. Keep exact research, engine experiment, persistent-profile, top-level-session, or sub-agent mechanics in disclosed runtime adapters. The generic primitive specifies ownership and evidence, not one harness.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a bounded application decision retains the current efficient frontier interview.
- **Player-facing framing:** a combat/traversal interview begins with intended experience and milestone rather than implementation options.
- **Runtime uncertainty:** a camera-feel node produces an engine-native experiment and acceptance signal instead of a prose setting choice.
- **Intentional mystery:** an unresolved source mystery is recorded as protected ambiguity and removed from the forced-decision frontier.
- **Specialist ownership:** runtime, technical-art, and world-building mechanisms route to the correct owner while creative trade-offs remain with the user/director.
- **Source conflict:** canon facts, adaptation choices, and project decisions remain distinct and any departure is explicit.
- **Scope protection:** a vertical-slice interview stops at the current milestone's decision horizon rather than designing all future systems/content.
- **Evidence closure:** the handoff names every experiment, specialist question, and deferred branch with its classification and owner; shared understanding does not imply they have already been answered, and downstream issues route to the correct authority.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/productivity/grilling/SKILL.md`
- `docs/productivity/grilling.md`
- `skills/productivity/README.md`
- the top-level `README.md`
- `grill-me`, `grill-with-docs`, `triage`, `wayfinder`, and `improve-codebase-architecture`, which invoke the primitive
- `ask-matt`, `prototype`, `research`, and the specialist/runtime adapters that receive non-conversational nodes
- the shared game-development authority, ownership, and evidence reference

No production skill has been edited as part of this assessment.

---

## 13 — `grill-me`

**Accepted verdict: Pass — no direct skill-body adaptation**

**Decision:** accepted by the user during the one-skill review. Keep the wrapper thin; inherit game behavior from `grilling` and synchronize only the public descriptions made inaccurate by that dependency change.

**Dependency condition:** this verdict depends on the accepted `grilling` adaptation. Public descriptions must be synchronized where they still promise that every possible branch will be resolved.

### Preserve

`grill-me` is a deliberately thin, explicitly invoked front door to the `grilling` primitive. Its one-line composition is the correct information hierarchy: the wrapper chooses the stateless interview route, while the primitive owns how questions are classified, resolved, deferred, and handed off.

Preserve its ability to start from a loose idea outside a repository, write no project files, and continue in the same conversation into a later specification if the user chooses. Do not duplicate the game-development taxonomy or specialist-routing policy in this wrapper.

### Normal game situations

- Sharpen a game premise, player fantasy, creative pillar, encounter idea, or milestone before a repository exists.
- Distinguish a creative choice from a feel question that needs a playable experiment.
- Keep a canon fact or approved constraint separate from an adaptation decision.
- Carry classified unresolved work into a later spec or issue set with the correct owner.
- Recognize when the subject now depends on project files and should move to `grill-with-docs` rather than pretending a stateless conversation has authoritative project context.

### Current evidence

- `skills/productivity/grill-me/SKILL.md:3-7` defines an explicitly invoked wrapper whose entire behavior is to run a `grilling` session.
- `skills/productivity/grill-me/agents/openai.yaml:1-5` exposes the same narrow purpose and prevents implicit invocation.
- `docs/productivity/grill-me.md:3-5` describes a stateless interview that writes no files.
- `docs/productivity/grill-me.md:13-19` distinguishes the standalone route from repository-aware `grill-with-docs` and larger `wayfinder` work.
- `docs/productivity/grill-me.md:31-37` already says interaction and feel questions that talking cannot settle should leave the interview for `prototype`.
- `docs/productivity/grill-me.md:48-52` still defines completion as an empty frontier with every branch visited, inheriting the unbounded-closure language being corrected in `grilling`.
- `docs/productivity/grill-me.md:61-65` treats “I don't know” as valid and keeps the same conversation for the downstream `to-spec` handoff.
- `skills/productivity/README.md:9` and `README.md:222` still advertise resolution of every branch of the design tree.

### Game-development assessment

There is no independent game-development failure in the executable skill body. If `grilling` is unadapted, this wrapper inherits its failures: it can conversationally settle game feel, ask the user to choose specialist mechanisms, erase intentional ambiguity, and expand beyond the current milestone. Once the primitive classifies those nodes and preserves their owners, the one-line wrapper reaches the corrected behavior automatically.

The standalone context does create a boundary worth making explicit in documentation. A loose game idea can be grilled without a repository, but source-faithful or project-constrained decisions cannot be treated as informed merely because the conversation is thorough. The primitive must research supplied authoritative sources, preserve an unknown, or route the user to the project-aware workflow. That is dependency behavior, not a reason to fork the wrapper.

The “every branch visited” wording in public documentation will become inaccurate after the primitive adopts a bounded decision horizon. This requires synchronization, but adding a second copy of the classification rules to `grill-me` would create policy drift and violate the wrapper's purpose.

### Required dependency behavior

1. Keep `skills/productivity/grill-me/SKILL.md` as a thin invocation of `grilling`.
2. Inherit the primitive's player-facing framing, node classifications, current-milestone decision horizon, experiment routing, source/canon treatment, and specialist ownership.
3. Preserve classifications and owners in the conversation so `to-spec`, `to-tickets`, or a handoff can compose correctly scoped downstream work.
4. Do not imply that a stateless interview has read authoritative game or source documentation. If that evidence matters, retrieve it through the owning research route, obtain it from the user, or use the project-aware wrapper.
5. Update public wording from “every branch resolved” to completion of the current decision horizon: each material node is decided, intentionally preserved, experimentally owned, specialist-owned, constrained, or explicitly deferred.
6. Keep optional transcript persistence, top-level-session behavior, and other Hermes-specific interaction mechanics in a runtime adapter rather than the shared wrapper.
7. Preserve explicit invocation and user confirmation; do not let the downstream build flow begin merely because the interview reached a handoff-ready state.

### Verification scenarios

The no-direct-change decision is acceptable only if all of these routes are observed after the primitive adaptation:

- **Application control:** a non-game standalone idea retains the current lightweight interview entry point.
- **Early game concept:** a repository-free game premise starts from intended player experience and the strongest creative promise.
- **Playable uncertainty:** a movement or camera-feel question is classified for an engine-native experiment rather than answered from prose.
- **Specialist ownership:** a streaming, rendering, or runtime mechanism remains assigned to its owning specialist while the user controls creative priorities and trade-offs.
- **Source boundary:** missing authoritative source/project context is surfaced rather than replaced with confident assumptions.
- **Issue composition:** the same conversation can feed downstream specs or issues whose scope and assignee follow the preserved node classification.
- **Bounded closure:** the session stops when the current decision horizon has resolution paths, not when the entire possible game has been designed.
- **Information hierarchy:** the wrapper stays one line and the shared taxonomy remains in `grilling`.

### Public surfaces after dependency changes

The skill body should remain unchanged. Re-read and synchronize only the surfaces made inaccurate by the primitive change:

- `docs/productivity/grill-me.md`
- `skills/productivity/README.md`
- the top-level `README.md`
- `skills/productivity/grill-me/agents/openai.yaml` only if its short description ceases to match
- `ask-matt`, `grilling`, `grill-with-docs`, `wayfinder`, `to-spec`, `to-tickets`, and `handoff`, which route into or consume this conversation

No production skill has been edited as part of this assessment.

---

## 14 — `domain-modeling`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review. Preserve scoped game language, explicit authority and evidence, artifact separation, correct decision-record routing, and one mutable owner for shared glossary surfaces.

**Patch class:** direct authority and scoped-language gate, plus a game-aware context format backed by the shared game reference

### Preserve

The active discipline is valuable: challenge fuzzy terms, test relationships with concrete scenarios, compare claims with the implemented system, write only resolved vocabulary, create artifacts lazily, and record genuinely durable trade-offs sparingly. Games need this precision because design, narrative, code, editor content, asset pipelines, and production plans must refer to the same intended concepts.

Keep `CONTEXT.md` lean. It should remain a glossary rather than becoming a game-design document, content inventory, implementation spec, session transcript, or dumping ground for every decision.

### Normal game situations

- Distinguish a playable **mission** from an Unreal **Level** asset without banning either valid term.
- Separate a narrative **character**, a controllable gameplay **character**, an Unreal `Character` class, and a MetaHuman asset.
- Preserve a source-canon fact while naming the game's deliberate adaptation or gameplay abstraction separately.
- Align a Gameplay Tag, Blueprint/C++ type, Data Asset, editor label, design document, and issue title around one project-specific concept.
- Record a hard-to-reverse runtime, content-pipeline, or world-production boundary without turning every creative choice into an ADR.

### Current evidence

- `skills/engineering/domain-modeling/SKILL.md:3-8` makes the skill broadly invocable for terminology and architectural decisions and writes terms and decisions as soon as they “crystallise.”
- `skills/engineering/domain-modeling/SKILL.md:12-40` assumes either one repository context or software contexts mapped through `src/`-shaped examples.
- `skills/engineering/domain-modeling/SKILL.md:44-54` challenges glossary conflicts, proposes one precise canonical term, and invents edge-case scenarios.
- `skills/engineering/domain-modeling/SKILL.md:56-64` cross-references only code, writes `CONTEXT.md` inline, and requires that glossary to contain no implementation details.
- `skills/engineering/domain-modeling/SKILL.md:66-74` offers a fixed ADR route for hard-to-reverse, surprising trade-offs.
- `skills/engineering/domain-modeling/CONTEXT-FORMAT.md:25-30` says to pick the best word and list alternatives under `_Avoid_`, without limiting that ban to a discipline or bounded context.
- `skills/engineering/domain-modeling/CONTEXT-FORMAT.md:32-60` can split contexts, but its examples and inference rules describe software-module boundaries rather than cross-disciplinary game meanings and authorities.
- `skills/engineering/domain-modeling/ADR-FORMAT.md:25-35` derives the next sequential filename by scanning the directory and frames the decision test around what a future reader sees in code.
- `docs/engineering/domain-modeling.md:46-50` explicitly says cross-referencing stops at code and committed glossary/ADRs.
- `docs/engineering/domain-modeling.md:69-73` correctly warns that an unreviewed, agent-authored glossary becomes confident-sounding lore that later sessions treat as truth.

### Concrete game failure

Suppose a designer says, “The player leaves the level after defeating the Forsaken,” while a World Builder discusses the streamed Unreal Level that contains the encounter. The current “pick the best word; avoid the others” rule can globalize one meaning, mark the other as wrong, and propagate that choice into asset names, issue titles, code, and specialist handoffs. This is not ordinary synonym drift; both meanings are legitimate inside different game contexts and need an explicit mapping.

For an adaptation, an invented edge case or current gameplay class can also be promoted into a definition of the source world. Code may implement a temporary simplification, an editor asset may carry the authoritative content identity, and canon may deliberately leave something ambiguous. Cross-referencing only code cannot determine which statement is authoritative. Writing the inferred definition inline turns an unverified implementation detail into project lore.

The inline-write rule creates a production risk when several persistent specialists are active. Two sessions can independently “resolve” a term or allocate the same sequential ADR number, edit one shared file, and leave a mergeable text result whose meaning is nevertheless contradictory. The issue is ownership and semantic authority, not merely whether Git can merge the lines.

Finally, “no implementation details” is useful protection against glossary bloat but too blunt for a cross-disciplinary game vocabulary. A glossary should not reproduce Unreal documentation, yet it sometimes must state a project-specific mapping or lifecycle distinction—such as which gameplay concept owns an Unreal class, tag, data asset, or package name—so designers and implementers do not silently discuss different things.

This is **High** because the skill is model-invoked, mutates durable shared truth during discussion, and its output is intentionally consumed by downstream agents. A bad definition can spread into design, source, assets, and tickets before anyone notices. The files remain reviewable and recoverable text, so the default is serious but not classified as destructive or Critical.

### Narrow adaptation

1. Preserve the existing application behavior when one bounded domain genuinely has one ubiquitous language.
2. Before canonicalizing a game term, identify its scope and authority. Use project-defined contexts such as source/canon, player-facing design, gameplay/runtime, world/content, technical art, and production only where they actually help; do not impose a universal game taxonomy.
3. Allow **scoped polysemy**. List a synonym under `_Avoid_` only inside the context where it is actually misleading. When two disciplines legitimately use the same word differently, define both qualified meanings and record the mapping at their boundary.
4. Distinguish source fact, approved creative decision, gameplay abstraction, observed implementation, production convention, and hypothesis. Never let an invented stress-test scenario establish canon or erase intentional ambiguity.
5. Cross-reference the authoritative evidence for the claim: approved source/project documents, accepted decisions, code, serialized/editor assets, runtime observation, pipeline configuration, or the named discipline owner. Code is evidence of current implementation, not automatic authority over player intent, art identity, or canon.
6. Require explicit acceptance by the term's authority before promoting a new or changed definition into shared truth. Reuse the classification and ownership output from `grilling` rather than silently treating conversational fluency as resolution.
7. Establish one mutable owner for each `CONTEXT.md`, context map, and decision-record surface while editing. Re-read before applying changes, coordinate concurrent specialists, and do not allocate sequential record numbers concurrently without the project's locking or ownership mechanism.
8. Discover and respect the project's existing documentation layout and decision conventions before creating `CONTEXT.md`, `CONTEXT-MAP.md`, or `docs/adr/`. The current names remain the default only when the project has not established an authoritative equivalent.
9. Keep glossary entries concise and project-specific. Do not redefine general engine vocabulary; record only the project-specific meaning, qualification, alias, or mapping needed to prevent real confusion. Point to authoritative detail instead of copying a design bible, source compendium, asset inventory, or implementation spec into the glossary.
10. Classify a durable decision before recording it. Architectural ADRs retain the existing three-part bar; creative, canon, art-direction, or production decisions go to the project's owning record rather than being relabeled as architecture merely because they are hard to reverse.
11. Keep exact Unreal asset inspection, source-control locking, persistent-profile coordination, and document-routing mechanics in disclosed runtime/project adapters. The shared skill defines authority and evidence without assuming one engine or harness.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** an application domain with one meaning of “Customer” retains the current concise canonical-term behavior.
- **Scoped game language:** “mission,” “map,” and Unreal “Level” remain distinct where necessary, with a boundary mapping rather than a global synonym ban.
- **Cross-discipline term:** narrative character, gameplay character, engine class, and character asset are qualified without collapsing into one definition.
- **Source fidelity:** a hypothetical lore scenario cannot become canon; source fact, adaptation decision, gameplay abstraction, and preserved mystery remain distinct.
- **Artifact evidence:** a code claim that conflicts with serialized/editor content or approved player-facing intent is surfaced to the owning authority rather than treated as automatically correct.
- **Empirical boundary:** a term whose meaning depends on observed play or runtime behavior remains provisional until the relevant experiment closes.
- **Concurrent work:** two specialists cannot unknowingly edit the same glossary or allocate the same decision-record number; the handoff names the current owner.
- **Artifact separation:** the glossary stays lean while design requirements, content inventories, implementation details, and evidence remain in their owning documents.
- **Decision routing:** an architectural trade-off can use an ADR, while a canon or art-direction choice reaches the project's appropriate creative record.
- **Issue composition:** downstream issues use the qualified term and carry its context and owner, preventing apparently identical words from routing work to the wrong specialist.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/domain-modeling/SKILL.md`
- `skills/engineering/domain-modeling/CONTEXT-FORMAT.md`
- `skills/engineering/domain-modeling/ADR-FORMAT.md`
- `docs/engineering/domain-modeling.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- `skills/engineering/setup-matt-pocock-skills/domain.md`, which teaches every skill how to consume these artifacts
- `grill-with-docs`, `grilling`, `wayfinder`, `triage`, and `improve-codebase-architecture`, which invoke or mutate the domain model
- `to-spec`, `to-tickets`, `handoff`, and review skills that consume qualified terms and ownership
- the shared game-development authority, ownership, artifact, and evidence reference

No production skill has been edited as part of this assessment.

---

## 15 — `wayfinder`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review. Preserve the map/fog/frontier core while adding a player-facing milestone, orthogonal classification and authority, evidence-backed closure, explicit execution approval, and cross-ticket artifact ownership.

**Patch class:** direct player-milestone, authority, execution, and concurrency gates backed by adapted primitives and runtime/project adapters

### Preserve

The destination, shared low-resolution map, decision tickets, fog of war, visible frontier, native blockers, claim-before-work rule, one focused ticket per session, and separation between planning and downstream implementation are strong foundations for large game efforts. The refusal to pre-slice everything hidden in the fog is particularly useful for development in which play, content integration, and technical discovery reveal the next real question.

Keep the map as an index and keep question-resolution detail in a zoomable artifact. Preserve named links instead of walls of issue numbers, and retain the rule that a normal wayfinder map clarifies the route rather than quietly becoming an implementation backlog.

### Normal game situations

- Find the route to a vertical slice that combines traversal, encounter pacing, world construction, visual treatment, audio, and target-platform performance.
- Decide how a source-faithful mystery becomes playable without prematurely explaining it.
- Resolve whether a runtime feature, world-streaming plan, or rendering approach can meet the intended player experience and production budget.
- Coordinate independent specialist investigations while preventing two sessions from editing the same map, Blueprint, material, level, data asset, or source surface.
- Replan after an engine-native prototype invalidates several downstream assumptions.

### Current evidence

- `skills/engineering/wayfinder/SKILL.md:7-13` frames a large effort around a destination and declares the map complete when nothing remains to decide before execution, while allowing execution to be enabled through agent-editable Notes.
- `skills/engineering/wayfinder/SKILL.md:21-25` makes an issue-tracker map canonical and says each decision lives only in its closed ticket.
- `skills/engineering/wayfinder/SKILL.md:31-52` gives the map a destination and Notes but no player-facing outcome, fixed creative/source constraints, production boundary, authority, or evidence model.
- `skills/engineering/wayfinder/SKILL.md:57-71` sizes a ticket to a 100K-token session, gives it only a question and resolution-mode label, and treats assignment to the driving developer as the entire concurrency claim.
- `skills/engineering/wayfinder/SKILL.md:75-80` defines `research`, `prototype`, `grilling`, and `task` as ticket types, but those types describe resolution method rather than creative/technical authority or artifact ownership.
- `skills/engineering/wayfinder/SKILL.md:84-101` preserves fog and scope well, but closure still assumes every in-destination question can be settled before the downstream build.
- `skills/engineering/wayfinder/SKILL.md:111-116` breadth-first grills the effort, creates all currently specifiable tickets, launches research subagents, and fixes findings to throwaway Git branches.
- `skills/engineering/wayfinder/SKILL.md:122-128` claims one ticket, closes it after posting an answer, mutates the map and graph, and explicitly expects parallel sessions.
- `docs/engineering/wayfinder.md:65-75` documents three existing field failures: an agent granting itself permission to execute, large early maps becoming stale like waterfall plans, and parallel/prototype sessions duplicating questions or selecting the user's preferred variant themselves.
- `skills/engineering/setup-matt-pocock-skills/issue-tracker-github.md:36-44`, `issue-tracker-gitlab.md:37-45`, and `issue-tracker-local.md:21-29` implement claim and frontier state through issue assignment or a local status field, with no cross-ticket mutable-artifact conflict check.

### Concrete game failure

Consider a map whose destination is “design the game's traversal system.” Breadth-first questioning can create decisions for camera, acceleration, animation, terrain, streaming, VFX, audio, controller response, and performance before any representative traversal slice exists. Several tickets can be closed through conversation, and later tickets can be wired on those answers. When an engine-native prototype reveals that camera collision, root motion, terrain slope, and streaming interact differently than assumed, the map has created a polished waterfall of invalid decisions rather than exposing the highest-risk playable uncertainty first.

The four ticket types do not solve ownership. A `prototype` ticket may need the Game Director to judge player feel, the Systems Engineer to own runtime architecture, the Technical Artist to own visual tooling, and the World Builder to own the representative environment. Calling the ticket “prototype” says how evidence will be produced, not who decides the trade-off or who may edit each artifact. Assigning several tickets to one driving developer account also does not prevent two sessions from changing the same non-mergeable package.

Closure is too weak for game evidence. Posting an answer and closing a ticket can treat a generated variant, browser mock-up, unverified research artifact, or agent recommendation as a settled result before the appropriate human or specialist has reviewed the representative engine behavior. The public documentation already records a case in which the agent built variants and selected one on the user's behalf.

The execution escape hatch compounds the risk. Because the same agent can write “this map carries execution” into Notes, it can convert a planning map into permission to change production code or editor content. On a game project, parallel sessions could then touch source and opaque packages without an intentional save list, recovery point, source-control discovery, or one-writer ownership.

This is **High** because the skill coordinates many sessions, mutates shared tracker truth, permits parallel work, and can shape an entire game milestone around decisions that lack the correct authority or runtime evidence. Its default remains planning and its tracker edits are recoverable, so it stays below Critical when the adapted `prototype`, `research`, `grilling`, and `domain-modeling` gates are also enforced.

### Narrow adaptation

1. Preserve the application path and the existing map/fog/frontier mechanics.
2. Frame a game destination as the **next evidence-bearing player-facing milestone**, not the whole possible game: intended player experience, strongest creative promise, observable milestone result, fixed source/canon and project constraints, material production budgets, and explicit exclusions.
3. Define map completion as a clear route through the current decision horizon. Intentional ambiguity and later-game choices may be explicitly preserved or deferred; empirical and specialist-owned nodes remain visible until their named resolution path produces accepted evidence.
4. Keep ticket **resolution method** (`grilling`, `prototype`, `research`, `task`) separate from the classification accepted in `grilling`: fact, creative/product decision, empirical uncertainty, specialist technical decision, production constraint, or intentional/deferred branch.
5. Add only the routing fields a game handoff needs: why the question matters to the player/milestone, classification, deciding authority, responsible specialist or worker, constraints, expected evidence/acceptance signal, dependencies, and—only when an experiment or task may mutate something—the artifact scope and owner. Do not turn every ticket into a large template.
6. Route technical mechanisms to the owning discipline for options and consequences; keep creative priorities and acceptable trade-offs with the user or Game Director. The issue/map remains the shared decision record, while the runtime adapter assigns work to persistent specialists through the project's orchestration surface.
7. A prototype ticket closes only after the named decision authority reviews the smallest causally faithful artifact and records the selection or conclusion. The agent may compare evidence and recommend; it may not choose the human's experiential or creative preference for them.
8. Apply the accepted `prototype` fidelity and asset-safety gate. A game-feel, rendering, animation, audio, networking, streaming, or target-platform question uses an engine-native playable or production-verifiable slice; browser artifacts cannot close engine-dependent questions.
9. Before parallel work, check both ticket blockers and overlapping mutable artifacts. A tracker assignee is a ticket claim, not sufficient proof of exclusive ownership when several sessions share an account. Establish one writer, recovery point, and source-control-safe handoff for editor/binary content.
10. Make “plan, don't do” a hard default. Execution may be enabled only by an explicit user/authority decision that the agent cannot create or infer from its own Notes. The approval must name the bounded execution scope, owner, artifacts, evidence, and stop condition; otherwise implementation routes downstream.
11. Revalidate the destination, assumptions, owners, dependencies, fog, and affected open tickets after every material resolution—especially a playable experiment. Close, rewrite, or defer stale tickets rather than designing around an invalid earlier answer.
12. Promote accepted cross-disciplinary decisions into the project's authoritative shared documentation when they become durable. The closed ticket retains rationale and evidence; the map links rather than duplicating detail. Do not leave long-lived project truth discoverable only through an old tracker comment.
13. Replace the literal token-budget sizing rule with one focused decision or investigation that can produce and verify its evidence within the active worker/session. Runtime adapters may impose concrete context limits.
14. Keep independent research parallelism, but inherit the accepted source-quality and parent-verification gates. Discover source control and artifact storage instead of requiring hidden subagents and throwaway Git branches. In Hermes, persistent visible specialist sessions and Kanban assignment belong in the adapter; other runtimes may use other disclosed worker mechanisms.
15. Preserve explicit user confirmation before publishing a large map or enabling any side effect beyond the planning artifacts the invocation clearly requested.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a large application migration retains the current destination, fog, frontier, and decision-ticket workflow without a game checklist.
- **Playable milestone:** a traversal effort maps the route to one representative playable slice with named player-facing and production evidence, not to a complete up-front design of traversal across the whole game.
- **Classification and authority:** a camera-feel question, a runtime architecture question, and a World Partition question carry different deciding authorities even if all use prototype evidence.
- **Source fidelity:** an intentional mystery remains a protected creative decision or deferred branch rather than fog that must eventually be explained.
- **Prototype closure:** the agent cannot close a visual or feel ticket by selecting its own generated variant; the named authority reviews representative evidence.
- **Parallel asset safety:** two unblocked tickets that both touch the same level, Blueprint, material, data asset, or context file cannot run concurrently without an explicit ownership handoff.
- **Execution gate:** adding execution language to agent-authored Notes does not authorize production changes; explicit external approval and bounded artifact scope are required.
- **Replanning:** a failed engine-native prototype invalidates and rewires dependent tickets before further work rather than preserving a stale comprehensive plan.
- **Durable truth:** a cross-disciplinary accepted decision reaches the appropriate shared project document while its issue retains rationale and evidence.
- **Runtime neutrality:** the generic skill does not require Git branches, anonymous subagents, one model's context size, or one orchestration product; disclosed adapters implement those mechanics.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/wayfinder/SKILL.md`
- `docs/engineering/wayfinder.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- the issue-tracker templates under `skills/engineering/setup-matt-pocock-skills/`
- `ask-matt`, `setup-matt-pocock-skills`, `grilling`, `domain-modeling`, `prototype`, and `research`, which route or resolve map nodes
- `handoff`, `to-spec`, `to-tickets`, and `implement`, which receive the cleared decision horizon
- the shared game-development authority, ownership, artifact, evidence, and milestone reference
- disclosed runtime adapters for persistent specialist assignment and source-control-safe evidence capture

No production skill has been edited as part of this assessment.

---

## 16 — `to-spec`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review. Add the concise game-spec branch, preserve unresolved classifications and specialist authority, require layered evidence and stable artifact identities, and keep the parent spec non-executable by default.

**Patch class:** direct game-spec, evidence, artifact-identity, and dispatch-safety branch backed by the shared game reference

### Preserve

The skill's core boundary is right: synthesize decisions already made instead of reopening the interview or inventing new ones. Preserve repository exploration, project vocabulary, accepted decision constraints, explicit out-of-scope content, user review of the planned verification surfaces, and publication of one durable multi-session handoff when the work is large enough to earn a spec.

Keep the instruction that a spec records the settled outcome rather than becoming a place for the agent to make surprise decisions. Keep application user stories and high-seam behavioral testing where they accurately describe the work.

### Normal game situations

- Specify a representative traversal or combat slice whose success depends on player feel, engine integration, animation, level context, audio, and frame-time evidence.
- Capture a source-faithful adaptation decision while preserving intentional mystery and separating canon from gameplay abstraction.
- Hand off mixed work involving C++/Blueprint logic, maps, materials, data assets, animation, UI, audio, and target-platform validation.
- Name exact non-mergeable packages or test scenes so ownership and reproduction are unambiguous without freezing transient code structure.
- Preserve unresolved empirical or specialist-owned questions rather than manufacturing implementation decisions to fill a template.

### Current evidence

- `skills/engineering/to-spec/SKILL.md:3-9` turns the current conversation into a tracker issue, forbids a new interview, and relies on setup-provided tracker and label behavior.
- `skills/engineering/to-spec/SKILL.md:13` explores the codebase and consumes the glossary and ADRs, but does not inspect authoritative design/source documents, editor content, runtime evidence, active work, or game-production constraints.
- `skills/engineering/to-spec/SKILL.md:15-17` minimizes test seams and calls one highest seam ideal before asking the user to approve them.
- `skills/engineering/to-spec/SKILL.md:19` publishes the parent spec with `ready-for-agent` and skips further triage.
- `skills/engineering/to-spec/SKILL.md:23-41` uses an application-oriented Problem/Solution template and demands an extremely extensive list of actor-feature-benefit user stories covering all aspects.
- `skills/engineering/to-spec/SKILL.md:43-57` mixes modules, interfaces, architecture, schemas, APIs, and interactions under implementation decisions; it bans file paths and permits only decision-rich code snippets from prototypes.
- `skills/engineering/to-spec/SKILL.md:59-65` defines testing only through external behavior, modules, and prior code tests.
- `docs/engineering/to-spec.md:24-34` correctly calls the spec a non-validating decision record but treats software test seams as the binding acceptance structure.
- `docs/engineering/to-spec.md:41-63` documents current failures: the parent `ready-for-agent` label can cause polling agents to implement the whole spec; the document goes stale when implementation teaches something; the user-story template fits architecture poorly; related tracker work is not checked; and large specs can be truncated when fetched.
- `skills/engineering/triage/SKILL.md:31-45` defines `ready-for-agent` as fully specified and ready for an AFK agent, confirming that the label is executable workflow state rather than a harmless document tag.

### Concrete game failure

Suppose the prior conversation settles that traversal should feel grounded and vulnerable, identifies camera collision and acceleration as empirical uncertainties, assigns runtime options to the Systems Engineer, and leaves exact World Partition mechanics to the World Builder. The current template asks for an extremely extensive set of user stories and implementation decisions. To make every section look complete, the synthesizer can turn unresolved feel questions into features, choose specialist mechanisms that were never approved, and imply comprehensive game scope beyond the current playable milestone.

The “ideal number is one” seam rule can then select a high gameplay interface test and call the verification strategy complete. That seam cannot prove camera comfort, animation continuity, lighting readability, map/package serialization, streaming behavior, frame pacing, memory, network conditions, controller behavior, or target-hardware performance. A green test at one elegant boundary is valuable evidence for its claim, but it is not a universal completion gate for mixed game work.

The path prohibition creates a different game risk. Avoiding transient code locations is sensible, but a spec may need the stable identity of the representative test map, owning level package, Blueprint, material instance, data asset, source asset, or build configuration. Omitting those identities can let two tickets unknowingly edit the same opaque artifact or make the acceptance setup impossible to reproduce.

Finally, publishing the parent spec directly as `ready-for-agent` can trigger AFK consumers to implement the entire multi-session document before `to-tickets` assigns bounded work. In a game repository, that may fan uncontrolled changes across source and non-mergeable editor packages without specialist ownership. The documentation acknowledges this as the most-reported rough edge.

This is **High** because the spec is the main contract consumed by all downstream tickets and the current process marks it executable without triage. Normal game use can therefore amplify invented scope, wrong ownership, and incomplete evidence across many sessions. The skill itself mainly writes a recoverable tracker document, so it stays below Critical.

### Narrow adaptation

1. Preserve the existing application template and route when actor-feature-benefit stories and a small number of behavioral seams accurately describe the work.
2. When the material outcome is a game feature, content change, experiential slice, or mixed engine artifact, synthesize a concise **game design brief**, not a generic exhaustive PRD. Include only what the current milestone needs:
   - intended player experience and strongest creative promise;
   - representative playable/production scenario and milestone outcome;
   - fixed source/canon, approved project, platform, accessibility, localization, schedule, and budget constraints that are material;
   - accepted player-facing behavior, rules, and invariants;
   - accepted decisions with classification and deciding authority;
   - unresolved experiments, specialist questions, intentional ambiguity, and deferred work with owners;
   - artifact/workstream ownership and dependencies;
   - layered evidence and observable acceptance signals;
   - explicit out of scope.
3. Treat user stories as optional evidence of player value, not a mandatory exhaustive inventory. Prefer concrete play scenarios, moment-to-moment outcomes, design invariants, or production use cases when those communicate the requirement more faithfully.
4. Synthesize only accepted information. If an upstream material node is unresolved, preserve its classification, owner, experiment, and blocking status. Do not invent a decision to complete a section, and do not mark the spec executable while a required decision lacks a resolution path.
5. Replace “one ideal seam” with the **smallest layered evidence set that covers the material risks**. Use the highest useful stable seam for deterministic behavior, then add only the necessary engine integration, editor/content validation, hands-on playtest, visual/audio review, network condition, profiler/budget, and target-platform evidence.
6. Separate player-facing requirements and accepted cross-disciplinary constraints from specialist implementation mechanisms. Record a mechanism only when the owning specialist already decided it; otherwise capture the required outcome, constraints, owner, and evidence expected from that specialist.
7. Permit stable artifact identities when they are necessary for ownership, safety, reproduction, or review: package/object identifiers, representative map/scene, data asset, build target, source asset, test fixture, or configuration name. Continue to avoid brittle line numbers and incidental code locations.
8. Extend prototype capture beyond inline code snippets. Link the engine-native test scene/build, relevant assets, capture, profiler trace, hardware/platform conditions, version/dependencies, and the accepted conclusion; do not paste large opaque artifacts into the issue.
9. Check the active tracker/map/Kanban surface and authoritative project documents for overlapping work and conflicting ownership before publishing. Link related specs and decisions rather than creating a second silent source of truth.
10. Do not apply an implementation-ready state to the parent spec by default. Publish it as a non-executable spec/draft or project-equivalent state, obtain the required approval, and let `to-tickets` create bounded implementation items with the correct human/agent/specialist readiness and ownership. If a tracker lacks a separate spec state, explicitly exclude the parent from automation.
11. Before publication, ask the user to confirm the compact high-risk summary: player-facing outcome, current milestone, evidence surfaces, unresolved/deferred items, specialist ownership, and out of scope. This is confirmation of synthesized content, not a new design interview.
12. Treat the spec as a versioned snapshot, not immutable truth. When engine integration or playtesting invalidates a material assumption, route the change to the deciding authority, supersede or revise the affected spec state, and re-evaluate downstream tickets. Promote genuinely durable language and decisions to their owning project documents.
13. Keep exact tracker labels, Hermes Kanban assignment, persistent-profile handoff, engine automation, and source-control mechanics in disclosed project/runtime adapters. The shared spec remains model- and engine-neutral.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a multi-session banking feature still receives the current concise Problem/Solution/User Stories/Implementation/Testing template when it fits.
- **Player-facing brief:** a traversal slice leads with intended feel, representative play, milestone scope, and source/production constraints rather than an exhaustive feature inventory.
- **No invented closure:** a camera uncertainty and a World Partition mechanism remain assigned experiments or specialist questions; the spec does not manufacture values or architecture.
- **Layered evidence:** deterministic movement rules, runtime wiring, camera feel, animation, streaming, and frame budget receive distinct necessary evidence rather than one universal test seam.
- **Artifact identity:** the representative test map and any shared non-mergeable package can be named for ownership and reproduction without adding brittle source line references.
- **Source fidelity:** canon fact, approved adaptation, gameplay abstraction, and intentional mystery remain visibly distinct.
- **Dispatch safety:** the parent spec is not consumed as one AFK implementation job; bounded downstream tickets carry the appropriate specialist and readiness state.
- **Overlap protection:** an existing spec, active ticket, or claimed mutable artifact is detected and reconciled before a duplicate is published.
- **Iterative correction:** a failed playtest can revise or supersede the affected snapshot and invalidate downstream work without silently rewriting accepted history.
- **Information density:** the spec remains small enough to retrieve and review because it records the current milestone's decisions and pointers instead of padding every template section.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/to-spec/SKILL.md`
- `docs/engineering/to-spec.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- tracker and triage templates under `skills/engineering/setup-matt-pocock-skills/`
- `grilling`, `domain-modeling`, `prototype`, and `wayfinder`, which supply classified decisions and evidence
- `to-tickets`, `implement`, `triage`, and `code-review`, which consume the spec and its readiness state
- the shared game-development milestone, authority, ownership, artifact, and layered-evidence reference
- disclosed runtime/project adapters for specialist assignment and tracker automation

No production skill has been edited as part of this assessment.

---

## 17 — `to-tickets`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review. Preserve a playable/production-verifiable tracer across the ticket set while making each executable ticket owner-bounded, evidence-backed, artifact-safe, and assigned an appropriate readiness state.

**Patch class:** direct owner-bounded game-slice, readiness, artifact-conflict, and editor-migration branch backed by the shared game reference

### Preserve

The tracer-bullet principle, explicit blocker graph, frontier, user-approved decomposition, one ticket per tracker artifact, and expand-contract exception for wide source refactors are valuable. Game production also benefits from small work items that produce observable value and keep integration continuous instead of building every discipline in isolation until the end.

Preserve the requirement that the user reviews granularity and blocking before publication. Preserve application vertical slices when one owner can safely deliver a narrow end-to-end path through the relevant application layers.

### Normal game situations

- Split a traversal slice across runtime movement, animation, representative world space, visual treatment, audio, and an integration playtest without giving one worker ownership of every artifact.
- Create a deterministic gameplay-rule ticket that is independently testable while separately owning engine wiring and representative-scene evidence.
- Schedule a World Partition or level task without allowing another frontier ticket to edit the same map or data layer concurrently.
- Migrate Blueprint parents, skeletons, materials, data assets, maps, or package paths through editor-native validation rather than a code-only expand-contract recipe.
- Route creative review, specialist implementation, human-only access, and automated source work to different readiness states instead of calling every ticket AFK-agent-ready.

### Current evidence

- `skills/engineering/to-tickets/SKILL.md:9-23` accepts a plan, spec, or conversation, optionally explores only the codebase, and proactively looks for code prefactoring.
- `skills/engineering/to-tickets/SKILL.md:25-38` requires every ticket to cut a complete path through schema, API, UI, and tests, be independently demoable, and fit one fresh context window.
- `skills/engineering/to-tickets/SKILL.md:40` provides a source-code expand-contract exception, including integration-branch handling, but no branch for editor-serialized or binary asset migrations.
- `skills/engineering/to-tickets/SKILL.md:42-56` asks the user only about granularity, blockers, and merge/split choices; it does not present authority, specialist ownership, mutable artifacts, evidence, or integration responsibility.
- `skills/engineering/to-tickets/SKILL.md:58-67` publishes every real-tracker ticket as `ready-for-agent`, defines the frontier only through blockers, and leaves the parent untouched.
- `skills/engineering/to-tickets/SKILL.md:69-103` gives tickets only an end-to-end behavior, acceptance criteria, blockers, and an unconditional agent-ready status.
- `skills/engineering/to-tickets/SKILL.md:105` bans specific file paths while allowing only decision-rich code snippets from a prototype.
- `docs/engineering/to-tickets.md:25-42` treats one ticket as the complete cross-layer vertical slice and presents blocker completion as the only condition for safe parallel pickup.
- `docs/engineering/to-tickets.md:58-80` documents recurring failures: over-decomposition, accidental layer tickets, missing native parent/blocker links, pre-passing or cross-ticket acceptance criteria, and manual multi-session dispatch/state repair.
- `skills/engineering/triage/SKILL.md:31-45` defines `ready-for-agent` as fully specified and ready for an AFK agent, while also providing `ready-for-human` for work requiring human implementation or judgment.

### Concrete game failure

For a traversal milestone, “one ticket cuts through every layer” can produce a ticket that modifies the movement component, camera Blueprint, Animation Blueprint, character data, representative map, foliage/material setup, audio cue, UI feedback, automated tests, and performance capture. It is vertically complete on paper but too broad for one specialist, gives one session several non-mergeable artifacts, and blurs who decides feel versus who decides each technical mechanism.

Trying to avoid that breadth by creating separate tickets does not make the current frontier safe. A World Builder ticket and Technical Artist ticket may be logically unblocked while both need the same level package for representative testing. The tracker sees no blocker and marks both takeable; assignment protects each ticket, not the shared `.umap` or embedded actor state. Parallel work can conflict even though the dependency graph is technically correct.

The unconditional `ready-for-agent` state also misclassifies normal game work. A camera-feel review needs the player-facing authority in the loop; a platform certification step may require a human account or hardware; an Unreal content migration may need a specialist with editor and source-control access; a deterministic rule may be safe for an AFK systems worker. These are not equally agent-grabbable by construction.

The generic wide-refactor exception does not cover opaque editor content. Renaming or moving packages, changing Blueprint parent classes, retargeting animation assets, or migrating materials can create redirectors, broken soft references, dirty dependent packages, cook failures, and broad resaves. “Expand beside old, migrate directories, contract on an integration branch” is not sufficient without editor-native referencer checks, an intentional save set, locks/recovery, and integration validation.

This is **High** because the skill publishes the executable frontier for multiple sessions and currently omits the information needed to route work to the correct specialist or protect shared game artifacts. The tickets and tracker state are recoverable, and execution remains downstream, so it stays below Critical.

### Narrow adaptation

1. Preserve the current application tracer-bullet and wide-source-refactor paths where their assumptions hold.
2. Before slicing, verify that the source conversation/spec has a bounded milestone, accepted player-facing outcome, resolved implementation prerequisites, named owners for unresolved specialist/empirical nodes, and enough evidence planning to create executable work. Do not turn an unresolved creative or technical decision into an implementation ticket.
3. For games, make the **playable or production-verifiable tracer** the through-line of the ticket set, not a requirement that every individual ticket touch every discipline. Each executable ticket must be coherent within one owner and artifact boundary; specialist/enabling tickets converge on an integration ticket that demonstrates the next player-facing or production milestone.
4. Prefer the smallest slice that produces useful evidence or a safe handoff. A deterministic rule may be independently testable; a content tool may be production-verifiable; a visual treatment may require representative-scene review; a complete interaction may require several owner-bounded tickets plus integration. Do not manufacture application layers such as schema/API/UI when they do not exist.
5. Carry the accepted upstream classification into each item. Separate the **decision authority** from the implementation owner: the Game Director/user owns player-facing priority and acceptance, while the relevant specialist owns runtime, technical-art, or world-building mechanisms within that boundary.
6. Use a compact ticket shape containing only what a fresh owner needs:
   - player/production outcome and why it matters to the current milestone;
   - owner and required decision/review authority;
   - fixed constraints and explicit non-goals;
   - mutable artifact scope or handoff boundary when material;
   - observable acceptance evidence and representative conditions;
   - blockers, conflict/ownership constraints, and integration destination;
   - parent spec/decision/evidence pointers.
7. Compute the frontier from both dependency completion and ownership safety. Tickets that overlap the same map, scene, Blueprint, material graph, data asset, source asset, glossary, or other exclusive surface cannot run concurrently without an explicit handoff, even if neither logically blocks the other.
8. Assign readiness per ticket. Use agent-ready only when scope, tools/access, authority, artifacts, and executable acceptance are sufficient for autonomous work. Use the project equivalent of specialist-ready, human/HITL, needs-decision, or blocked when judgment, access, embodied play, creative selection, or unresolved evidence remains.
9. Make every acceptance criterion falsifiable at the ticket's starting state, observable through evidence that the ticket owns, and independent of work in another unfinished ticket. Name the required layer only when material: automated behavior, engine/editor validation, representative play, visual/audio review, network conditions, profiler/budget, cook/build, or target hardware.
10. Permit stable game artifact identities where needed for ownership, locking, reproduction, migration, or review. Continue to avoid incidental source line numbers and brittle implementation narration.
11. Add an editor/binary migration branch: discover engine and source control; inventory affected assets and referencers; identify lock/owner and recovery point; choose editor-native migration/resave operations; bound the save set; verify references, redirectors, validation, cook/build, runtime load, and representative content; and require an integration gate before deleting the old form.
12. Keep prefactoring subordinate to the playable/production slice. Create an enabling refactor or tool ticket only when it removes a demonstrated blocker or materially reduces the risk/cost of the accepted milestone; do not put speculative architecture work first merely because it might make implementation cleaner.
13. During the user quiz, show outcome, owner/authority, artifacts, evidence, blockers/conflicts, and integration destination in addition to granularity. Ask whether any two frontier tickets contend for the same mutable surface.
14. After publication, link the child set from the parent and mark the parent as decomposed/non-executable through the configured workflow without closing or erasing it. Do not leave an apparently actionable parent alongside actionable children.
15. Replace literal context-window sizing with one focused owner-bounded unit that can be completed, verified, and handed off in the active execution environment. Runtime adapters may impose concrete session limits.
16. Keep exact tracker commands, Hermes Kanban assignment to persistent specialist profiles, source-control locks/branches, and engine automation in disclosed runtime/project adapters. The generic tickets remain model- and engine-neutral.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a web feature owned end to end by one implementer retains the current tracer-bullet decomposition.
- **Playable tracer:** a traversal milestone remains visibly end-to-end, while runtime, world, technical-art, and integration work are separate owner-bounded tickets with explicit handoffs.
- **Deterministic rule:** an inventory constraint can be one agent-ready ticket with falsifiable tests and a named engine integration boundary only if needed.
- **Creative review:** a camera or combat-feel item cannot be marked AFK-ready or complete without the named player-facing authority and representative play evidence.
- **Artifact safety:** two otherwise unblocked tickets that require the same map, Blueprint, material, data asset, or source asset are not placed on the parallel frontier.
- **Editor migration:** a Blueprint reparenting or package move includes referencer/redirector, save-set, lock/recovery, cook/build, and runtime validation rather than using the source-only expand-contract recipe.
- **Evidence ownership:** every criterion can fail at the ticket baseline and is provable by that ticket or its explicit integration gate, not by future work.
- **Source fidelity:** canon constraints and intentional ambiguity survive ticket slicing and reach the correct owner without becoming implementation inventions.
- **Dispatch:** each ticket reaches the appropriate specialist, human/HITL, or autonomous worker state instead of receiving one universal agent-ready label.
- **Parent safety:** the spec remains the linked non-executable parent while only bounded approved children enter the execution frontier.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/to-tickets/SKILL.md`
- `docs/engineering/to-tickets.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- tracker and triage templates under `skills/engineering/setup-matt-pocock-skills/`
- `to-spec`, `wayfinder`, `implement`, `triage`, and `code-review`, which produce or consume ticket state
- the shared game-development milestone, classification, authority, ownership, artifact, migration, and layered-evidence reference
- disclosed runtime/project adapters for persistent specialist assignment, tracker state, engine operations, and source-control ownership

No production skill has been edited as part of this assessment.

---

## 18 — `triage`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review. Preserve recommend-and-wait while adding game-aware intake, representative evidence, honest owner/readiness states, stable artifact identities, and specialist-scoped briefs.

**Patch class:** direct game-intake, artifact-aware verification, owner/readiness, and brief-template branch backed by the shared game reference

### Preserve

The recommend-and-wait behavior, full issue/comment intake, prior-note reuse, reproduce-before-brief rule, redundancy and prior-rejection checks, explicit needs-info questions, durable scope boundaries, and AI-generated-comment disclosure are strong. Preserve the requirement that the maintainer directs the state change rather than letting triage silently relabel or close incoming work.

Keep the simple `bug`/`enhancement` distinction where it is useful, but do not ask those two labels to carry discipline, authority, artifact, evidence, and execution readiness as well.

### Normal game situations

- Triage “sprint does nothing” when source code exists but input mapping, Blueprint defaults, ability grants, animation, or runtime wiring may be absent.
- Reproduce a lighting, VFX, animation, audio, streaming, or level-flow defect that cannot be proved by a code path or automated test alone.
- Evaluate a performance report tied to a particular map, target device, scalability preset, frame capture, build configuration, or content revision.
- Review a PR/changelist containing source plus opaque editor packages or source assets without treating a text diff as behavioral proof.
- Route a balance request, source/canon conflict, creative preference, platform constraint, and deterministic bug to different authorities and specialists.

### Current evidence

- `skills/engineering/triage/SKILL.md:9-17` treats issues and optional external PRs as one tracker state machine and requires an AI disclaimer on every posted comment.
- `skills/engineering/triage/SKILL.md:24-45` provides only `bug`/`enhancement` categories and five states whose executable split is AFK agent versus human.
- `skills/engineering/triage/SKILL.md:56-66` uses a cheap listing for discovery before a maintainer selects an item.
- `skills/engineering/triage/SKILL.md:68-76` gathers issue/diff and codebase context, searches only the codebase for redundancy, reproduces bugs from reporter steps, validates PRs through tests/commands, and then invokes `grilling` plus `domain-modeling` if needed.
- `skills/engineering/triage/SKILL.md:78-90` posts an agent/human brief, writes rejected enhancements into `.out-of-scope/`, or trusts a quick maintainer override into `ready-for-agent` without requiring the full normal verification path.
- `skills/engineering/triage/AGENT-BRIEF.md:3-37` makes the brief the authoritative AFK contract, prioritizes interfaces and testable behavior, and universally prohibits file paths.
- `skills/engineering/triage/AGENT-BRIEF.md:39-68` provides an application-oriented template with current/desired behavior, key code interfaces, acceptance criteria, and out of scope, but no player outcome, specialist, artifact, representative conditions, source constraints, or layered evidence.
- `skills/engineering/triage/OUT-OF-SCOPE.md:60-68` asks for durable scope/technical/strategic reasons and correctly says temporary lack of capacity is deferral rather than rejection.
- `docs/engineering/triage.md:51-63` defines shallow verification through bug reproduction, PR checkout/tests, and codebase redundancy.
- `docs/engineering/triage.md:73-83` documents missing labels, absent blocked/deferred/implemented states, the open seam to `diagnosing-bugs`, and a bulk-triage failure caused by not reading full comments.

### Concrete game failure

An incoming report says sprint never activates. The redundancy search finds `StartSprint()` and a movement-speed variable, so the current process can recommend “already implemented” and close the issue. In the actual build, the Enhanced Input action may not be mapped in the active context, the ability may not be granted by the character data, a Blueprint default may disable it, or animation/root motion may cancel the speed change. Code existence is not player-visible implementation.

A report that “this forest drops below the target frame rate” also cannot be responsibly confirmed or rejected without the map, hardware, platform build, scalability settings, camera path, warm-up conditions, content revision, and profiler evidence. Running a general test command produces evidence about a different claim. Likewise, a visual or audio PR containing opaque packages cannot be verified by a textual diff and tests alone.

The state model compounds the routing problem. `ready-for-agent` means any AFK agent may take the item, while `ready-for-human` collapses creative judgment, specialist editor work, external access, hardware testing, and hands-on play into one bucket. It has no honest state for a fully understood issue blocked by another artifact owner, waiting for an engine-native experiment, deferred to a milestone trigger, or implemented but awaiting player/creative/platform verification.

Finally, the authoritative brief bans stable artifact identities. That protects application briefs from stale source paths, but a game worker may need the exact package/object, representative test map, save/seed, source asset, build target, or configuration that defines ownership and reproduction. Omitting it can send an otherwise good brief to the wrong specialist or let two sessions touch the same non-mergeable content.

This is **High** because triage can close valid reports, persist scope rejections, or mark work executable based on evidence that does not observe the game behavior and without identifying the correct owner. It remains below Critical because the skill recommends first and waits for maintainer direction before normal state-changing actions.

### Narrow adaptation

1. Preserve the current application triage path and the invariant that one configured flow state is active at a time.
2. Add orthogonal game intake fields rather than exploding the category list: player/production impact, material artifact class, deciding authority, responsible discipline/specialist, required evidence, and mutable-artifact scope. `bug`/`enhancement` may remain high-level categories.
3. Gather only the reproduction conditions material to the report: engine/project/build version, target platform/hardware, build configuration, map/level, save/seed, input device and mapping context, network topology/latency, scalability/render settings, content/source revision, steps, frequency, expected/observed result, and available logs, crash data, captures, traces, or attachments.
4. Verify at the layer that can observe the claim:
   - deterministic source behavior → focused tests or harness;
   - engine/editor integration → compile/validation and representative runtime setup;
   - controls, camera, animation, level flow, visuals, or audio → in-context reproduction and appropriate hands-on/discipline review;
   - streaming, frame time, memory, or rendering → representative content and profiler evidence on material hardware;
   - multiplayer → stated instance, latency, and loss conditions;
   - source/canon claim → authoritative source and approved adaptation documents.
5. Search redundancy across the implemented experience, not code alone: source, Blueprints/graphs, input mappings, config, data assets, maps, content references, build/cook inclusion, runtime wiring, and target behavior as material. “A symbol exists” is not an already-implemented verdict.
6. Classify PR/changelist artifacts before checkout or verification. Discover source control, dirty editor state, locks, LFS/binary packages, recovery needs, and the intended save list. A text diff can review source but cannot certify opaque content; use the owning editor and representative evidence.
7. Inherit the accepted `grilling` and `domain-modeling` classifications. Route player-facing choices to the user/Game Director and implementation mechanisms to the owning specialist; preserve canon constraints and intentional ambiguity instead of converting them into ordinary feature preferences.
8. Separate flow state from execution owner/mode in the configured tracker vocabulary. At minimum, represent needs-decision/evidence, blocked or trigger-deferred, ready for the named specialist/autonomous worker/HITL owner, and implemented-awaiting-required-verification honestly. Do not label blocked or judgment-dependent work as AFK-ready merely because the prose is complete.
9. A ready state requires a bounded outcome, owner, authority, dependencies, access/tooling, artifact scope, and executable acceptance evidence. A quick maintainer override may skip discussion, but executable readiness still needs an authoritative brief or an explicit acknowledgement that the missing contract is intentional.
10. Add a game branch to the agent/specialist brief:
   - player/production impact and representative scenario;
   - confirmed current behavior and reproduction evidence;
   - desired outcome, fixed constraints, and non-goals;
   - deciding/review authority and implementation owner;
   - stable mutable artifact identities and ownership boundaries when material;
   - acceptance evidence with environment/budget conditions;
   - related source, spec, decision, prototype, and dependency pointers.
11. Continue banning incidental line numbers and brittle source locations, but allow stable package/object names, test maps/scenes, data assets, source assets, configurations, saves, and build targets required for ownership or reproduction.
12. Treat rejection, deferral, and “not this milestone” distinctly. Persist only an accepted durable rejection in the configured project decision surface, with authority, rationale, prior requests, and any reconsideration trigger. Do not turn temporary capacity, untested risk, source uncertainty, or deferred creative intent into permanent `.out-of-scope/` truth.
13. For bulk triage, fetch each selected item's full body, comments, prior triage notes, attachments, and current labels before recommending or mutating it. The cheap list is discovery evidence only.
14. Route failures that need causal investigation to the adapted `diagnosing-bugs` skill rather than stretching shallow intake verification into a root-cause session.
15. Keep exact tracker labels, Hermes Kanban assignment, persistent specialist profiles, engine commands, source-control operations, attachment tooling, and platform labs in disclosed runtime/project adapters.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** an incoming API bug retains the current reproduce, recommend, brief, and maintainer-confirm flow.
- **Runtime wiring:** an existing sprint function does not trigger “already implemented” until input, data, Blueprint/config, runtime, and player-visible behavior are checked as material.
- **Visual/content issue:** a lighting or animation report is reproduced in the named representative scene and reaches the owning specialist with review evidence.
- **Performance issue:** a frame-rate report remains needs-info until material hardware, build, map, settings, path, and profiler conditions are reproducible.
- **Opaque PR:** a mixed source-and-asset PR receives separate textual and editor/runtime verification; branch/package safety is checked before checkout.
- **Source fidelity:** a reported lore conflict routes to authoritative source/adaptation review rather than code-only verification or an AFK implementation brief.
- **Readiness honesty:** blocked, deferred, creative/HITL, specialist, autonomous, and awaiting-verification work cannot all collapse into one agent-ready state.
- **Artifact ownership:** the brief may identify the exact shared map/package/data asset needed to prevent overlapping specialist edits.
- **Scope memory:** a temporary milestone deferral is not stored as a permanent rejection, while a confirmed durable rejection remains discoverable and reviewable.
- **Bulk safety:** existing comments that establish “fixed,” “duplicate,” or “still blocked” are read before any batch state change.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/triage/SKILL.md`
- `skills/engineering/triage/AGENT-BRIEF.md`
- `skills/engineering/triage/OUT-OF-SCOPE.md`
- `docs/engineering/triage.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- tracker and triage-label templates under `skills/engineering/setup-matt-pocock-skills/`
- `grilling`, `domain-modeling`, `diagnosing-bugs`, `to-spec`, `to-tickets`, `implement`, and `code-review`, which supply or consume triage state and briefs
- the shared game-development authority, ownership, artifact, source, environment, and layered-evidence reference
- disclosed runtime/project adapters for specialist dispatch, editor/source-control safety, and platform reproduction

No production skill has been edited as part of this assessment.

---

## 19 — `improve-codebase-architecture`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review. Preserve the non-destructive survey while adding player/production framing, cross-artifact discovery, game-safe architecture lenses, specialist ownership, migration risk, layered evidence, an honest no-change outcome, and runtime-neutral orchestration.

**Patch class:** direct game-architecture survey branch, inherited primitive corrections, artifact-aware report contract, and runtime-adapter isolation backed by the shared game reference

### Preserve

The skill's survey-before-refactor boundary is strong. Preserve scope-first exploration, reading accepted domain and architecture decisions before suggesting change, writing the report outside the repository, making no implementation changes, presenting multiple candidates before grilling, waiting for the user to select one, carrying only one candidate into a decision session, and sending accepted work back through the normal specification and implementation flow.

Depth, locality, leverage, seam placement, the deletion test, and designing alternatives are useful architecture lenses for game source systems. Preserve them as lenses rather than universal proofs. The report should remain concise and visual, and a durable rejection may still be recorded so a later survey does not repeatedly propose the same change.

### Normal game situations

- Survey a gameplay feature whose behavior spans native source, visual scripting, input configuration, data assets, animation, UI, and replicated authority.
- Review an engine extension point whose thin-looking object exists for reflection, serialization, lifecycle callbacks, editor exposure, networking, or plugin compatibility.
- Find production friction in a level, scene, prefab/Blueprint, material, VFX graph, animation graph, audio graph, world-streaming setup, build/cook rule, or source-asset pipeline rather than in source files alone.
- Decide whether a recurring runtime defect is caused by a poor source seam, an asset-authoring seam, a build/cook seam, or missing ownership between disciplines.
- Compare a cleaner code interface against designer iteration speed, content reuse, asset migration cost, multiplayer authority, frame-time cost, and target-platform constraints.

### Current evidence

- `skills/engineering/improve-codebase-architecture/SKILL.md:9-14` defines success as deepening shallow code modules for testability and AI navigability and requires one application-oriented architecture vocabulary for every suggestion.
- `skills/engineering/improve-codebase-architecture/SKILL.md:20-35` scopes the scan through named code areas or Git commit hot spots, sends a sub-agent through the codebase, and evaluates file-hopping, shallow modules, leaked seams, testability, and the deletion test.
- `skills/engineering/improve-codebase-architecture/SKILL.md:37-60` makes files/modules, locality, leverage, and improved tests the candidate-card evidence, then chooses a top recommendation before asking the user which candidate to explore.
- `skills/engineering/improve-codebase-architecture/SKILL.md:62-71` sends the selected candidate through `grilling`, mutates `CONTEXT.md` inline through `domain-modeling`, and delegates alternative-interface exploration to the parallel sub-agent pattern in `codebase-design`.
- `skills/engineering/codebase-design/SKILL.md:12-28` bans ordinary alternatives to its exact code-module vocabulary, while `skills/engineering/codebase-design/SKILL.md:62-65` treats the deletion test, the interface as the test surface, and two adapters as the principal seam tests.
- `skills/engineering/codebase-design/DEEPENING.md:7-25` classifies dependencies only as in-process, local-substitutable, remote-owned, or true external; engine-owned object lifecycles, editor/content graphs, hardware/runtime systems, and build/cook dependencies have no explicit treatment.
- `skills/engineering/codebase-design/DEEPENING.md:27-37` recommends deleting old shallow-module tests once interface tests exist and says the interface is the test surface.
- `skills/engineering/codebase-design/DESIGN-IT-TWICE.md:19-44` requests three or more parallel sub-agents and compares their interfaces primarily by depth, locality, and seam placement.
- `skills/engineering/improve-codebase-architecture/HTML-REPORT.md:44-53` identifies each candidate through files, a four-way application dependency category, a before/after diagram, and short test/locality wins; it has no artifact owner, player or production consequence, representative evidence, migration risk, or engine constraint.
- `skills/engineering/improve-codebase-architecture/HTML-REPORT.md:3-16` calls the report self-contained while loading Tailwind and Mermaid from CDNs and enabling Mermaid's loose security mode.
- `docs/engineering/improve-codebase-architecture.md:54-64` documents models skipping the report for a long grill, silent report failure in offline or locked-down environments, and the missing one-candidate-per-session workflow in the skill itself.
- `docs/engineering/improve-codebase-architecture.md:78-84` acknowledges that the framing rarely permits a “codebase is fine” result and that the public process directly depends on a harness-specific exploration agent.

### Concrete game failure

Suppose a replicated traversal ability appears across C++ movement code, a Blueprint ability, Gameplay Tags, Enhanced Input mappings, animation montages, character data, UI feedback, and network authority rules. Git history exposes the source files cleanly but gives little semantic evidence for opaque editor packages. The current survey can therefore diagnose file-hopping and recommend collapsing the behavior behind one deep C++ interface. Its report looks strong: fewer files, one interface, simpler tests, and better locality.

That recommendation may make the game worse. The apparent pass-through object may be the engine-recognized lifecycle or replication hook. Moving data and events behind C++ can remove safe designer tuning, break serialized references, obscure authority boundaries, invalidate cooked content, or force risky migration of shared packages. An interface test can pass while the active input context, Blueprint defaults, montage notifies, content references, replication conditions, or cooked build still fail. The code seam is not the whole player-visible or production-visible seam.

The same blind spot excludes architecture problems that live mainly outside code. A material-instance convention, PCG graph, level-streaming policy, animation data flow, or source-asset import pipeline may be the highest-cost production seam, yet recent text-file churn will not reveal it. If such a candidate is found, a generic architecture agent also lacks authority to choose the rendering, world-building, or gameplay mechanism on behalf of its specialist owner.

This is **High** because the report can give a persuasive top recommendation for a foundational refactor while omitting the artifacts, engine contracts, authorship workflow, migration risk, and evidence that determine whether it is safe. It remains below Critical because the skill deliberately changes no code, shows options first, and waits for the user to select a candidate before proceeding.

### Narrow adaptation

1. Preserve the application/code-only path. Activate the game branch only when the repository, named scope, or user request makes game runtime, content, or production architecture material.
2. Start a game survey from an intended player-facing milestone or a recurring production pain, not “architecture improvement” in the abstract. Record why solving it now is more valuable than leaving a stable seam alone.
3. Discover the project's engine, platforms, build targets, source-control model, accepted design/architecture decisions, specialist ownership, and relevant artifact classes before scanning. Inspect source and text assets directly; use engine/editor-aware metadata and project tools for opaque content rather than pretending binary packages are readable code.
4. Treat Git churn as one signal, not the hotspot oracle. Combine material evidence such as issue recurrence, change coupling, asset history and locks, editor iteration cost, build/cook failures, runtime logs, traces/profiles, crash data, representative play failures, and specialist-reported friction. Support Perforce, LFS, and project-specific history through adapters.
5. Survey both runtime architecture and production architecture. Include source, scripts/graphs, maps/scenes, prefabs/Blueprints, data/configuration, shaders/materials/VFX, animation/audio, plugins, import/export pipelines, build/cook/packaging, streaming, networking, and platform integration only when relevant to the named outcome.
6. Classify every candidate by responsible specialist, deciding/review authority, artifact class, mutable ownership boundary, and the player or production consequence. A generic survey may identify friction; the Unreal Systems Engineer, Technical Artist, World Builder, or equivalent specialist owns the technical mechanism in their domain.
7. Inherit the eventual game-safe `codebase-design` primitive instead of duplicating its rules here. Apply depth, deletion, and interface tests only where the underlying abstraction model fits. Do not condemn an engine-required adapter, object, component, graph, event, or serialized shell merely because it looks thin in source.
8. Preserve engine-native and project-native nouns when they carry real semantics. Do not replace terms such as Actor Component, subsystem, material layer, animation layer, service, or API merely to satisfy a universal glossary ban; distinguish domain language from architecture-analysis language.
9. Expand the dependency analysis used by reports to recognize engine-owned lifecycle/reflection/serialization seams, editor and content-reference seams, frame/thread/GPU/audio systems, network authority, platform services, streaming, and build/cook boundaries. Keep concrete engine mechanisms in project adapters and let the owning specialist judge them.
10. Evaluate authorability as well as callability: who tunes the behavior, where iteration happens, which changes require a compile/cook, what can be safely reused, and which specialist must open or save an asset. A smaller code interface is not automatically deeper if it exports complexity into fragile editor steps or hidden content conventions.
11. Replace the report's file-only candidate identity with stable source and artifact identities as appropriate. Each card should state: observed friction and evidence; player/production consequence; affected surfaces; owner and authority; fixed engine/source constraints; proposed responsibility shift; migration and blast radius; representative validation; expected payoff; cost/risk; and recommendation confidence.
12. Rank the top recommendation by evidence-backed player or production payoff relative to implementation, migration, integration, and verification risk—not depth or recent churn alone. Explicitly allow “no worthwhile change now”; a survey containing only speculative candidates should recommend no action.
13. Before recommending movement or consolidation of maps, scenes, Blueprints/prefabs, graphs, data assets, or other opaque/shared artifacts, identify locks, concurrent owners, redirector/reference repair, source-asset lineage, backup/recovery, migration order, and the minimal safe save list. The survey still performs no mutation.
14. Give each candidate a layered evidence plan proportional to its claim: focused automated checks for deterministic logic; engine/editor validation for serialization and wiring; representative play for controls, animation, camera, level flow, visuals, or audio; network conditions for authority; profiler/budget evidence for runtime cost; and cook/build/target-platform checks where material.
15. Keep report-first and one-candidate-per-session behavior explicit. Make the report actually self-contained or provide a verified offline fallback, render/open it with the available runtime adapter, and confirm that its diagrams and candidate text are visible before asking the user to choose.
16. Express independent exploration and design comparison in runtime-neutral terms. A Hermes adapter may use visible persistent specialist sessions and Kanban; another harness may use its own worker mechanism. Hidden generic sub-agents are not part of the shared skill contract.
17. After selection, inherit the accepted decision classifications and one-writer authority rules from `grilling` and `domain-modeling`. Route the result through the game branches of `to-spec`, `to-tickets`, `implement`, and `code-review`; do not turn a survey candidate directly into a refactor.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a TypeScript application survey still finds code-module deepening candidates, creates no code changes, presents the report first, and waits for a selection.
- **Cross-surface gameplay:** a traversal feature spanning source, visual scripting, input, data, animation, UI, and networking is evaluated as one player-visible system rather than a source-only file cluster.
- **Engine-required shell:** a thin reflected/serialized/lifecycle object is not recommended for deletion until its engine contract and authoring role are understood.
- **Content hotspot:** a recurring level, material, VFX, animation, audio, or import-pipeline problem can become a candidate even when Git text-file churn is quiet.
- **Authorability:** a proposal that simplifies C++ while making designer iteration slower or less safe states that tradeoff rather than claiming unconditional leverage.
- **Ownership safety:** a candidate involving shared opaque packages identifies its specialist owner, locks/concurrency, migration order, and recovery requirements without editing the assets.
- **Layered evidence:** a cleaner interface and passing unit tests cannot alone certify editor wiring, network authority, frame budget, cooked content, or target-platform behavior.
- **Authority routing:** gameplay, rendering, world-building, source/canon, and production decisions reach their proper owners instead of one generic architecture agent choosing every mechanism.
- **No-change result:** when evidence does not justify the cost and risk, the top recommendation is explicitly “no architecture change now.”
- **Portable report:** the HTML report renders in an offline or locked-down environment, is verified before handoff, and its content does not depend on one model vendor's agent primitive.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/improve-codebase-architecture/SKILL.md`
- `skills/engineering/improve-codebase-architecture/HTML-REPORT.md`
- `skills/engineering/improve-codebase-architecture/agents/openai.yaml`
- `docs/engineering/improve-codebase-architecture.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- `codebase-design`, including `DEEPENING.md` and `DESIGN-IT-TWICE.md`, as the governing primitive
- `grilling`, `domain-modeling`, `to-spec`, `to-tickets`, `implement`, and `code-review`, which consume the selected candidate
- the shared game-development outcome, authority, ownership, artifact, environment, source-control, migration, and layered-evidence reference
- disclosed runtime/project adapters for specialist dispatch, engine/editor inspection, source control, report rendering, and platform verification

No production skill has been edited as part of this assessment.

---

## 20 — `codebase-design`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review. Preserve deep-module thinking while qualifying its absolutes for engine-native vocabulary, engine- and ownership-imposed seams, multiple intentional interfaces, layered evidence, production architecture, specialist authority, and runtime-neutral option generation.

**Patch class:** shared game-safe architecture primitive, dependency-and-evidence correction, engine-vocabulary coexistence rule, and runtime-neutral alternative-design adapter

### Preserve

The compact architecture vocabulary is valuable. Preserve the distinction between interface and implementation, depth as leverage rather than lines of code, locality of change, explicit seam placement, adapters as roles, the deletion test as a design question, and designing materially different alternatives before committing to the first interface. Its definition of an interface as more than a type signature—also invariants, ordering, errors, configuration, and performance—is especially useful for gameplay systems.

Also preserve `codebase-design` as a reference beneath a driver rather than a self-starting refactor process. Its application path and examples should remain intact. The adaptation should qualify over-broad rules, not replace deep-module thinking with a game-specific architecture doctrine.

### Normal game situations

- Decide whether a gameplay ability belongs behind a stable interface while its engine hooks, assets, animation, input, and replication remain observable and authorable.
- Evaluate a thin `ActorComponent`, subsystem, script/graph, plugin facade, or platform wrapper that exists because the engine requires a particular lifecycle, reflection, serialization, or callback shape.
- Design distinct runtime, editor-authoring, save/load, networking, and tooling surfaces around one responsibility.
- Place a seam across game thread/render thread, client/server authority, editor/runtime, source/content, plugin/project, package ownership, or platform SDK constraints.
- Choose tests and representative evidence for deterministic simulation, engine integration, content wiring, performance, and target-platform behavior.

### Current evidence

- `skills/engineering/codebase-design/SKILL.md:8-28` defines all functions, classes, packages, and tier-spanning slices as “modules” and prohibits substituting `component`, `service`, `API`, or `boundary`, even when those words may be engine-native concepts rather than loose synonyms.
- `skills/engineering/codebase-design/SKILL.md:54-65` asks designers to minimize methods and parameters, hide complexity, apply the deletion test, treat the interface as the test surface, and reject a seam until two adapters exist.
- `skills/engineering/codebase-design/SKILL.md:67-95` uses dependency injection, returned results, reduced side effects, and smaller method/parameter counts as the full testability guidance.
- `skills/engineering/codebase-design/SKILL.md:97-103` says a module has exactly one interface, making a single caller-facing surface the model for depth, seam placement, adapters, leverage, and locality.
- `skills/engineering/codebase-design/DEEPENING.md:7-25` classifies dependencies only by in-process behavior, local test substitutes, owned remote services, and external services, with Postgres, HTTP/gRPC/queues, Stripe, and Twilio as its representative world.
- `skills/engineering/codebase-design/DEEPENING.md:27-37` treats a second adapter as the condition for a real seam, instructs replacement of old shallow-module tests, and says tests must live at the deepened module's interface.
- `skills/engineering/codebase-design/DESIGN-IT-TWICE.md:9-17` frames alternative designs through dependencies and a rough code sketch, but not the intended player/production outcome, engine contracts, artifact ownership, budgets, or validation conditions.
- `skills/engineering/codebase-design/DESIGN-IT-TWICE.md:19-44` hard-codes three or more parallel sub-agents, asks each for a code interface, and compares results principally by depth, locality, and seam placement.
- `docs/engineering/codebase-design.md:3-5,54-56` confirms that this is a reference with no stopping rule and documents a known failure in which invoking it as a process caused broad autonomous redesign.
- `docs/engineering/codebase-design.md:50-52` acknowledges that the skill does not supply enforcement or concrete construction guidance even for its primary TypeScript use case.
- `docs/engineering/codebase-design.md:70-72` confirms that the alternative-design procedure is coupled to one vendor's named Agent tool and is not portable across supported harnesses.

### Concrete game failure

Consider a thin Unreal `UActorComponent` that registers engine callbacks, exposes Blueprint events and editable properties, owns replicated state, and delegates deterministic calculations to ordinary C++ code. Under the current glossary, calling it a “component” is prohibited, one production implementation makes its seam “hypothetical,” and its small implementation can fail the deletion test. A redesign can therefore recommend absorbing it into one deep module with one interface and replacing its focused tests with tests at that interface.

The apparent shallowness is serving a real engine contract. Removing or hiding it can break reflection, serialization, editor exposure, component replication, lifecycle ordering, saved references, or designer workflows. Keeping it is not speculative abstraction even if there will never be a second adapter. Its seam is imposed by the engine and by who is allowed to author or mutate the artifact, not only by implementation variability.

The “one interface” and “interface is the test surface” rules create a second failure. A gameplay system may intentionally expose different surfaces to runtime callers, designers in the editor, save migration, network authority, automation, and telemetry. Collapsing these audiences into one surface either makes the interface look falsely shallow or creates a god object. Tests through that surface can prove deterministic rules while missing Blueprint defaults, content references, frame/update order, server authority, cooked data, visual behavior, and target-platform budgets.

This is **High** because `codebase-design` is the shared primitive beneath several engineering skills, so over-broad rules can repeatedly steer game architecture toward the wrong seams, vocabulary, and evidence. It remains below Critical because the skill is a reference rather than an autonomous mutation flow; a driver and a human or specialist still choose and implement the design.

### Narrow adaptation

1. Preserve the existing application vocabulary and examples. Add a game-context qualification layer rather than turning the reference into an engine-specific pattern catalog.
2. Treat `module`, `interface`, `depth`, `seam`, `adapter`, `leverage`, and `locality` as analysis terms, not replacements for correct engine or project nouns. A Component, Service, API, subsystem, layer, wrapper, graph, asset, plugin, or engine Module may have a precise native meaning; qualify the relationship instead of banning the word.
3. In engines where “module” already names a build/load unit, distinguish **analysis module** or the project's chosen equivalent from the engine-native Module when ambiguity would affect a decision.
4. Define depth relative to an audience and responsibility. One responsibility may deliberately present separate runtime, editor/authoring, data/serialization, network, tooling, or platform interfaces. Judge whether each surface hides the right complexity; do not require every audience to share one interface.
5. Keep interface minimization as a pressure, not an objective by itself. Include temporal behavior, lifecycle, authority, determinism, failure modes, serialization/versioning, thread/frame domain, performance budgets, content dependencies, authoring workflow, and platform constraints in what a caller or author must know.
6. Extend the deletion test across the whole production system: if an object disappears, ask where its lifecycle integration, editor affordance, serialized identity, network authority, content references, package ownership, build/cook role, and specialist coordination move. Complexity that vanishes from source may merely have become implicit or unsafe.
7. Replace “two adapters means a real seam” with a heuristic against speculative indirection. A single implementation can sit at a justified seam imposed by engine lifecycle, platform/SDK boundary, process or thread, client/server authority, determinism, serialization/versioning, plugin isolation, artifact ownership, failure containment, build/cook, security, or testing access.
8. Replace the one-dimensional dependency categories with a small set of questions that can compose: who owns it; what lifecycle/thread/process/authority domain it inhabits; whether it is source, data, editor content, hardware, platform, network, or build infrastructure; how it is serialized/deployed; what can substitute for it; and which evidence can observe it. Keep exact engine mechanisms in project adapters.
9. Restrict “accept dependencies” and “return results” to contexts where the caller can own construction and pure computation is the desired seam. Engine-owned objects, world state, entity/component systems, event-driven gameplay, render/audio work, and editor transactions may require lifecycle injection, commands, events, or controlled side effects.
10. Replace “the interface is the test surface” with “the interface is a primary behavioral test surface.” Preserve focused deterministic tests when they are cheaper and more diagnostic, then add only the material layers: serialization and editor wiring, representative runtime/play, networking, profiler/budget, cook/build, and target-platform evidence.
11. Replace automatic test deletion with evidence consolidation. Remove redundant tests only after the new suite demonstrably preserves their signal; retain inner-kernel, migration, engine-contract, integration, content-validation, performance, and regression tests when they protect different failure classes.
12. Guard against deep-module god objects. Compare locality and leverage with change cadence, parallel ownership, compile/cook iteration, data locality, frame/thread scheduling, fault isolation, designer authorability, asset reuse, and the blast radius of one mutable package or class.
13. In `DESIGN-IT-TWICE`, frame every option with the intended player or production outcome, fixed creative/engine constraints, owning specialist, artifact boundary, representative conditions, and required evidence. Alternative designs may vary responsibility placement and authoring flow—not only method signatures.
14. Compare alternatives by player/production value, depth, locality, authorability, runtime budgets, determinism/authority, migration cost, source-control safety, validation strength, and reversibility. Let the relevant specialist decide the technical mechanism; the Game Director or product authority decides player-facing priorities and acceptable tradeoffs.
15. Express independent option generation in model- and harness-neutral terms. Runtime adapters decide whether that means visible persistent specialist sessions, Kanban assignments, subprocesses, or another mechanism. Invoking the reference alone must never auto-spawn workers or begin redesigning the project.
16. Keep one writer for any shared glossary, ADR, architecture diagram, or mutable editor asset while alternatives are explored. Worker outputs are proposals with evidence, not concurrent edits to production truth.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a service or TypeScript module can still be designed through the original depth, locality, seam, adapter, and interface concepts without game ceremony.
- **Native vocabulary:** an Unreal Actor Component or engine Module retains its correct native name while its role can still be analyzed with the shared concepts.
- **Engine contract:** a thin reflected/serialized/lifecycle shell is not removed merely because it has one implementation or little internal code.
- **Multiple audiences:** runtime, editor, save/load, networking, and tooling surfaces can remain intentionally distinct without being forced into one public interface.
- **Stateful gameplay:** engine-owned world state and event-driven behavior are not contorted into pure return-value functions solely to satisfy a generic testability example.
- **Layered evidence:** deterministic interface tests coexist with the minimal engine, content, network, performance, cook/build, or platform checks needed to observe other failure classes.
- **Single-adapter seam:** a platform SDK or engine callback boundary can be justified by lifecycle, ownership, failure, or portability even when no second production adapter exists.
- **Production architecture:** a design that improves code locality but damages designer iteration, content reuse, frame budget, or asset ownership is reported as a tradeoff, not an automatic improvement.
- **Alternative ownership:** rendering, world-building, gameplay systems, and creative tradeoffs are evaluated by the proper specialists and authorities without concurrent edits to shared artifacts.
- **Reference boundary:** invoking `codebase-design` alone supplies vocabulary and stops; a named driver is required before exploration, worker dispatch, document mutation, or implementation.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/engineering/codebase-design/SKILL.md`
- `skills/engineering/codebase-design/DEEPENING.md`
- `skills/engineering/codebase-design/DESIGN-IT-TWICE.md`
- `skills/engineering/codebase-design/agents/openai.yaml`
- `docs/engineering/codebase-design.md`
- `skills/engineering/README.md`
- the top-level `README.md`
- `improve-codebase-architecture`, `tdd`, `implement`, `code-review`, and other consumers of the architecture primitive
- the shared game-development outcome, authority, ownership, artifact, lifecycle, environment, budget, migration, and layered-evidence reference
- disclosed runtime/project adapters for specialist option generation, engine/editor semantics, source control, and platform constraints

No production skill has been edited as part of this assessment.

---

## 21 — `handoff`

**Accepted verdict: Medium — adaptation required**

**Decision:** accepted by the user during the one-skill review. Preserve compact portable context while adding destination intent, decision authority, specialist ownership, mutable-artifact state, evidence honesty, resumable engine/source-control conditions, durable transit, and runtime-specific assignment outside the shared skill.

**Patch class:** narrow game-handoff schema, artifact-ownership and evidence state, durable-transit correction, and runtime-neutral destination adapter backed by the shared game reference

### Preserve

The skill's defining strength is a small, portable, task-directed secondary source. Preserve explicit invocation, tailoring to the destination task, writing outside the workspace by default, suggesting relevant skills, redacting secrets, and referencing specs, plans, ADRs, issues, commits, and diffs rather than copying them into a second drifting source of truth.

Keep `handoff` narrower than continuation or compaction. It should move work between sessions, tools, directories, or people; it should not become a mandatory phase document or a substitute for the project tracker, accepted design record, source control, or direct evidence.

### Normal game situations

- Hand a player-facing traversal decision from the Game Director to the Unreal Systems Engineer without transferring creative authority or omitting the playable acceptance intent.
- Send a lighting, material, VFX, animation, audio, or world-building task to the owning specialist while identifying the exact shared content that must not be edited concurrently.
- Carry findings from an isolated engine-native prototype back to the main design session without treating prototype assets as production-ready.
- Resume work on another machine or harness when the branch/changelist, editor state, engine/plugins, target build, test map, and evidence are material.
- Transfer a mixed source-and-opaque-content review after some checks passed and others still require editor, play, visual, audio, network, or profiler validation.

### Current evidence

- `skills/productivity/handoff/SKILL.md:8-16` requires only a conversation summary, a suggested-skills section, references to existing artifacts, secret/PII redaction, and optional tailoring. It defines no outcome, authority, owner, artifact, environment, evidence, assumption, or resume-state fields.
- `docs/productivity/handoff.md:3-20` defines portability across harnesses, directories, colleagues, and side-task forks as the skill's purpose and correctly reserves other phase-boundary options for work that is not travelling.
- `docs/productivity/handoff.md:30-34` says the document carries what is in flight, why, what is next, and suggested skills while settled artifacts remain authoritative by reference; most of that contract is not explicit in the skill body.
- `docs/productivity/handoff.md:44-51` documents long and unreliable temp paths, temp cleanup between sessions, inaccessible temp references, and shell interpolation that can silently truncate a handoff.
- `docs/productivity/handoff.md:59-60` acknowledges that the handoff often captures what but not why and can promote an unverified belief into a fact that the receiving agent will not re-check. The current skill does not require provenance or verification labels.
- `docs/productivity/handoff.md:65-72` tests success through compactness, cold readability, suggested skills, and secret removal, but not through artifact ownership, resumable editor/source-control state, accessible evidence, or faithful decision authority.
- `skills/engineering/ask-matt/PHASE-BOUNDARIES.md:42-51` correctly classifies a handoff as a lossy secondary source, making preservation of the material why and uncertainty an explicit risk rather than a formatting preference.

### Concrete game failure

Suppose a Technical Artist hands off a dust-effect pass with the summary “Niagara effect complete; integrate it into the quarry encounter next.” The conversation contained the real constraints: the effect was approved only in one test map and camera angle, the target GPU budget was not yet measured, a shared material and level package remain checked out and dirty, one source texture lives outside the repository, and the Game Director has not chosen between two visibility treatments.

The current skill can produce a polished, compact document while dropping every one of those facts. A fresh agent may read “complete” as verified, open and save the same non-mergeable packages, lose unsaved editor state, bake the wrong creative option into production, or claim integration success from source/build evidence that never observed the effect. Referencing a screenshot or profiler capture in temp does not help if it disappears or is inaccessible to the destination.

The failure is not solved by copying the whole conversation. The receiver needs a small contract that distinguishes accepted decisions from unresolved choices, verified facts from assumptions, and durable authoritative artifacts from transient working state. It must also say who owns the next technical decision and whether mutable asset ownership has actually transferred.

This is **Medium** because an incomplete handoff can cause rework, false completion claims, or concurrent edits to opaque assets, but the skill itself only writes a user-invoked document. It does not assign, edit, submit, or verify production work, and its existing preference for canonical references limits duplication risk.

### Narrow adaptation

1. Preserve the current application handoff path. Add the game branch only when player experience, game-production artifacts, engine/editor state, source/canon constraints, specialist ownership, or layered evidence is material to continuation.
2. Keep the document compact and destination-directed. State the destination role/profile or capability, the player-facing or production outcome, why the transfer is happening, and the single next bounded outcome; do not dump a generic game checklist.
3. Separate authority from responsibility. Record accepted player/creative/source/scope decisions and their deciding authority, unresolved decisions with their classification and owner, and the receiving specialist's implementation responsibility. A handoff does not silently grant creative or cross-discipline authority.
4. Reference authoritative project artifacts rather than restating them: current spec/brief, ADR or decision record, issue/Kanban item, source/canon reference, prototype result, branch/changelist, review, build, capture, and integration destination as material. Say which source wins if references conflict.
5. Include the minimum reproducible work state: project and engine/plugin version, source-control system, branch/worktree/stream/changelist and revision, uncommitted or unshelved state, build/configuration, target platform, relevant map/scene/save/seed, and runtime conditions only when they affect the next task. Never include credentials or secret-bearing configuration.
6. Identify mutable artifacts by stable package/object/source-asset identity when material. State current owner, lock/check-out status, whether changes are saved/submitted/shelved/exported, the intended save list, recovery point, and whether ownership is retained, relinquished, or awaiting an explicit handoff. Do not let two recipients unknowingly edit the same opaque asset.
7. Treat open-editor and unsaved state as non-portable. If the work depends on it, stop claiming the task is handed off until it is safely saved, shelved/exported, captured for recovery, or explicitly marked as blocked with instructions for the current owner.
8. Add a concise evidence ledger: what was changed; what was actually run or observed; exact material environment/conditions; result and evidence pointer; what failed; what was not run; and what still requires automated, engine/editor, play, visual/audio, network, profiler/budget, cook/build, or target-platform verification.
9. Label statements as verified fact, accepted decision, working hypothesis, reported observation, or unresolved question whenever the receiver could otherwise treat uncertainty as settled truth. Preserve the reason behind load-bearing decisions and rejected alternatives, while pointing to the primary record for detail.
10. Record dependencies, blockers, external access, known hazards, artifact conflicts, and the acceptance evidence required before the next owner may report completion. Distinguish “implementation complete” from “awaiting creative, representative-play, specialist, or platform verification.”
11. Keep prototype output explicitly provisional. Carry the question answered, fidelity limits, representative conditions, result, rejected options, and whether any throwaway assets or code must remain isolated from production.
12. Use OS temp for immediate same-machine transit only. For delayed, cross-machine, colleague, or cross-environment transfer, choose a user-approved durable location outside the repository or an established tracker/storage surface, and ensure every referenced transient file travels too. Report the absolute location and expected lifetime.
13. After writing, read the document cold and verify that it exists, contains no secrets, distinguishes evidence from belief, and points only to destinations the receiver can access. Do not paste the content through an unsafe shell interpolation path.
14. Suggested skills are advisory, not assumed capabilities. Name the needed next activity and list an exact skill only when the destination is expected to have it; let runtime adapters map skill names, persistent specialist profiles, and project-specific commands.
15. In Hermes, use the project Kanban and named persistent specialist profile for assignment and status. The Markdown file carries bounded context; it does not replace the task, ownership transition, or evidence-backed specialist handback. Keep this and all other runtime mechanics out of the shared skill body.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** a normal cross-harness application handoff remains short, redacted, portable, and references existing specs/issues/diffs instead of copying them.
- **Creative-to-technical:** a traversal decision reaches the Systems Engineer with player intent and fixed constraints, while implementation mechanism remains theirs to decide.
- **Opaque asset ownership:** a lighting or VFX handoff names shared packages, current owner, locks/checkouts, save/shelve state, and transfer status before another specialist edits them.
- **Unsaved editor state:** an open dirty level or graph cannot be represented as safely transferred work until it is recovered or explicitly blocked.
- **Evidence honesty:** “done” cannot collapse implementation, representative play, visual/audio review, performance measurement, cook/build, and target-platform verification into one unsupported claim.
- **Source fidelity:** accepted canon/adaptation constraints and unresolved creative choices retain their authority and are not rewritten as implementation assumptions.
- **Prototype return:** a throwaway prototype's answer and fidelity limits travel back without promoting prototype assets or shortcuts into production requirements.
- **Durable transit:** a delayed or cross-machine destination receives an accessible handoff and evidence rather than a dead `%TEMP%` path.
- **Parallel safety:** the handoff plus tracker identify one mutable owner and prevent two specialist sessions from unknowingly editing the same package.
- **Cold read:** a fresh recipient can state the next outcome, owner, constraints, evidence state, blockers, and authoritative references without reopening the original conversation.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/productivity/handoff/SKILL.md`
- `skills/productivity/handoff/agents/openai.yaml`
- `docs/productivity/handoff.md`
- `skills/productivity/README.md`
- the top-level `README.md`
- `ask-matt` and `skills/engineering/ask-matt/PHASE-BOUNDARIES.md`
- `prototype`, `grilling`, `to-spec`, `to-tickets`, `implement`, and specialist handback consumers
- the shared game-development outcome, authority, ownership, artifact, environment, source, evidence, and completion-state reference
- disclosed runtime/project adapters for destination profiles, Kanban/tracker assignment, source control, editor recovery, storage, and platform evidence

No production skill has been edited as part of this assessment.

---

## 22 — `to-questionnaire`

**Accepted verdict: Pass — no direct skill-body adaptation required**

**Decision:** the user chose to skip this skill in their solo-developer game workflow. The compatibility finding is retained for completeness, but no remediation or game-profile enablement is recommended unless collaboration with another human creates a real recipient-held knowledge gap.

**Patch class:** keep the skill body unchanged; inherit decision classification and authority routing, then synchronize only affected public descriptions

### Preserve

`to-questionnaire` already has a strong, discipline-neutral boundary: use it only when one identifiable person holds facts or decisions the user cannot supply, ask the user about the send rather than pretending they know the subject, and produce one concise document for that recipient. Role, expertise, relationship, desired answers, purpose, context, deadline, effort, most-important-first ordering, one idea per question, and permission to answer “I don't know” all transfer cleanly to game development.

Preserve one recipient per questionnaire. In a multidisciplinary game team, that prevents a rendering specialist, world builder, gameplay engineer, source expert, producer, and creative authority from being treated as an interchangeable committee. Also preserve that the skill only writes a file; the user controls delivery and the answers return as input rather than silently changing project truth.

### Normal game situations

- Ask a source or lore expert for factual clarification while leaving adaptation priorities with the Game Director.
- Ask the Game Director or creative lead to choose between player-facing treatments after specialists have stated consequences.
- Ask the Unreal Systems Engineer for viable runtime options, constraints, and risks without prescribing the architecture.
- Ask a Technical Artist about material, Niagara, rendering, or content-pipeline feasibility and representative evidence.
- Ask a World Builder about landscape, streaming, HLOD, data-layer, or environment-construction constraints.
- Ask production or platform ownership for schedule, certification, hardware, budget, access, or release constraints.

### Current evidence

- `skills/productivity/to-questionnaire/SKILL.md:7-13` limits the skill to knowledge held by another person, asks for that recipient's role/expertise/relationship, and asks what concrete decisions or facts must come back.
- `skills/productivity/to-questionnaire/SKILL.md:15-19` writes a named Markdown file, verifies coverage of every requested item, and prioritizes questions for a potentially single async pass.
- `skills/productivity/to-questionnaire/SKILL.md:23-39` requires purpose, sender, recipient, use of the answers, concise context, deadline/effort, uncertainty permission, one idea per question, and selective explanation of why a question matters.
- `docs/productivity/to-questionnaire.md:11-20` already distinguishes answers in the user's head, the codebase, another person's head, and questions that nobody can answer until a prototype provides evidence.
- `docs/productivity/to-questionnaire.md:41-55` deliberately keeps one recipient and a non-branching document, recommends separate runs when knowledge is distributed, and treats “I don't know” as a valid result.
- `docs/productivity/to-questionnaire.md:57-64` keeps delivery under user control and positions the skill as unnecessary when a project already has a suitable house format.
- `docs/productivity/to-questionnaire.md:66-78` requires recipient-appropriate questions and sends returned answers back into `grilling`, `grill-with-docs`, or `to-spec` as raw material rather than declaring them accepted project decisions.

### Concrete-failure test

A game questionnaire can certainly fail if it asks a Technical Artist to decide the game's creative priority, asks a lore expert to approve an adaptation departure, asks a producer to select a networking mechanism, or asks one person to answer a camera-feel question that requires representative play. None of those failures is caused by the questionnaire's writing process:

- decision-versus-fact classification and authority belong to the accepted `grilling` and `domain-modeling` behavior;
- choosing the correct recipient belongs to the sender and the skill's existing role/expertise check;
- empirical unknowns belong to `research` or the adapted engine-native `prototype` route;
- specialist implementation mechanisms belong to the relevant specialist, with player-facing tradeoffs returned to the Game Director/user;
- distributed knowledge already produces separate single-owner questionnaires rather than one blurred multi-recipient document;
- accepting, reconciling, or recording returned answers belongs to the next grilling/specification/decision step.

Adding a mandatory game questionnaire schema here would duplicate the classification and evidence policy already owned upstream, make a lightweight communication tool burdensome, and ask every recipient about irrelevant engine concerns. Under the review contract, there is no direct skill-body instruction that forces a normal game-development failure once the accepted routing primitives are in place.

### Required dependency behavior

The Pass verdict is contingent on these owning behaviors:

1. `grilling` preserves whether each missing answer is a fact, creative/product decision, empirical uncertainty, specialist technical decision, production constraint, or intentional ambiguity/deferred item, together with its owner.
2. `ask-matt` routes only questions genuinely answerable by one person here. It sends source facts to appropriate research/expertise, runtime-dependent uncertainty to the smallest playable or production-verifiable experiment, and cross-disciplinary planning to the relevant flow.
3. The sender selects a recipient whose knowledge or authority matches the requested answer. When roles differ, produce one questionnaire per owner and keep the outputs separate until an authorized reconciliation step.
4. Drafting carries only the material player outcome, fixed creative/source constraints, technical context, representative conditions, and use of the answer already established in conversation. Do not append a universal game checklist.
5. Questions to specialists request options, consequences, constraints, evidence, and recommendations; they do not prescribe implementation or transfer player-facing authority. Questions to creative or source authorities state what technical evidence or source record informs the choice.
6. Returned answers remain attributed input with confidence and unknowns intact. Conflicts, recommendations, and proposed decisions return to `grilling`, `domain-modeling`, `to-spec`, or the project's decision owner before becoming authoritative documentation or executable work.
7. The questionnaire file's location, delivery channel, access controls, retention, and any personal or confidential content follow the project's disclosed runtime/storage adapter. The generic skill should not hard-code email, chat, issue-tracker, or Hermes mechanics.
8. Keep the document user-reviewable before delivery. Generating it does not assign work, contact the recipient, authorize a decision, or start implementation.

### Verification scenarios

The no-direct-change decision is acceptable only if all of these routes are observed after dependency adaptation:

- **Application control:** a client or domain-expert questionnaire retains the existing two-exchange, one-recipient, concise Markdown flow.
- **Source fact:** a lore expert is asked for the authoritative record and confidence, while adaptation authority remains elsewhere.
- **Creative authority:** a Game Director receives player-facing options and consequences rather than an engineer being asked to make the creative choice.
- **Technical authority:** a Systems Engineer, Technical Artist, or World Builder is asked for mechanisms and tradeoffs within their discipline without the questionnaire prescribing the answer.
- **Empirical uncertainty:** camera feel, control response, visual readability, network behavior, or performance that nobody knows yet routes to an experiment instead of a person's opinion.
- **Distributed knowledge:** separate discipline questionnaires retain attribution and are reconciled by the proper authority rather than merged into a false consensus.
- **Uncertainty:** partial answers and “I don't know” survive the return path instead of being rewritten as confident requirements.
- **Downstream status:** a completed questionnaire supplies raw input; it does not by itself mark a design accepted, a ticket ready, or implementation verified.
- **Information hierarchy:** game classifications remain in their authoritative primitive and the questionnaire body stays lightweight and recipient-focused.

### Public surfaces after dependency changes

The skill body should remain unchanged. Re-read and synchronize only descriptions made inaccurate by upstream adaptation:

- `docs/productivity/to-questionnaire.md`
- `skills/productivity/README.md`
- the top-level `README.md`
- `skills/productivity/to-questionnaire/agents/openai.yaml` only if its short description becomes inaccurate
- `ask-matt`, `grilling`, `domain-modeling`, `research`, `prototype`, `to-spec`, and `handoff`, which route into or consume questionnaire work
- disclosed runtime/project adapters for file location, delivery, access, retention, and destination capabilities

No production skill has been edited as part of this assessment.

---

## 23 — `teach`

**Accepted verdict: Medium — adaptation required**

**Decision:** accepted by the user during the one-skill review. Preserve durable source-grounded learning while adding explicit workspace isolation, baseline assessment, versioned guidance, engine-native practice, discipline-appropriate evidence, demonstrated transfer, and safe promotion into the production workflow.

**Patch class:** direct game-learning branch, teaching-workspace safety, engine-native practice and demonstrated-evidence rules, plus versioned source and runtime adapters

### Preserve

The skill's durable-learning model is strong: one concrete mission, high-trust sources rather than parametric recall, short lessons, retrieval practice, spacing, interleaving, a zone of proximal development, reusable references, and learning records based on demonstrated understanding rather than mere exposure. Its distinction between knowledge, practiced skill, and real-world judgment is useful for game development, where knowing an engine feature is not the same as being able to use it safely in production.

Preserve the dedicated, stateful teaching workspace and the requirement that each lesson produces one tangible win. HTML can remain the readable lesson and reference format. The adaptation should change the practice surface and evidence when the topic depends on an engine, editor, content pipeline, runtime, or target device; it should not turn every game-related lesson into a production task.

### Normal game situations

- Learn Unreal's object lifecycle, reflection, serialization, Blueprint/C++ boundary, or Gameplay Ability System through a small engine exercise.
- Learn materials, Niagara, animation, audio, PCG, landscape, World Partition, HLOD, or import pipelines through safe editor-native practice.
- Learn multiplayer authority and prediction through multiple instances and representative latency/loss rather than a vocabulary quiz.
- Learn profiling and optimization by capturing and interpreting evidence on a named map, build, settings profile, and target hardware.
- Learn a design or art principle by applying it to a constrained playable/visual exercise and explaining the player-facing consequence.
- Learn a source-faithful adaptation practice while separating source facts, approved departures, and intentional ambiguity.

### Current evidence

- `skills/productivity/teach/SKILL.md:8-20` turns the current directory into a long-lived workspace containing mission, resources, lessons, references, learning records, reusable assets, and notes, but does not require the path to be confirmed or separated from an active game repository.
- `skills/productivity/teach/SKILL.md:24-45` correctly distrusts parametric knowledge and names retrieval, spacing, and interleaving, but provides no actual review schedule or baseline assessment.
- `skills/productivity/teach/SKILL.md:47-61` requires every lesson to be a short, beautiful HTML file with a primary source and follow-up invitation, making HTML the universal lesson artifact even when the learned behavior exists only in an engine/editor/runtime.
- `skills/productivity/teach/SKILL.md:63-69` requires reusable browser components and a shared stylesheet before later lessons, regardless of whether browser interactivity is material to the skill being learned.
- `skills/productivity/teach/SKILL.md:81-89` infers the learner's zone from existing learning records; a new workspace has none and no explicit diagnostic step.
- `skills/productivity/teach/SKILL.md:91-110` grounds knowledge in citations and calls for interactive feedback, but its concrete mechanisms are browser quizzes and guided real-world steps, with automatic feedback treated as ideal.
- `skills/productivity/teach/SKILL.md:112-120` ultimately routes judgment to a community, which may provide valuable practice but is not automatically authoritative, version-matched, safe for confidential work, or necessary for a solo developer.
- `skills/productivity/teach/LEARNING-RECORD-FORMAT.md:21-40` makes evidence optional even though it correctly says coverage is not learning and records should follow genuine demonstrated understanding.
- `skills/productivity/teach/MISSION-FORMAT.md:8-22` provides a useful observable mission, constraints, and out-of-scope template but has no target engine/version/platform or safe-practice boundary.
- `skills/productivity/teach/RESOURCES-FORMAT.md:25-32` prioritizes primary sources, recognized experts, peer review, and moderated communities, but does not record version applicability, deprecation, platform scope, or whether a source is normative versus experiential.
- `docs/productivity/teach.md:22-38` recommends a dedicated repository outside the working project, while the executable skill says only “current directory”; the docs acknowledge that paths can resolve into the installed skill directory.
- `docs/productivity/teach.md:58-74` documents misplaced workspaces, fabricated procedural instruction, predictable quiz answers, missing entry assessment, undefined prerequisites, unscheduled spacing, and unreliable stopping behavior.

### Concrete game failure

Suppose the mission is “learn Unreal multiplayer abilities well enough to ship a responsive dodge.” The current skill can create an excellent-looking HTML lesson explaining authority, RPCs, and prediction, cite documentation, quiz the terms, and write a learning record after the learner answers correctly. None of that demonstrates a dodge under a dedicated server, multiple clients, packet lag/loss, correction, animation timing, or the project's actual engine/plugin version. The learner can appear to progress while retaining a false production model.

The practice step can also be unsafe. If “current directory” is the active game repository, a lesson may direct the learner to experiment in production maps, Blueprints, data assets, or plugin code without first establishing an isolated test project/map, source-control state, package ownership, recovery point, or minimal save list. A mistake in a text exercise is disposable; a save, reimport, redirector operation, or migration over shared opaque assets may not be.

For rendering, world building, animation, audio, and performance, browser interactivity cannot observe the material skill. A quiz can test terminology, but only the owning editor, representative content, runtime capture, and relevant hardware can show whether the learner can diagnose shader cost, streaming behavior, HLOD transitions, animation state, audio routing, or frame-time bottlenecks. Automatic feedback is not always available or trustworthy; expert review and direct evidence may be the correct loop.

This is **Medium** because the skill can teach false confidence or guide unsafe practice, but it is explicitly invoked, source-grounded, recommends a separate workspace, and does not itself change production assets. The user remains in the loop for every exercise, and the game-specific correction is a bounded practice-and-evidence branch rather than a replacement teaching system.

### Narrow adaptation

1. Preserve the general teaching path. Activate the game branch only when the topic materially depends on a game engine, editor, runtime, content pipeline, source material, multiplayer conditions, performance budget, or target hardware.
2. Resolve and confirm an explicit teaching-workspace path before creating files. Keep it outside the installed skill directory and outside the active game repository by default. If the user intentionally colocates it, name the generated paths and repository impact first.
3. Separate the teaching workspace from the practice sandbox. For engine-native work, use the smallest disposable project, plugin test host, test map/scene, isolated content folder, or copied asset set that can produce the behavior. Never assume production packages are safe practice material.
4. Extend the mission with the capability the learner wants to perform, why it matters to a player or production workflow, target engine/tool version, relevant platform/hardware, constraints, and explicit out-of-scope depth. Keep this concise and topic-specific.
5. Before the first lesson, run a lightweight baseline diagnostic: ask about prior experience and have the learner explain, predict, inspect, or perform one representative task. Record claimed experience separately from demonstrated ability and use the result to choose the first lesson.
6. Build a source ladder appropriate to the topic: authoritative source material and project decisions; official version-matched engine/platform documentation, release notes, engine source, and sample projects; recognized books/talks/experts; then community guidance. Label normative behavior, project convention, heuristic, personal workflow, deprecation, and unresolved disagreement.
7. Record version and platform applicability for procedural resources. Re-check current documentation and the actual project/engine state before teaching commands, APIs, editor steps, packaging, platform requirements, or performance expectations. Do not turn an older tutorial into a universal rule.
8. Keep the HTML lesson as explanation, navigation, retrieval, and reflection. When causal behavior depends on the engine/editor/runtime, the lesson must point to an engine-native exercise; a browser simulator may prepare the learner but cannot certify the skill.
9. Give each practical lesson one bounded production-relevant action and an observable result. Examples include implementing a deterministic rule, wiring and inspecting a Blueprint, authoring a material variant, profiling one scene, diagnosing a streaming cell, or validating one client/server interaction.
10. Establish practice safety before editor or source changes: source-control state, clean/dirty editor state, mutable artifact owner, locks/checkouts, backup or recovery point, intentional save list, source-asset lineage, and how to discard the exercise. Keep exact engine/source-control commands in project adapters.
11. Match feedback to the learned claim: automated tests for deterministic logic; compile/editor validation for types, serialization, and references; representative play for controls/camera/animation/level flow; visual or audio review for perceptual work; multi-instance conditions for networking; profiler/budget evidence for runtime cost; and cook/build/target-device checks when material.
12. Treat quizzes as retrieval practice only. Do not mark an operational or production skill learned from answer selection. Randomize options in the reusable quiz component, avoid format cues, and use explanation or performance tasks for higher-order understanding.
13. Require evidence in a learning record whenever it raises the assumed capability floor. Record what the learner demonstrated, under what conditions, remaining limitations, and the next transfer challenge. Self-reported prior knowledge may guide placement but is not production competence.
14. Add transfer and variation before mastery: repeat the concept with a changed asset, map, input, network condition, platform setting, or failure case; ask the learner to predict, perform, diagnose, and explain the tradeoff without following the original steps verbatim.
15. Protect engine-native and discipline-native terminology in the teaching glossary. Scope overloaded terms instead of banning valid meanings, and separate source/canon facts, engine behavior, project convention, design intent, and heuristic advice.
16. Keep communities optional and evaluate them as experiential sources, not authorities. Never share confidential project material, proprietary assets, credentials, or restricted platform information; respect a solo learner who does not want community participation and use appropriate expert/representative practice instead.
17. Make review and stopping explicit. Record a small next-review cue or exercise in the workspace, alternate acquisition with retrieval and real practice, and stop or change mode when mission success is demonstrated. Scheduling integrations belong in runtime adapters and must not be implied if none exists.
18. Keep teaching separate from production acceptance. If an exercise becomes useful project work, hand it into the normal game workflow with an owner, artifact scope, review, and acceptance evidence; a learning record is not a build, review, or milestone gate.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **General control:** a non-game topic retains the current mission, trusted-resource, HTML-lesson, retrieval, reference, and learning-record flow without engine ceremony.
- **Workspace safety:** the first invocation identifies the teaching directory, does not write into the installed skill or active game repository unintentionally, and creates a separate safe practice surface when needed.
- **Baseline:** a new Unreal learner receives a lesson based on demonstrated starting ability rather than an empty-record guess.
- **Engine-native skill:** a Blueprint/C++ or gameplay-system lesson includes a bounded engine exercise and observable runtime/editor evidence; the HTML lesson alone cannot mark it mastered.
- **Content skill:** a material, VFX, animation, audio, or world-building lesson uses isolated representative content and discipline-appropriate review without touching production packages by default.
- **Networking:** authority or prediction competence is demonstrated under stated multi-instance and network conditions, not through terminology recall alone.
- **Performance:** an optimization lesson pins map/build/settings/hardware and uses profiler evidence rather than generic claims or a quiz.
- **Version fidelity:** an API or editor procedure states its engine/platform applicability and is checked against current authoritative sources before practice.
- **Learning evidence:** records distinguish exposure, self-report, retrieval, guided performance, independent transfer, and production readiness.
- **Safe promotion:** useful sandbox work cannot enter the game project merely because the lesson succeeded; it re-enters through normal ownership and verification gates.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/productivity/teach/SKILL.md`
- `skills/productivity/teach/MISSION-FORMAT.md`
- `skills/productivity/teach/RESOURCES-FORMAT.md`
- `skills/productivity/teach/LEARNING-RECORD-FORMAT.md`
- `skills/productivity/teach/GLOSSARY-FORMAT.md`
- `skills/productivity/teach/agents/openai.yaml`
- `docs/productivity/teach.md`
- `skills/productivity/README.md`
- the top-level `README.md`
- `ask-matt`, `handoff`, `research`, `prototype`, and specialist review paths that route or support learning
- the shared game-development outcome, authority, artifact, environment, source, budget, and layered-evidence reference
- disclosed runtime/project adapters for workspace selection, current documentation, engine/editor practice, source control, report opening, scheduling, and specialist consultation

No production skill has been edited as part of this assessment.

---

## 24 — `wait-what`

**Accepted verdict: Pass — no direct skill-body adaptation required**

**Decision:** accepted by the user during the one-skill review. Keep the seven-line repair skill unchanged; it inherits scoped project language and must preserve the source message's decisions, owners, constraints, uncertainty, and evidence state while public docs become runtime-neutral.

**Patch class:** keep the intentionally tiny skill body unchanged; inherit scoped project language and semantic-preservation behavior, then synchronize public docs for runtime neutrality

### Preserve

`wait-what` has one job: when an explanation did not land, stop, restore the missing premise, and re-express the same meaning in clearer language. Its explicit invocation, short body, Simplified Technical English, and preference for the project's established vocabulary are useful in every game discipline. The user—not an automatic trigger—decides when comprehension failed.

The skill should remain tiny. It must not become a second glossary, a game-development checklist, a teaching curriculum, or a decision workflow. The accepted game classifications, engine vocabulary, ownership, and evidence model belong in their authoritative sources; this skill only needs to preserve them while explaining them more clearly.

### Normal game situations

- Re-pitch why a replicated ability behaves differently on client and server without removing the authority distinction.
- Explain a rendering or world-streaming recommendation in plain language while retaining the specialist's constraints and confidence.
- Restate a player-facing tradeoff without converting a Game Director decision into an engineer's implementation choice.
- Clarify source/canon facts, approved departures, and intentional ambiguity without flattening them into one requirement.
- Explain the status of a mixed source/content change without turning “implemented” into “verified in play.”

### Current evidence

- `skills/productivity/wait-what/SKILL.md:2-7` is an explicitly invoked seven-line skill whose entire behavior is to re-pitch the current explanation with more context, ASD-STE100 Simplified Technical English, and `CONTEXT.md` vocabulary.
- `skills/productivity/wait-what/agents/openai.yaml:1-5` exposes the same narrow action and prevents implicit invocation.
- `docs/productivity/wait-what.md:3-19` says the short body is deliberate, distinguishes clarity from blunt brevity, and allows the model to back up far enough to restore the missing premise.
- `docs/productivity/wait-what.md:21-25` binds the re-pitch to project language and already permits operation when no `CONTEXT.md` exists.
- `docs/productivity/wait-what.md:27-32` defines success as shorter and clearer, with missing context and project nouns restored, rather than merely fewer words.
- `docs/productivity/wait-what.md:34-36` positions the skill as a repair inside any conversation and assigns vocabulary creation to `grill-with-docs`/`domain-modeling`.
- `docs/productivity/wait-what.md:21-23` describes a global `CLAUDE.md` as part of the mechanism even though the executable skill does not depend on that vendor-specific file and the shared behavior should remain harness-neutral.

### Concrete-failure test

A re-pitch could be harmful if it turns “the Technical Artist recommends option A under this GPU budget, but the Game Director must choose the visibility tradeoff” into “use option A,” or if it turns “the feature compiles but still needs representative play and a cooked build” into “the feature is done.” It could also replace a precise engine term or package identity with friendly but ambiguous prose.

Those are semantic-loss failures, not evidence that this wrapper needs its own game branch. The decision type and owner come from the accepted `grilling` behavior; scoped engine and project nouns come from `domain-modeling` and `CONTEXT.md`; evidence and completion state come from the source message and the adapted workflow that produced it. A correct re-pitch must preserve those facts because it is re-expressing the same message, not generating a new decision.

If the original explanation is wrong, unsupported, or requires a lesson rather than a rephrasing, the remedy belongs to `research`, `diagnosing-bugs`, `teach`, or the owning specialist. Adding their full rules here would make the repair prompt longer, reduce its effectiveness, and create a competing policy source. Under the review contract, no direct game-specific body change is justified.

### Required dependency behavior

The Pass verdict is contingent on these owning behaviors:

1. Re-pitch the same claim and decision state. Do not introduce a new recommendation, silently choose an option, expand scope, or begin implementation.
2. Preserve the intended player/production outcome, fixed constraints, decision classification, deciding authority, implementation owner, material evidence status, uncertainty, and next action when they were load-bearing in the source explanation.
3. Use `CONTEXT.md` terms within their accepted scope. Preserve exact engine-native, discipline-native, source/canon, package/object, command, and identifier names when translation would change meaning; define them briefly instead of replacing them.
4. Keep qualifiers such as prototype-only, representative only, unverified, blocked, deferred, specialist recommendation, budget-dependent, or awaiting play/creative/platform review. Clarity must not upgrade confidence or completion.
5. Choose the smallest explanation that restores comprehension: premise, plain-language mechanism, consequence, and—only when present in the source—the decision or next step. Use an analogy only if it does not masquerade as the actual engine behavior.
6. If the source message contains an apparent contradiction or unsupported factual claim, identify that limit and route verification to the owning source, experiment, diagnostic, or specialist instead of confidently simplifying it.
7. If the user needs durable learning rather than one re-pitch, route to `teach`; if a decision remains open, route to `grilling`; if the term is genuinely missing or inconsistent, route to `domain-modeling`. This wrapper does not absorb those processes.
8. Keep runtime-specific global instruction filenames, model behavior, voice/output modes, and accessibility integrations in adapters or public runtime documentation. The shared skill remains model- and harness-neutral.

### Verification scenarios

The no-direct-change decision is acceptable only if all of these routes are observed after dependency adaptation:

- **Application control:** an application explanation is re-pitched more clearly with its premise and project vocabulary intact.
- **Technical authority:** a specialist recommendation remains a recommendation and does not become an unauthorized Game Director or implementation decision.
- **Creative authority:** a player-facing tradeoff remains with the user/Game Director even when its technical consequences are simplified.
- **Engine precision:** terms such as Actor Component, replication authority, material instance, data layer, or package name remain exact and are explained rather than renamed.
- **Source fidelity:** source fact, approved adaptation, and intentional ambiguity remain distinct after simplification.
- **Evidence honesty:** compiled, implemented, editor-validated, played, visually approved, profiled, cooked, and target-verified states do not collapse into “done.”
- **Uncertainty:** conditional, provisional, blocked, and unverified claims retain those qualifiers.
- **Routing:** a need for proof, debugging, teaching, or decision-making exits to the owning process rather than making this tiny repair skill grow.
- **Information hierarchy:** the executable body remains short and the detailed game semantics stay in their authoritative primitives.

### Public surfaces after dependency changes

The skill body should remain unchanged. Re-read and synchronize only descriptions made inaccurate by dependency or runtime-neutrality changes:

- `docs/productivity/wait-what.md`
- `skills/productivity/README.md`
- the top-level `README.md`
- `skills/productivity/wait-what/agents/openai.yaml` only if its short description becomes inaccurate
- `domain-modeling`, `grilling`, `teach`, `research`, `diagnosing-bugs`, and `writing-for-agents`, which establish or preserve the meaning being re-pitched
- disclosed runtime/project adapters for global instruction files, output modality, and accessibility needs

No production skill has been edited as part of this assessment.

---

## 25 — `writing-for-agents`

**Accepted verdict: High — adaptation required**

**Decision:** accepted by the user during the one-skill review. Preserve the concise universal writing levers while adding action-critical game safety, authority-aware and layered completion criteria, observable-environment rules, cross-model evaluation, and tested runtime adapters instead of vendor mechanics in the shared core.

**Patch class:** shared game-agent-document authoring branch, action-critical safety and evidence rules, cross-model evaluation, and strict separation of runtime skill mechanics

### Preserve

This is a strong foundational reference. Preserve context pointers, context load versus human cognitive load, information hierarchy, progressive disclosure, co-location, explicit completion criteria, sequence splitting, leading words, positive targets, single sources of truth, environment lookups, relevance pruning, and behavioral no-op testing. The insistence that better instructions produce a repeatable process rather than identical output is correct for game work.

Also preserve its preference for concise agent-facing documents and its warning against overfitting one successful run. Game adaptation should not turn every `AGENTS.md`, skill, ticket, or brief into the same large checklist. The narrow addition is to make the existing writing levers safe for engine/editor artifacts, layered evidence, decision authority, and multiple runtimes.

### Normal game situations

- Write an `AGENTS.md` for an Unreal project whose source, Blueprints, maps, data assets, plugins, source assets, and build targets have different inspection and mutation rules.
- Author a specialist skill that may edit a shared level, material graph, Niagara system, landscape, animation graph, or other opaque package.
- Write a gameplay ticket whose deterministic logic is testable but whose completion also needs editor wiring, representative play, networking, or target-platform evidence.
- Point agents to source/canon, creative direction, engine documentation, project decisions, profiler budgets, and artifact ownership without duplicating them.
- Keep a shared skill model-neutral while placing Hermes sessions/Kanban, Unreal automation, Perforce/Git/LFS, and platform-lab mechanics in explicit adapters.

### Current evidence

- `skills/productivity/writing-for-agents/SKILL.md:6-14` claims one universal writing model for every agent-consumed document and makes pointer wording responsible for both target identity and every invocation branch.
- `skills/productivity/writing-for-agents/SKILL.md:20-43` optimizes context/cognitive load through a three-level information hierarchy, progressive disclosure, co-location, and splitting by branch or sequence.
- `skills/productivity/writing-for-agents/SKILL.md:45-52` requires clear and demanding completion criteria and recommends a real context boundary, including sub-agent dispatch, when later steps cause premature completion.
- `skills/productivity/writing-for-agents/SKILL.md:61-74` relies on pretrained leading words and warns that prohibitions activate the forbidden behavior, while allowing a prohibition only as a hard guardrail paired with a positive target.
- `skills/productivity/writing-for-agents/SKILL.md:76-81` treats the environment as source of truth, prunes cached lookups, and explicitly makes the no-op test model-relative.
- `skills/productivity/writing-for-agents/SKILL-MECHANICS.md:5-14` presents one runtime's `disable-model-invocation` and description semantics as the mechanics of model/user invocation and claims that a user-invoked skill cannot be reached by another skill.
- `skills/productivity/writing-for-agents/SKILL-MECHANICS.md:16-22` derives splitting and router behavior from those same invocation assumptions.
- `docs/productivity/writing-for-agents.md:3-13` extends the reference to skills, `AGENTS.md`, `CLAUDE.md`, specs, tickets, prompts, and READMEs across agent runtimes.
- `docs/productivity/writing-for-agents.md:40-53` recommends manual behavioral evaluation, calls no-op judgment model-relative, and warns against per-model rewrites, but gives no multi-model/harness compatibility protocol.
- `docs/productivity/writing-for-agents.md:55-56` correctly says one successful task is evidence rather than the general class, which supports representative game scenarios rather than copying one Unreal workflow into every skill.

### Concrete game failure

Suppose this reference is used to shorten an Unreal content-editing skill. The author sees repeated instructions about checking dirty editor state, identifying the one mutable package owner, creating a recovery point, avoiding broad saves, and validating the exact save list. “Single source of truth” and progressive disclosure can move those rules behind one pointer; the no-op pass can then remove local reminders because one tested model appeared to behave safely by default.

On a later branch, another model or harness never loads the pointer. It opens a shared map, edits a Blueprint dependency, and saves every dirty package. Git text status cannot reveal the editor's unsaved state or the semantic contents of opaque packages, so the instruction that “the environment is the source of truth” does not recover the missing safety contract. The concise document is structurally elegant and operationally unsafe.

Completion criteria can fail similarly. Sharpening “review the combat change” into “tests pass and the build succeeds” makes done more checkable but observes only deterministic source and build integration. It says nothing about player-facing timing, animation, camera, content wiring, network authority, frame budget, cooked assets, or creative approval. A checkable criterion can still measure the wrong claim.

Finally, `SKILL-MECHANICS.md` can cause a safety or routing skill to be packaged incorrectly in Hermes, Codex, or another harness because it treats one frontmatter field and discovery model as universal. A critical reference that exists on disk but is disabled, undiscoverable, or unreachable through the assumed path is functionally absent. Runtime mechanics belong in adapters, not in a shared writing law.

This is **High** because `writing-for-agents` sits beneath the whole collection: unsafe pruning, false completion criteria, or incorrect invocation mechanics can propagate into every game-adapted skill and project instruction. It remains below Critical because it is a reference used during document authoring, not an autonomous game-asset mutation flow; review and representative evaluation can catch the failures before deployment.

### Narrow adaptation

1. Preserve the universal writing levers in the main reference. Add a compact game-agent-document branch reached only when a document may influence player-facing decisions, engine/editor work, production artifacts, source/canon interpretation, runtime budgets, or specialist coordination.
2. Before writing, state the document's reader, invocation/entry condition, player or production outcome, authority, mutable scope, and failure it must prevent. Use that to decide which game concerns are material; do not paste a universal checklist.
3. Classify the document's role and authority: source/canon reference, creative direction, game design intent, technical decision, production constraint, procedure, task/brief, evidence record, or runtime adapter. Do not let an implementation instruction silently overrule an authoritative source or creative decision.
4. Where the document drives mutation, identify the material artifact classes and ownership model. Put non-mergeable package/scene/map/graph/source-asset safety, locks/checkouts, recovery, and minimal-save behavior in the action branch that needs it; do not hide an always-required guardrail behind a pointer that may not load.
5. Treat pointers as contracts. Besides trigger wording, verify target existence, authority, version/scope, recipient access, and the supported method for loading or inspecting it. A pointer to an opaque asset, editor state, temp file, restricted platform document, or disabled skill needs an adapter or explicit access path.
6. Refine “the environment is a source of truth” into an observability rule. Leave cheap reliable facts to live lookup, but document or point to stable constraints the agent cannot reliably recover from text: editor dirty state, asset locks, package ownership, source-asset lineage, accepted creative/source decisions, representative test conditions, platform access, and evidence budgets.
7. Use one authoritative source per kind of truth rather than pretending a game has one global truth. Name conflict precedence among source/canon, approved adaptation, game design, technical ADR, tracker state, source control, editor artifact, build output, and measured runtime evidence.
8. Keep progressive disclosure, but inline every invariant required before an irreversible or non-mergeable action. Repeating a compact hard safety gate at a real context boundary is not accidental duplication when the authoritative rule may otherwise be absent from that execution context; keep the detailed explanation in one source.
9. Preserve the positive-target rule while recognizing hard negative guardrails for destructive actions: do not save unrelated dirty packages, overwrite another owner, force checkout, reimport/migrate broadly, discard unsaved work, rewrite history, expose secrets, or claim opaque content reviewed from a text diff. Pair each prohibition with the safe target behavior.
10. Make completion criteria claim-specific and layered. “Checkable” may mean an automated result, editor validation, representative play observation, visual/audio approval, network scenario, profiler/budget capture, cook/build, target-device check, or named authority review. Never sharpen a subjective or empirical outcome into a convenient proxy merely because the proxy is binary.
11. Separate implementation complete, integrated, representative-tested, creatively approved, performance-verified, cooked/packaged, and target-verified states when the distinction matters. A document should say which state it can authorize and who owns the remaining gates.
12. Scope leading words and domain vocabulary. Prefer established project and engine terms, define overloaded meanings, and test whether a pretrained word imports the wrong application, engine, platform, or genre assumptions. Do not rename native identifiers merely to make prose uniform.
13. Evaluate no-ops against the supported model/harness set and representative branches, not one model's apparent default. Safety, authority, confidentiality, and destructive-operation constraints are not removed solely because one run followed them without prompting. Record the behavioral evidence behind high-impact pruning.
14. Separate shared concepts from runtime mechanics. Keep the main skill model-, provider-, engine-, source-control-, and harness-neutral; place actual frontmatter keys, discoverability rules, skill-loading commands, persistent-session behavior, Kanban assignment, tool permissions, engine automation, and platform access in named adapters whose availability is tested.
15. Express context-boundary strategies generically. A hidden sub-agent is one possible runtime mechanism, not the universal answer. In Hermes, project work that needs durable ownership should use visible persistent specialist sessions and Kanban; other runtimes choose their supported equivalent.
16. Add a game-document evaluation matrix rather than more prose: preserve an application control, then test only representative branches such as deterministic source work, opaque editor content, experiential/creative review, multiplayer, performance, source fidelity, and cross-specialist ownership. Evaluate invocation, process, safety, evidence, and stopping behavior.
17. Validate every adapted pointer and public surface after edits. Ensure descriptions still trigger the right branches, shared references are reachable, runtime adapters match actual mechanics, and docs/metadata do not promise behavior the executable skill lacks.
18. Treat changes to agent instructions as production-affecting changes. Review the diff, run representative scenarios, preserve an easy rollback, and avoid editing game assets during the instruction evaluation itself.

### Verification scenarios

The adaptation is acceptable only if all of these routes are observed:

- **Application control:** an application skill or `AGENTS.md` still benefits from concise pointers, hierarchy, criteria, leading words, and pruning without game ceremony.
- **Opaque mutation safety:** a level/Blueprint/material/VFX branch loads its owner, lock, dirty-state, recovery, and minimal-save gate before mutation; progressive disclosure cannot hide it.
- **Environment visibility:** text-visible scripts/config remain live lookups, while editor-only state and authoritative project constraints are not falsely assumed discoverable.
- **Layered completion:** a gameplay change distinguishes passing logic tests from engine wiring, representative play, network behavior, cook/build, and target evidence as material.
- **Creative evidence:** a visual, audio, feel, or source-faithfulness criterion names representative conditions and the deciding/review authority instead of inventing an automated proxy.
- **Hard guardrail:** the positive target remains prominent while an irreversible source-control/editor prohibition survives pruning.
- **Native language:** Unreal and discipline-native terms retain their precise meanings while leading words remain scoped and useful.
- **Cross-model behavior:** a safety instruction that looks like a no-op under one model is retained or moved only after supported runtimes pass representative tests.
- **Runtime packaging:** the same shared skill can be discovered and loaded correctly through separate Hermes, Codex/OpenAI, or other declared adapters without vendor mechanics leaking into the core.
- **Specialist ownership:** Game Director priorities, Systems Engineer mechanisms, Technical Artist surfaces, and World Builder assets remain distinct; one writer owns each mutable instruction/artifact during evaluation.
- **Rollback:** an instruction change can be reviewed and reverted without using production game assets as the experiment surface.

### Public surfaces if accepted

Any behavioral patch must be synchronized with:

- `skills/productivity/writing-for-agents/SKILL.md`
- `skills/productivity/writing-for-agents/SKILL-MECHANICS.md`
- `skills/productivity/writing-for-agents/agents/openai.yaml`
- `docs/productivity/writing-for-agents.md`
- `skills/productivity/README.md`
- the top-level `README.md`
- every skill or project instruction directly changed during remediation, without copying the full shared game policy into each consumer
- the shared game-development outcome, authority, ownership, artifact, source, environment, budget, evidence, and safety reference
- disclosed and tested runtime/project adapters for skill packaging, invocation, specialist sessions, Kanban, engine/editor tools, source control, and platform access

No production skill has been edited as part of this assessment.

---

## Final closeout

All 25 promoted manifest skills have one user-accepted compatibility verdict. There are no provisional entries.

### Verdict totals

- **Critical — adaptation required (3):** `prototype`, `resolving-merge-conflicts`, `wizard`
- **High — adaptation required (14):** `ask-matt`, `implement`, `code-review`, `diagnosing-bugs`, `setup-matt-pocock-skills`, `grilling`, `domain-modeling`, `wayfinder`, `to-spec`, `to-tickets`, `triage`, `improve-codebase-architecture`, `codebase-design`, `writing-for-agents`
- **Medium — adaptation required (4):** `tdd`, `research`, `handoff`, `teach`
- **Pass — no direct skill-body adaptation required (4):** `grill-with-docs`, `grill-me`, `to-questionnaire`, `wait-what`

Twenty-one skills therefore need a direct adaptation. The four Pass findings retain dependency or documentation conditions without adding duplicate game policy to thin wrappers or bounded utilities.

### Workflow dispositions

- **Skip for the current solo-developer workflow:** `to-questionnaire`. Its compatibility Pass remains valid, but no remediation or game-profile enablement is recommended unless another human holds information or decisions that need a questionnaire.
- No other skill was skipped or deferred during the review.

### Dependency-ordered remediation batches

Severity identifies risk; it does not determine the whole edit order. Remediation should proceed in these batches, with one owner for each mutable skill or shared file and all consumers synchronized before a batch closes.

1. **Contain direct hazards**
   - Patch the bypass-safe self-gates in `resolving-merge-conflicts`, `wizard`, and `prototype` first.
   - Preserve recovery before conflict resolution, protect credentials and irreversible setup actions, and stop application-only prototypes from answering engine-fidelity questions.
   - Close when each direct invocation fails safe without depending on a router or an unpublished shared reference.

2. **Establish the shared policy and routing foundation**
   - Create one engine-neutral game-development reference for player outcome, authority, artifact classes, ownership, editor/binary safety, budgets, and layered evidence.
   - Adapt `writing-for-agents`, then separate shared writing principles from tested Hermes, Codex/OpenAI, engine, source-control, and platform adapters.
   - Adapt `ask-matt` and `setup-matt-pocock-skills` so projects discover and route through the game branch before downstream workflows rely on it.
   - Close when every shared pointer resolves, runtime mechanics stay outside the generic core, and the application control path remains intact.

3. **Adapt decision, discovery, and planning primitives**
   - Patch `domain-modeling`, `grilling`, and `research` before their consumers.
   - Then patch `to-spec`, `to-tickets`, `triage`, and `wayfinder` so unresolved work is classified, owner-bounded, artifact-aware, and backed by the right evidence plan.
   - Close when creative authority, specialist decisions, experiments, measurements, source/canon questions, and implementation work route to distinct owners and completion signals.

4. **Adapt execution and evidence flows**
   - Patch `implement`, `tdd`, `diagnosing-bugs`, `code-review`, and `handoff` against the shared reference and adapted planning outputs.
   - Cover source plus editor-authored/imported/generated artifacts, representative play, networking, profiling, cook/package, target-platform checks, and exact continuation state where material.
   - Close when deterministic application work remains efficient and mixed game work no longer treats tests, Git visibility, or compilation as universal proof of completion.

5. **Adapt architecture in primitive-first order**
   - Patch `codebase-design` before `improve-codebase-architecture`.
   - Preserve software design reasoning while adding engine/editor artifacts, runtime and platform budgets, migration safety, ownership, and layered evidence to the primitive and its survey consumer.
   - Close when architecture analysis covers code, content, pipelines, builds, runtime behavior, and production constraints without erasing native engine vocabulary.

6. **Finish bounded learning and pass-through synchronization**
   - Patch `teach` with isolated practice workspaces, engine-native exercises, versioned sources, and demonstrated transfer.
   - Synchronize public descriptions for `grill-with-docs` and `grill-me` after `grilling`; keep both bodies thin.
   - Keep `wait-what` unchanged while making its public documentation runtime-neutral and preserving source-message semantics.
   - Leave `to-questionnaire` unchanged and disabled/skipped for the current solo workflow unless its collaboration trigger becomes real.
   - Close with full manifest, docs, metadata, link, application-control, game-scenario, and cross-runtime verification.

### Assessment boundary

This file is the assessment and remediation brief, not the remediation itself. No production skill, support file, public documentation page, metadata file, README, or manifest was changed during the review.
