## What it does

`diagnosing-bugs` runs a six-phase diagnosis on a hard bug or performance regression: build a faithful repro protocol, minimise without removing the cause, rank hypotheses, instrument, fix with the strongest regression guard available, and clean up.

It will not let the agent form a theory until a **tight** feedback loop exists—already run once, capable of going red on *this* symptom, and faithful to its causal system. Tight means shortest faithful and repeatable, not necessarily one command, seconds-long, deterministic, or unattended. A visual frame defect, multi-instance desync, target streaming hitch, or long-session leak can qualify with controlled conditions and captured evidence.

## When to reach for it

Type `/diagnosing-bugs`, or the agent reaches for it on its own when a task fits — it is model-invoked, and fires on "diagnose" / "debug this" or on a report that something is broken, throwing, failing, or slow.

Reach for it on the hard ones: a bug that resists a first look, an intermittent flake, a regression that crept in between two known-good states. It is heavy by design, and the wrong tool for a question you want answered in one message.

| Your situation | Where to go |
| --- | --- |
| A specific defect you can describe as a symptom | This skill |
| A slow endpoint or a timing regression with a known before-and-after | This skill — it has a performance branch (measure a baseline, then bisect) |
| "Where are the bottlenecks in this codebase?" — no specific symptom | Not this skill. It diagnoses one known failure, it does not audit |
| A raw bug report from someone else, not yet confirmed or written up | [triage](https://aihero.dev/skills-triage) first |
| Throwaway code to answer a design question, not chase a defect | [prototype](https://aihero.dev/skills-prototype) |
| Building a planned behaviour test-first | [tdd](https://aihero.dev/skills-tdd) |
| No good seam exists to lock the bug down | [improve-codebase-architecture](https://aihero.dev/skills-improve-codebase-architecture) — this skill hands off there itself |

## The tight loop is the skill

Phase 1 gets disproportionate effort because it is the only phase that is hard. The skill gives a ladder of ways to construct the loop, roughly in order of preference:

1. A failing test at whatever seam reaches the bug.
2. A curl or HTTP script against a running dev server.
3. A CLI invocation with a fixture input, diffed against a known-good snapshot.
4. A headless browser script asserting on DOM, console, or network.
5. A replayed capture — a saved request, payload, or event log, run through the code path in isolation.
6. A throwaway harness: a minimal subset of the system, one function call.
7. A property or fuzz loop, for "sometimes wrong output".
8. A bisection harness you can hand to `git bisect run`.
9. A differential loop — same input, old version against new.
10. A [human-in-the-loop](https://www.aihero.dev/ai-coding-dictionary/human-in-the-loop) protocol, with the shipped Bash template as one adapter.
11. Engine automation/replay, test maps/scenes, captures, profilers/traces, asset/import audits, synchronized multi-instance logs, package/cook logs, or target runs for game-specific failures.

*A* loop is not the goal. **Tight** is sharp, controlled, repeatable, as fast as fidelity permits, and runnable through an available adapter. Preserve representative scale, duration, topology, hardware, cache, settings, and world content when they are causal. For a probabilistic bug, quantify and raise the reproduction rate instead of fabricating determinism.

When it genuinely cannot build one, it is instructed to stop and say so, list what it tried, and ask you for [environment](https://www.aihero.dev/ai-coding-dictionary/environment) access, a captured artifact, or permission to add temporary instrumentation. It should not proceed to hypothesise anyway.

## The gates between phases

The phases are gates, not a checklist. Each one refuses to open until something specific is true.

| Gate | What has to be true |
| --- | --- |
| Into Phase 2 | An already-run faithful repro protocol with redacted output/capture, controlled conditions, reproduction rate, and exact symptom signal |
| Into Phase 3 | The repro is reproduced and minimised to the smallest faithful scenario; every retained scale/duration/topology/target condition is load-bearing |
| Into Phase 4 | 3–5 ranked, falsifiable hypotheses exist, each stating its prediction, shown to you before any is tested |
| Into Phase 5 | Probes map to a specific prediction, one variable at a time, every debug log tagged `[DEBUG-a4f2]`-style so cleanup is one grep |
| Done | Original full scenario is green across every material evidence layer, instrumentation is gone, editor artifacts are cleaned safely, and the correct hypothesis is recorded |

Phase 5 keeps the correct-seam escape hatch. If no automatable seam can reproduce the real pattern, it preserves the smallest reliable regression protocol and evidence artifact rather than writing a shallow test. That absence can still route the post-mortem to `improve-codebase-architecture`.

## Common questions

**It fires on quick questions where I just wanted a direct answer.**
This is the most-reported problem with the skill, and it is real. On GPT-5.6-Sol especially, users report it triggering on a plain description of a problem: "the model triggers the rather formal diagnosing-bugs skill instead. It then goes on to construct a reproduction scenario — often building a mock scenario with limited value — before giving me a response or suggestion. This results in considerable reply delays." Four separate people reported the same shape on [issue #578](https://github.com/mattpocock/skills/issues/578). The accepted fix is to start with a lighter approach and graduate to the heavier one only where the problem warrants it, but that change has not landed. The skill is calibrated against Claude Code's invocation behaviour; a [model](https://www.aihero.dev/ai-coding-dictionary/model) with a lower activation threshold over-fires it. Until it is graduated, the practical fix is to say what you want ("just answer this, don't diagnose") or to disable model invocation for it in your [harness](https://www.aihero.dev/ai-coding-dictionary/harness).

**Can I point it at a codebase and ask where the performance problems are?**
No. It diagnoses one failure you can already name. Its performance branch is for a regression with a symptom — establish a baseline measurement, then bisect, measure first and fix second — not for a proactive sweep. A skill for the proactive version was [proposed and closed](https://github.com/mattpocock/skills/issues/431); there is currently no skill for it.

**Does it stop and ask me before it writes the fix?**
No. Only Phase 3 has a human checkpoint — the ranked hypothesis list is shown to you before any is tested, and it proceeds on its own ranking if you are away. There is no gate between instrumentation and the fix, so the agent can start writing code before you have agreed with its root cause. [Issue #124](https://github.com/mattpocock/skills/issues/124) asks for that gate and is still open. If you want it, say so when you invoke the skill.

**I already ran `/triage` on this bug report. Is this the same work again?**
Partly, and neither skill admits it. As one reader put it: "Triage's step 3 is essentially a shallow, bounded instance of diagnosing-bugs Phase 1–2, but neither file mentions the other." Triage does a bounded "is this actually a bug, and what is the surface" pass; this skill does the thorough version. Running triage first is not wasted — its verification often gives you most of Phase 1's raw material — but expect to redo it properly here, and expect no cross-reference to tell you that.

**Will the repro output it pastes leak secrets?**
The skill now requires redaction before commands, logs, captures, traces, crash artifacts, or media enter chat or a report. Secrets stay in environment/credential stores; only signal-bearing sanitized lines or authorized artifact pointers are shared. If redaction destroys the signal, diagnosis stops and asks for an approved access path.

**My security scanner flagged this skill as high risk.**
Snyk flags it, and the flag is a false positive. It is the only skill in the set that ships an executable shell script (`hitl-loop.template.sh`) alongside instructions to run it and to curl a dev server. Shipped `.sh` plus run-it instructions plus outbound HTTP is enough to trip a static scanner. The script itself is about 30 lines of `read -r -p` prompts that pause for human input. The scanner is rating the capability surface, not a proven exploit.

**What happened to `/diagnose`?**
Renamed to `/diagnosing-bugs` in v1.0.0. The old name no longer exists. Anything of yours that chains `/diagnose` — a wrapper skill, a saved prompt — needs updating.

## It's working if

- It shows an already-run faithful protocol and redacted red evidence before it offers a theory.
- The failure it reproduces is the one you reported, not a nearby one it found on the way.
- It shrinks to the smallest faithful repro and can tell you why each retained content, duration, topology, cache, hardware, or target condition is load-bearing.
- You are shown a ranked list of 3–5 hypotheses, each with a prediction you could falsify, before any of them is tested.
- Every debug log it adds carries a tag like `[DEBUG-a4f2]`, and a grep for that tag comes back empty when it declares done.
- The commit or PR message names which hypothesis was right.
- When it cannot lock the bug down with a test, it says so plainly instead of writing a shallow one.
- Game/editor artifacts have an owner and recovery point before mutation, and the fix closes on the original editor/runtime/profile/network/package/target scenario rather than a substitute.

## Where it fits

`diagnosing-bugs` is a reach-for-it-anytime standalone. You drop into it when something is broken and drop out when the fix and its regression test are in; it holds no state and needs no prior setup. [ask-matt](https://aihero.dev/skills-ask-matt) routes "Something's broken" here.

Two neighbours matter. [improve-codebase-architecture](https://aihero.dev/skills-improve-codebase-architecture) takes the [handoff](https://www.aihero.dev/ai-coding-dictionary/handoff) when the real finding is that the code has no seam to lock the bug down — the recommendation is made after the fix is in, when there is more information. [triage](https://aihero.dev/skills-triage) sits upstream of it for bugs that arrive as raw reports from other people, and does a shallower version of the same first two phases.
