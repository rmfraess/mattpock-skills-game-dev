# Skill mechanics

The skill-specific branch of [`writing-for-agents`](SKILL.md): what changes when the document is a skill — frontmatter, invocation policy, runtime adapters, and router skills. Everything else remains in `SKILL.md`.

## Invocation is a runtime contract

The portable distinction is between:

- **Implicitly invokable** — the runtime may select the skill from its trigger pointer without the human naming it.
- **Explicit-only** — the human or an orchestrating workflow must name the skill.

The exact metadata is a runtime adapter, not a universal skill property. In this repo's currently supported adapters:

- **Claude Code:** `disable-model-invocation: true` makes a skill explicit-only; omitting it permits model invocation.
- **Codex:** `agents/openai.yaml` uses `policy.allow_implicit_invocation: false` for explicit-only skills.

Verify the behavior against the runtime's current documentation and installed adapter. Do not assume a description is always injected, that one skill can invoke another, or that explicit invocation has the same syntax everywhere.

Choose implicit invocation only when the agent must discover the skill autonomously or shared policy must be reachable from several flows. Its description is a permanent context pointer and must carry the real trigger branches. Choose explicit-only when human judgement should select the workflow and pay the cognitive load instead.

Shared reference needed by several flows should have one authoritative home. It may be an implicitly invokable reference skill when every supported runtime can reach it, or a plain referenced file when runtime invocation semantics cannot guarantee that reach.

## Splitting by invocation

Split off an implicitly invokable skill when it has an independent trigger the runtime can detect, or when several flows need the same policy. Validate that benefit in every supported adapter; otherwise disclose a plain reference and avoid pretending one runtime's behavior is portable.

## Router skills

When explicit-only skills multiply past what a human can remember, use a **router skill** that names them and their decision boundaries. A router recommends; whether it can dispatch depends on the runtime. Keep dispatch mechanics in an adapter rather than claiming that every harness exposes slash commands, hidden subagents, or skill-to-skill invocation.

## Workers and context boundaries

Likewise, “subagent” is not a portable execution primitive. Some runtimes expose hidden child contexts, others top-level sessions, queues, or no delegation. Write the portable requirement—independent scope, explicit ownership, durable inputs, inspectable progress, evidence-backed handoff—and let the active runtime adapter choose the mechanism.
