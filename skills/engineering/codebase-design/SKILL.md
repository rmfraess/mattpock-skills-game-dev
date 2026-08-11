---
name: codebase-design
description: Shared vocabulary for designing deep modules. Use when the user wants to design or improve a module's interface, find deepening opportunities, decide where a seam goes, make code more testable or AI-navigable, or when another skill needs the deep-module vocabulary.
---

# Codebase Design

Design **deep modules**: substantial behavior behind intentionally small interfaces at stable seams. The aim is leverage, locality, testability, authorability, and production fit. This is a vocabulary reference only: invoking it alone must stop after supplying vocabulary. A named driver is required before exploration, worker dispatch, document mutation, or implementation.

## Glossary

Use these analytical terms consistently, but never erase precise domain/framework vocabulary. An Unreal Actor Component, engine Module, Blueprint, scene, package, subsystem, or service keeps its native name; describe that artifact's **module/interface/seam** role when analyzing its design.

**Module** — anything with an interface and an implementation. Deliberately scale-agnostic: a function, class, package, or tier-spanning slice. _Avoid_: unit, component, service.

**Interface** — everything a caller must know to use the module correctly: the type signature, but also invariants, ordering constraints, error modes, required configuration, and performance characteristics. _Avoid_: API, signature (too narrow — they refer only to the type-level surface).

**Implementation** — what fulfills the module's promises: code, serialized/editor state, data/content, tooling, and runtime integration as applicable. Distinct from **Adapter**, which names a role at a seam.

**Depth** — leverage at the interface: the amount of behaviour a caller (or test) can exercise per unit of interface they have to learn. A module is **deep** when a large amount of behaviour sits behind a small interface, **shallow** when the interface is nearly as complex as the implementation.

**Seam** _(Michael Feathers)_ — a place where you can alter behaviour without editing in that place; the *location* at which a module's interface lives. Where to put the seam is its own design decision, distinct from what goes behind it. _Avoid_: boundary (overloaded with DDD's bounded context).

**Adapter** — a concrete thing that satisfies an interface at a seam. Describes *role* (what slot it fills), not substance (what's inside).

**Leverage** — what callers get from depth: more capability per unit of interface they learn. One implementation pays back across N call sites and M tests.

**Locality** — what maintainers get from depth: change, bugs, knowledge, and verification concentrate in one place rather than spreading across callers. Fix once, fixed everywhere.

## Deep vs shallow

**Deep module** = small interface + lots of implementation:

```
┌─────────────────────┐
│   Small Interface   │  ← Few methods, simple params
├─────────────────────┤
│                     │
│  Deep Implementation│  ← Complex logic hidden
│                     │
└─────────────────────┘
```

**Shallow module** = large interface + little implementation (avoid):

```
┌─────────────────────────────────┐
│       Large Interface           │  ← Many methods, complex params
├─────────────────────────────────┤
│  Thin Implementation            │  ← Just passes through
└─────────────────────────────────┘
```

When designing an interface, ask:

- Can I reduce the number of methods?
- Can I simplify the parameters?
- Can I hide more complexity inside?

## Principles

- **Depth is a property of the interface, not the implementation.** A deep module can be internally composed of small, mockable, swappable parts — they just aren't part of the interface. A module can have **internal seams** (private to its implementation, used by its own tests) as well as the **external seam** at its interface.
- **The deletion test.** Imagine deleting the module. If complexity vanishes, it was a pass-through. If complexity reappears across N callers, it was earning its keep.
- **Respect required shells.** Reflection, serialization, lifecycle, ownership, editor authoring, networking, generated code, and platform callbacks can justify a thin native shell. Do not delete it until the contract is understood.
- **Interfaces follow audiences.** Runtime callers, editor authoring, save/load, networking, tools, and content pipelines may need intentionally distinct surfaces. One module does not imply one universal public interface.
- **An interface is a test surface, not all evidence.** Deterministic contracts test through stable interfaces; minimal engine, editor/content, play, network, profile, cook/build, and target checks cover other failure classes.
- **A seam needs a real reason to vary.** Multiple adapters are strong evidence, but one production adapter can still justify a seam when lifecycle, ownership, failure isolation, portability, platform callback inversion, or a faithful test substitute requires it.

## Designing for testability

Good interfaces make testing natural:

1. **Accept dependencies, don't create them.**

   ```typescript
   // Testable
   function processOrder(order, paymentGateway) {}

   // Hard to test
   function processOrder(order) {
     const gateway = new StripeGateway();
   }
   ```

2. **Make outcomes observable; do not force engine-owned state into artificial purity.**

   ```typescript
   // Testable
   function calculateDiscount(cart): Discount {}

   // Hard to test when no stable observation exists
   function applyDiscount(cart): void {
     cart.total -= discount;
   }
   ```

   Event-driven gameplay, world state, lifecycle callbacks, and editor transactions can legitimately mutate engine-owned state. Test deterministic rules at stable seams and verify integration in the engine rather than contorting them into return-value functions.

3. **Small intentional surface area.** Fewer methods and parameters help only when they preserve lifecycle, authoring, networking, performance, and content contracts.

## Relationships

- A **Module** has one or more intentional **Interfaces** for distinct audiences; avoid accidental duplicate surfaces.
- **Depth** is a property of a **Module**, measured against its **Interface**.
- A **Seam** is where a **Module**'s **Interface** lives.
- An **Adapter** sits at a **Seam** and satisfies the **Interface**.
- **Depth** produces **Leverage** for callers and **Locality** for maintainers.

## Rejected framings

- **Depth as ratio of implementation-lines to interface-lines** (Ousterhout): rewards padding the implementation. We use depth-as-leverage instead.
- **"Interface" as the TypeScript `interface` keyword or a class's public methods**: too narrow — interface here includes every fact a caller must know.
- **"Boundary"** as an unqualified substitute for seam: overloaded with DDD and engine concepts. Keep native terms when they are the accurate name.

## Going deeper

- **Deepening a cluster given its dependencies** — see [DEEPENING.md](DEEPENING.md): dependency categories, seam discipline, and replace-don't-layer testing.
- **Exploring alternative interfaces** — see [DESIGN-IT-TWICE.md](DESIGN-IT-TWICE.md): use independent runtime-supported design contexts, then compare depth, locality, production trade-offs, and seam placement. Design work does not edit shared artifacts.
