---
name: tdd
description: Test-driven development. Use when the user wants to build features or fix bugs test-first, mentions "red-green-refactor", or wants integration tests.
---

# Test-Driven Development

TDD is the red → green loop. This skill is the reference that makes that loop produce tests worth keeping: what a good test is, where tests go, the anti-patterns, and the rules of the loop. Apply its rules on every cycle after the behavior passes the applicability gate below.

When exploring the codebase, read `CONTEXT.md` (if it exists) so test names and interface vocabulary match the project's domain language, and respect ADRs in the area you're touching.

## Applicability gate

Before agreeing seams, name the behavior and its independent source of truth. A retained automated test must be able to falsify the claim without copying the proposed implementation into its expected value.

For game work, apply `/game-development` and split the evidence layers:

- deterministic rule, transformation, invariant, protocol, or seeded simulation → TDD at a fast stable seam;
- engine lifecycle, serialization, visual scripting, physics, or world integration → focused engine-native functional/integration evidence at deliberate checkpoints;
- end-to-end, multiplayer, packaging, or target behavior → slower scenario evidence after the tight loop;
- feel, visuals, animation, audio, spatial composition, readability, or creative intent → named play or discipline review outside TDD;
- real-time or memory budget → representative profile/trace outside TDD.

Never manufacture an assertion to make experiential work test-first. “Green” proves the tested contract, not the whole game ticket. If no independent oracle or stable seam exists, use `/prototype` or the artifact-appropriate `/implement` loop instead.

## What a good test is

Tests verify behavior through public interfaces, not implementation details. Code can change entirely; tests shouldn't. A good test reads like a specification — "user can checkout with valid cart" tells you exactly what capability exists — and survives refactors because it doesn't care about internal structure.

See [tests.md](tests.md) for examples and [mocking.md](mocking.md) for mocking guidelines.

## Seams — where tests go

A **seam** is the public boundary you test at: the interface where you observe behavior without reaching inside. Tests live at seams, never against internals.

**Test only at pre-agreed seams.** Before writing any test, write down the seams under test, what each catches and misses, and confirm them with the user or authoritative spec. No test is written at an unconfirmed seam. You can't test everything — agreeing the seams up front is how testing effort lands on critical paths instead of every edge case.

Respect canonical engine lifecycle, serialization, reflection, entity/component, scene/package, and platform boundaries. A generic module seam must not claim integration coverage for behavior it bypasses.

Ask: "What's the public interface, and which seams should we test?"

When the shape of that interface is itself in question — how deep the module is, where the seam belongs, what the interface should expose — use the `/codebase-design` skill for the vocabulary. It is the shared source of the module, interface, depth, seam, adapter, leverage and locality terms, and it is a reference to consult, not a session to run.

## Anti-patterns

- **Implementation-coupled** — mocks internal collaborators, tests private methods, or verifies through a side channel (querying the database instead of using the interface). The tell: the test breaks when you refactor but behavior hasn't changed.
- **Tautological** — the assertion recomputes the expected value the way the code does (`expect(add(a, b)).toBe(a + b)`, a snapshot derived by hand the same way, a constant asserted equal to itself), so it passes by construction and can never disagree with the code. Expected values must come from an independent source of truth — a known-good literal, a worked example, the spec.
- **Horizontal slicing** — writing all tests first, then all implementation. Bulk tests verify _imagined_ behavior: you test the _shape_ of things rather than user-facing behavior, the tests go insensitive to real changes, and you commit to test structure before understanding the implementation. Work in **vertical slices** instead — one test → one implementation → repeat, each test a **tracer bullet** that responds to what the last cycle taught you.

## Rules of the loop

- **Red before green.** Write the failing test first, then only enough code to pass it. Don't anticipate future tests or add speculative features.
- **One slice at a time.** One seam, one test, one minimal implementation per cycle.
- **Refactoring is not part of the loop.** It belongs to the review stage (see the `code-review` skill), not the red → green implementation cycle.
- **Carry uncovered risk forward.** Record the higher editor, play, profile, network, package, target, or human evidence that remains after the deterministic loop goes green.
