## What it does

`improve-codebase-architecture` surveys a product for **deepening opportunities** — places where a shallow module (an interface nearly as complex as the thing it hides) could become a deep one — writes them up as a self-contained offline HTML report, and then [grills](https://www.aihero.dev/ai-coding-dictionary/grilling) you through whichever one you pick. For games, the survey follows a player-visible system across source, visual scripting, content, editor tooling, networking, builds, and target evidence instead of mistaking text files for the whole product.

It never changes production source or content. The survey produces one offline HTML file in your OS temp directory and a conversation; the refactor itself happens later, in a separate [session](https://www.aihero.dev/ai-coding-dictionary/session), through the normal build flow. That is what makes it a survey rather than a refactoring tool, and it is why the skill is worth running on a project you are not ready to touch yet.

Two filters keep the report from becoming generic cleanup advice. Every candidate has to pass the **deletion test** after required framework/engine shells are understood — would removing this module concentrate complexity behind a smaller interface, or break lifecycle, serialization, authoring, networking, or platform obligations? And unless you point it at a specific area, it weighs available production evidence: source churn, recurring bugs, content/import failures, editor friction, profiler captures, cook/build failures, and ownership hazards. A report may conclude **No architecture change now** when migration cost and risk are not justified.

## When to reach for it

You invoke this by typing `/improve-codebase-architecture` — the [agent](https://www.aihero.dev/ai-coding-dictionary/agent) will not reach for it on its own.

It sits outside the build loop — it is not a step in the main loop but something you run periodically to queue up more work to improve the codebase. The four situations it gets used in:

| Situation | How it is used |
| --- | --- |
| Routine upkeep | Run it every few days, or whenever a spare moment appears, to stop structure rotting between features. |
| Before a big build | Point it at the [spec](https://www.aihero.dev/ai-coding-dictionary/spec): "how can we make this change easy?" This is the most effective prompt for it. |
| Brownfield audit | Run it on a large, unstructured or [vibe-coded](https://www.aihero.dev/ai-coding-dictionary/vibe-coding) repo to find out what shape it is actually in. |
| Legacy test work | Use it to find the missing seams first, before writing tests against untestable code. |

Where it is confusable with siblings:

- For designing one module you have already chosen, use [codebase-design](https://aihero.dev/skills-codebase-design) — that is the bench, this is the survey that finds what to put on it.
- For a whole effort too big to hold in one session, use [wayfinder](https://aihero.dev/skills-wayfinder).
- For "this specific thing is broken," use [diagnosing-bugs](https://aihero.dev/skills-diagnosing-bugs). It hands back here when the real finding is that there is no good seam to lock the bug down.

## Prerequisites

None to run it. It reads `CONTEXT.md` and any ADRs in `docs/adr/` if they exist, and speaks in your domain's own nouns when they do — a candidate reads as "deepen the Order intake module," not "refactor the FooBarHandler." Game work also loads the configured player-facing, source/canon, engine, content, ownership, budget, and evidence authorities through `game-development`.

It writes in two places. The self-contained report goes to `<tmpdir>/architecture-review-<timestamp>.html`, outside the repo, with inline CSS and accessible inline diagrams. During the grilling loop it will add or sharpen terms in `CONTEXT.md`, creating that file if it does not exist, and offer to record a rejected candidate as an ADR so a future run does not re-suggest it.

## Depth, and the report that hunts for it

The skill turns on one idea: **depth**. A deep module puts a lot of behaviour behind a small, stable interface. A shallow one leaks its implementation through an interface nearly as wide as the code beneath it. The report is a hunt for shallowness — pure functions extracted only for testability while the real bugs live in how they are called (no **locality**), modules leaking across their **seams**, a concept you cannot understand without opening five files — and a proposal for the deepening that fixes it.

Each candidate is a card: the player/user-visible system, every material source/editor/content/build surface, the friction, a plain-English solution, benefits and trade-offs in **locality**, **leverage**, authorability and budgets, an owner/migration plan, layered evidence, a before/after diagram, and a strength badge.

| Badge | What it means for you |
| --- | --- |
| `Strong` | The deletion test passes clearly and the friction is real. Take these seriously. |
| `Worth exploring` | Plausible deepening, but the payoff depends on where the code is going next. |
| `Speculative` | Surfaced for completeness. Most of these are safe to ignore. |

The report ends with a **Top recommendation** — the one it would tackle first, or **No architecture change now** with the evidence and risk reason — and then the skill stops and asks which candidate you want to explore. Nothing has been decided at that point, and no production artifact has moved.

## What happens after you pick one

Picking a candidate starts a [grilling](https://aihero.dev/skills-grilling) session over it: constraints, what sits behind the seam, which evidence survives, what the intentional interfaces should look like, and how mutable artifacts migrate safely. The output is a decision, not a diff. Runtime, rendering, world/content, and creative/source questions stay with their named owners. From there the normal flow applies — take the decision into [to-spec](https://aihero.dev/skills-to-spec), then [to-tickets](https://aihero.dev/skills-to-tickets), then [implement](https://aihero.dev/skills-implement).

## Common questions

**It grilled me for an hour about one idea instead of showing me options. Can I turn that off?**

Yes — say so when you invoke it ("don't grill me, just show the report"). This is the loudest complaint the skill has. One user put it bluntly: they liked it as "a convenient way to get a thorough analysis of improvements," and after the grilling loop was added found it "borderline unusable," reporting sessions where it proposed a single solution and then asked "10's or 100's of questions." The design intent is that the report comes first and the grill only starts on a candidate you chose, but weaker [models](https://www.aihero.dev/ai-coding-dictionary/model) skip straight to interviewing you about the first idea they had. Reports in that thread vary sharply by model, and it is an open issue — the skill does not yet have a documented no-grill mode.

**The report opened as unstyled raw HTML with no diagrams. What happened?**

The current report is self-contained: inline CSS, inline SVG/HTML diagrams, no remote scripts, fonts, or stylesheets. The skill checks the saved structure and opens an available local preview before handoff. If no render surface is available, it reports structural checks only rather than claiming visual verification. An unstyled page now indicates a malformed or stale report and should fail the delivery check.

**It gave me twelve candidates. Do I work through them in the same session or start a new one?**

One candidate per session. Working through several in one conversation fills the [context window](https://www.aihero.dev/ai-coding-dictionary/context-window) with the report, the grilling, the domain-model edits and the code changes all at once. The report only lives in a temp file, so carry the candidate itself rather than the file: pick one, grill it, take the decision into `/to-spec`, and turn the rest into [tickets](https://www.aihero.dev/ai-coding-dictionary/ticket) you can pick up independently later. Put the chosen improvement into a spec rather than going straight to implementation. This is a recurring question with no documented workflow in the skill itself.

**How should I prompt it?**

With the next thing you are building in mind. Where a big build is coming up, point it at the spec and ask "how can we make this change easy?" An unprompted run scans for hot spots on its own, which is fine for routine upkeep, but naming a direction is what makes the report actionable.

**Does it work on a large legacy codebase?**

Partly. It is strong on big existing codebases lacking consistent structure, and it is the recommended upkeep mechanism after any one-time structural setup. The honest counterweight: users with genuinely out-of-control projects report it "helped a little but still doesn't seem to cut it," and one developer with an eight-year legacy codebase reported the model going in circles where the same skill produces a clean graph on a tidy repo. There is no dedicated `/refactor` skill for that case yet. If the codebase has no shared vocabulary at all, [grill-with-docs](https://aihero.dev/skills-grill-with-docs) to establish one first tends to make this skill's output much better.

**How is this different from `/codebase-design`?**

`/codebase-design` is a reference, not a session driver. It supplies the vocabulary — module, interface, depth, seam, adapter, leverage, locality — and this skill borrows it. Pointing a fresh agent at `/codebase-design` as the thing to "do" is a known failure: with no process of its own to follow, the agent invents one, re-explores code and runs for a very long time before asking you anything. Drive with this skill; consume that one.

**Will it ever tell me the codebase is fine?**

Yes. **No architecture change now** is an explicit result when the available evidence does not justify migration cost, production risk, or ownership disruption. The report states why rather than manufacturing speculative work.

**Does it work in Codex or another harness?**

Yes, provided the runtime can inspect the project and write the report. Exploration uses one accountable context through the runtime's configured visible-session, durable-queue, worker, or direct adapter; it does not depend on a vendor-named agent primitive or recursive delegation. The evidence available to that runtime still bounds the scan, and those limitations belong in the report.

**How do I actually implement deep modules in TypeScript?**

There is no good answer shipped with the skill. The recurring request is for a `TYPESCRIPT.md` giving concrete file and module layouts for the principles, and it does not exist. The skill will tell you where a deepening belongs and what should sit behind the seam; translating that into a package or directory structure is currently on you.

## It's working if

- The candidates name your domain's concepts, not invented class names — "the Order intake module," not "the FooBarHandler."
- Each candidate accounts for every material source, editor, content, build, network, and target surface—not only files visible in a text diff.
- The owner, migration/recovery risk, player/user trade-offs, and evidence layers are explicit.
- No production artifact changed during the survey. The only new file is the offline HTML report in your temp directory.
- It stops after the report and asks which candidate you want, rather than continuing on its own.
- Each card explains the payoff as locality or leverage and names the material verification—not just "this is cleaner."
- The top result may be **No architecture change now**, with a concrete reason.
- The report passes structural checks and records whether a local render was actually inspected.
- Rejecting a candidate for a durable reason gets you an offer to record an ADR, so the next run does not re-suggest it.

## Where it fits

`improve-codebase-architecture` is **periodic maintenance** — run it every few days, outside any chain, to queue up work rather than to do it. Its neighbours are [codebase-design](https://aihero.dev/skills-codebase-design), which owns the depth-and-seam vocabulary every candidate is written in, [grilling](https://aihero.dev/skills-grilling), which walks the decision tree once you have chosen a candidate, and [domain-modeling](https://aihero.dev/skills-domain-modeling), which keeps `CONTEXT.md` and the ADRs current as the decision settles. What it produces is an idea, which re-enters the main build flow at [grill-with-docs](https://aihero.dev/skills-grill-with-docs) or [to-spec](https://aihero.dev/skills-to-spec). For which skill fits a situation, [ask-matt](https://aihero.dev/skills-ask-matt) is the router over the whole set.
