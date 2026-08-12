---
name: grilling
description: Grill the user relentlessly about a plan, decision, or idea. Use when the user wants to stress-test their thinking, or uses any 'grill' trigger phrases.
---

Interview the user relentlessly until you reach a shared understanding. Map this as a **design tree**: every decision branches into the decisions that hang off it.

For game work, load `/game-development` before building the tree. Start from the intended player experience, strongest creative promise, current playable milestone, and approved source/project authority—not from engine settings or feature inventory.

Classify every open node before putting it on the frontier:

- **Decision** — the named authority can settle it in conversation. This is the only node type asked as a decision question.
- **Fact** — inspect the environment or an authoritative source; never ask the user to do lookup the agent can perform.
- **Experiment** — observed play, editor, profile, network, package, target, visual, audio, or other empirical evidence is required. Record the hypothesis, representative conditions, acceptance signal, owner, and return path.
- **Specialist question** — a technical mechanism belongs to a durable owner. Ask for options and consequences without taking the decision away from them.
- **Protected ambiguity** — intentional mystery or unresolved canon/source material that must remain unresolved. Preserve it as a constraint; do not force it back onto the frontier.
- **Deferred or out of scope** — beyond the current milestone's decision horizon. Record the boundary rather than designing the whole future product.

Keep canon/source fact, approved adaptation, gameplay abstraction, player-facing goal, production constraint, and implementation choice distinct. If they conflict, surface the conflict to the authority that owns it.

Work the tree in **rounds**. The **frontier** is every decision whose prerequisites are already settled — the questions you can ask _now_ without guessing at answers you haven't heard yet. Ask the whole frontier in one round: number each question and give your recommended answer. Then wait for the user's answers before the next round.

Each question should be formatted like so:

```
❓ **Q1** - **<question title>**: <question body, might be multiple paragraphs, including multiple choices>

➡️ <your recommended answer>
```

Each round the user answers reshapes the tree — settled decisions push the frontier outward and unblock questions that depended on them. Recompute the frontier and ask the next round. A question whose answer depends on another question still open in this round belongs to a _later_ round, not this one.

Finding _facts_ is your job, never the user's. When a frontier question needs environmental or documentary evidence, inspect it directly or use one accountable worker/session adapter supported by the runtime. Do not assume hidden subagents or permit recursive delegation. A running exploration is an unsettled prerequisite, so only its descendants wait; ask the rest of the frontier now. Decisions remain with their named authority—put them to that authority and wait.

The session is done when the **current milestone's** frontier is empty: every in-scope decision is settled or has an explicit resolution path, and nothing material is silently assumed. Close with a compact ledger of settled decisions, facts/evidence, experiments, specialist questions, protected ambiguity, deferrals, owners, and downstream authority. Shared understanding does not mean experiments or specialist questions have already been answered. Do not act until the user confirms the handoff is accurate.
