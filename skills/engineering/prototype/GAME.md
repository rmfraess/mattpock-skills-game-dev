# Game Prototype

Use this branch when the question depends on game-engine behavior, editor-authored content, player experience, real-time constraints, networking, cooking, or target hardware. An HTML or application mock can explain an idea; it cannot answer a question whose truth lives in the game runtime.

## Choose the experiment

| Question | Smallest credible prototype |
| --- | --- |
| Controls, camera, combat cadence, readability, or feel | A playable slice with representative input, camera, animation, and timing |
| Engine lifecycle, physics, AI, streaming, or systems integration | A minimal engine-native test map/project using the relevant lifecycle |
| Asset import, animation, material, VFX, audio, or content workflow | A disposable source asset plus the real import/editor pipeline |
| Frame time, memory, loading, shader cost, or content scale | A representative benchmark scene and profiler capture on the named configuration |
| Replication, prediction, persistence, or online flow | The smallest server/client topology that preserves the disputed behavior |
| Cook, package, certification, device, or platform behavior | A minimal packaged build on the affected target |

If a cheaper artifact removes the behavior being tested, it is not a prototype of that question.

## Process

### 1. State the question and fidelity boundary

Write one falsifiable question, the observation that would answer it, and the engine version, platform, content scale, network conditions, or player context that must remain representative. Separate fixed project constraints from assumptions the prototype is allowed to simplify.

### 2. Isolate it

Use a disposable project, test map, sandbox level, temporary data layer, or explicitly named prototype asset set. Establish one mutable owner, inspect locks/checkouts and dirty editor state, create a recovery point, and name every production artifact the experiment may read. Do not save unrelated dirty packages or mutate shared production content to make the prototype convenient.

### 3. Build only the question

Use the real subsystem where its behavior is in question. Stub services, content, or polish outside that boundary. Keep instrumentation, debug views, trace markers, network simulation, and representative data that make the answer observable; those are evidence, not production hardening.

### 4. Run under representative conditions

Capture only the evidence the claim needs: hands-on play notes, video or screenshots, editor/runtime logs, traces, profiles, network matrices, cook/package results, or target-device observations. Record the exact scenario and configuration so another person can distinguish a result from an anecdote.

### 5. Capture the answer and limits

Record:

- the question and verdict;
- the evidence and where it lives;
- the engine/build/platform/content conditions;
- what was mocked or omitted;
- whether the result is exploratory, representative, or target-verified;
- the next production decision and its owner.

### 6. Retire or re-enter production work

Keep the prototype outside the production path according to the project's source-control and archive policy. Promote the **decision**, not the artifact. Any code, Blueprint, asset, configuration, or content worth keeping re-enters the normal implementation workflow with production ownership, review, migration, validation, and budget checks.

## Hard stops

- Do not use the HTML logic or UI branches to claim engine, runtime, feel, rendering, networking, content-pipeline, cook, or platform behavior.
- Do not profile a toy scene and present it as a production budget result.
- Do not test destructive import, migration, upgrade, or conversion behavior without a disposable copy and verified recovery path.
- Do not let prototype packages, debug switches, credentials, or platform configuration leak into a shipping build.
