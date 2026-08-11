---
name: prototype
description: Build a throwaway prototype to answer a design question. Use when the user wants to test logic, UI, gameplay, engine behavior, content workflow, performance, networking, or platform behavior before committing to production work.
---

# Prototype

A prototype is **throwaway code that answers a question**. The question decides the shape.

## Pick a branch

Identify which question is being answered — from the user's prompt, the surrounding code, or by asking if the user is around:

- **"Does this depend on a game engine, editor, player experience, real-time budget, network topology, content pipeline, cook, or target device?"** → [GAME.md](GAME.md). Build the smallest engine-native or target-native experiment that preserves the disputed behavior.
- **"Does this logic / state model feel right?"** → [LOGIC.md](LOGIC.md). Build a single shareable HTML file — free-play buttons plus tabbed guided walkthroughs — that pushes the state machine through cases that are hard to reason about on paper, and that a non-developer can drive.
- **"What should this look like?"** → [UI.md](UI.md). Generate several radically different UI variations on a single route, switchable via a URL search param and a floating bottom bar.

The branches produce very different artifacts — getting this wrong wastes the whole prototype. Never substitute HTML or an application UI mock for a question whose answer depends on engine/runtime fidelity. If the question is genuinely ambiguous and the user isn't reachable, choose the cheapest branch that still preserves the behavior in question and state the assumption at the top of the prototype.

## Rules that apply to both

1. **Throwaway from day one, and clearly marked as such.** Isolate it in the project's approved disposable workspace: a named prototype route/directory, scratch database, test map, sandbox level, temporary data layer, disposable project, or throwaway source-control branch. Keep production artifacts read-only unless the question explicitly requires a controlled mutation.
2. **Trivial to run.** Name the one command, file, map, editor procedure, network topology, or packaged build that starts the experiment, plus any representative configuration it requires.
3. **No production persistence by default.** State lives in memory or an unmistakable scratch destination. If persistence, import, migration, or serialization is the question, use disposable data and establish recovery before the first mutation.
4. **Skip production polish, keep question-critical evidence.** No abstractions or hardening beyond what makes the prototype credible. Tests, instrumentation, traces, representative content, or error capture stay only when they are needed to answer the question.
5. **Surface the state and conditions.** Render or capture the relevant state after each action and record the assumptions, versions, content scale, platform, and run conditions that bound the answer.
6. **Capture it when done.** Record the question, verdict, evidence, and limitations. Preserve the prototype according to the project's source-control/archive policy with a context pointer from the implementation issue or decision record; do not assume every project uses a Git branch.
7. **Promote the decision, not the prototype.** Any code, Blueprint, asset, configuration, or content worth keeping must re-enter the normal implementation workflow with production tests, ownership, review, migration, validation, and budget checks.
