# Design It Twice

When a named driver asks to explore alternative interfaces for a chosen candidate, use independent design contexts. Based on "Design It Twice" (Ousterhout)—the first idea is unlikely to be best. This reference does not launch work by itself.

Uses the vocabulary in [SKILL.md](SKILL.md) — **module**, **interface**, **seam**, **adapter**, **leverage**.

## Process

### 1. Frame the problem space

Before dispatching independent design contexts, write a user-facing explanation of the problem space for the chosen candidate:

- The constraints any new interface would need to satisfy
- The dependencies it would rely on, and which category they fall into (see [DEEPENING.md](DEEPENING.md))
- A rough illustrative code sketch to ground the constraints — not a proposal, just a way to make the constraints concrete

Show this to the user, then immediately proceed to Step 2. The user reads and thinks while the independent contexts run in parallel where the configured runtime supports it.

### 2. Dispatch independent designs

Use 3+ independent contexts through the runtime's supported visible session, durable queue, worker, or sequential-context adapter. Each produces a radically different design. Do not assume a vendor tool, permit recursive delegation, or edit production/shared artifacts.

Give each owner the same authority/constraint/artifact/evidence context plus a different design constraint. For game systems include lifecycle, reflection/serialization, editor/content authoring, networking, budgets, package/target, and mutable-artifact ownership where material:

- Agent 1: "Minimize the interface — aim for 1–3 entry points max. Maximise leverage per entry point."
- Agent 2: "Maximise flexibility — support many use cases and extension."
- Agent 3: "Optimise for the most common caller — make the default case trivial."
- Agent 4 (if applicable): "Design around ports & adapters for cross-seam dependencies."

Include both [SKILL.md](SKILL.md) vocabulary and CONTEXT.md vocabulary in the brief so each design owner names things consistently with the architecture language and the project's domain language.

Each design owner outputs:

1. Interface (types, methods, params — plus invariants, ordering, error modes)
2. Usage example showing how callers use it
3. What the implementation hides behind the seam
4. Dependency strategy and adapters (see [DEEPENING.md](DEEPENING.md))
5. Trade-offs — where leverage is high, where it's thin

### 3. Present and compare

Present designs sequentially so the user can absorb each one, then compare them in prose. Contrast by **depth** (leverage at the interface), **locality** (where change concentrates), and **seam placement**.

After comparing depth, locality, native-contract fit, authorability, evidence cost, performance, and ownership risk, give a recommendation or "no change." Route rendering, world/content, gameplay systems, source/canon, and creative trade-offs to their named authorities rather than resolving them inside generic interface design.
