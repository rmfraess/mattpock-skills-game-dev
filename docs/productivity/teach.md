## What it does

`teach` creates a dedicated teaching workspace and teaches you one topic across many [sessions](https://www.aihero.dev/ai-coding-dictionary/session), using short self-contained HTML lessons plus safe practice and evidence. It resolves the installed skill root separately from the user-selected course root, so course files do not accidentally land inside an installed skill or active production project.

It does not teach from what the [model](https://www.aihero.dev/ai-coding-dictionary/model) already knows. [Parametric knowledge](https://www.aihero.dev/ai-coding-dictionary/parametric-knowledge) is treated as untrusted: before teaching, it finds high-trust, version-matched resources, records them in `RESOURCES.md`, and cites them inside every lesson. The other structural fact is that it is [stateful](https://www.aihero.dev/ai-coding-dictionary/stateful) — the mission, resources, lessons, practice artifacts, and evidence-backed learning record live in the workspace, so the next session picks up from files rather than conversational residue.

## When to reach for it

You invoke this by typing `/teach` — the [agent](https://www.aihero.dev/ai-coding-dictionary/agent) won't reach for it on its own.

Reach for it when the learning is the project: a language, a framework, a codebase you have just joined, yoga, shaders, a certification. It is not the tool for one explanation in passing.

| What you want | What to reach for |
| --- | --- |
| To learn a topic over weeks, with sessions that accumulate | `teach` |
| One idea explained inside the session you are already in | Just ask, in that session |
| The agent's last message re-pitched because it didn't land | [wait-what](https://aihero.dev/skills-wait-what) |
| To sharpen thinking you already have, rather than acquire new material | [grill-me](https://aihero.dev/skills-grill-me) |
| A background agent to read [primary sources](https://www.aihero.dev/ai-coding-dictionary/primary-source) and leave you a cited document | [research](https://aihero.dev/skills-research) |
| To learn something that came up mid-grilling, without derailing the [grilling](https://www.aihero.dev/ai-coding-dictionary/grilling) | [handoff](https://aihero.dev/skills-handoff) out to a teaching workspace, then `teach` there |

## Prerequisites

`teach` builds a directory rather than producing a file, and assumes one mission per workspace. Choose and confirm its absolute path before writing. A dedicated directory or repo is the default; an installed-skill directory and an active production project are separate roots. Hands-on game/tool learning also names an isolated practice project, sandbox map/scene/package, or copied content set with a reset/recovery path and matching engine/tool version.

What accumulates in that directory:

| Path | What it holds |
| --- | --- |
| `MISSION.md` | Why you are learning this. Everything else hangs off it; if it is missing, the first thing `teach` does is interview you until it isn't |
| `RESOURCES.md` | The vetted sources it teaches from, split into Knowledge and Wisdom (communities) |
| `lessons/*.html` | The numbered lessons — the primary unit of teaching |
| `reference/*.html` | Compressed cheat-sheets, algorithms, glossaries: the documents you actually return to |
| `learning-records/*.md` | ADR-style notes on what you have demonstrably learned, used to decide what to teach next |
| `practice/*` or a named sandbox | Exercises, fixtures, captures and disposable engine-native artifacts kept away from the only production copy |
| `assets/*` | Reusable components — a shared stylesheet first — so the lessons look like one course |
| `NOTES.md` | Your stated teaching preferences |

A glossary suits most topics, but the skill ships a `GLOSSARY-FORMAT.md` that `SKILL.md` no longer links to, so you will only get one if you ask ([issue #559](https://github.com/mattpocock/skills/issues/559)). The workspace-root ambiguity is now guarded explicitly—see the first question below.

## Storage strength, not fluency

The word to think with is **storage strength**: long-term retention, as opposed to **fluency**, the in-the-moment recall that feels like mastery while you are reading and is gone a week later. `teach` builds the former through desirable difficulty — retrieval practice, spacing, interleaving. Knowledge comes first, where difficulty is the enemy because it eats the working memory you need in order to understand; then the skill is drilled through a tight feedback loop, where difficulty is the tool.

Two things steer what you get taught. The **mission** — the concrete real-world reason you want this — grounds every lesson; without it the lessons drift abstract and nothing decides what comes next. From the mission and the learning records, `teach` picks the next lesson inside your **zone of proximal development**: challenging enough to take effort, not so far ahead that it stops being learnable.

It is also why the skill pushes back rather than obliges. A question that needs **wisdom** — real-world judgement — gets an attempted answer and then a pointer to a community where you can test it. A quiz is a gate, not a formality: one user reported saying "thanks a lot" and being told the drill was still live.

## Lessons, references and components

A **lesson** is one self-contained HTML file, short enough to finish in a sitting, tied to the mission, giving one tangible win. It cites versioned sources, recommends one primary source, and links to sibling lessons and reference documents. HTML is the explanation surface, not proof of skill: procedural lessons also define a safe practice task, feedback method, success evidence, and reset path.

Game-development practice stays engine-native where fidelity matters. Content work uses copied/sandbox artifacts and editor plus visual/audio review; network work names topology, authority, latency/loss, and participant count; performance work names representative scene/build, hardware or labelled proxy, and stable before/after capture conditions. Promotion into production is a separate user-approved action after compatibility, ownership, licensing, source fidelity, recovery, and evidence checks.

The split worth knowing: lessons are rarely revisited, reference documents are. So the compressed essence of a lesson — the syntax table, the algorithm, the pose sequence, the glossary — belongs in `reference/`, not buried in the lesson that introduced it.

Lessons are built from **components** in `assets/`: stylesheets, quiz widgets, simulators, diagram helpers. Reuse is the default. The agent reads `assets/` before authoring a lesson and builds from what is there, and anything new that a second lesson could use is written as a component rather than inlined. The shared stylesheet is the first component every workspace earns; it is what stops the output being a pile of one-offs.

## Common questions

**Where does it put the files? Mine ended up in `~/.claude/skills`.**
The skill now resolves two roots before writing: the read-only installed skill root for format references and a confirmed absolute teaching-workspace root for course files. If the current directory is an installed skill or active production project, it chooses or asks for a dedicated workspace instead of silently writing there. Verify the returned workspace path before the first lesson.

**Do I stay in one session, or start a new one per lesson?**
All three approaches work — staying in the same session, re-invoking `/teach` in a new session, or opening a new session in the same folder. Each lesson is its own invocation. The folder is the continuity, not the conversation. Common practice is to open a fresh session in the workspace and say `/teach next lesson for <topic>`.

**How do I know it isn't teaching me something it made up?**
You don't, on the skill's word alone. You read the primary sources. `teach` is not reliable enough to trust unchecked, and no skill built on an LLM is. The grounding machinery — `RESOURCES.md`, citations in every lesson, one recommended primary source per lesson — exists to make verification cheap, not to remove the need for it. The failure is not hypothetical: one user learning a 2x2 Rubik's cube was given fabricated move sequences that don't solve it. The diagnostic checklist for a case like that is model, harness, effort — and what the source was. Risk is highest in procedural domains with precise notation, and lowest where the output is immediately verifiable, like code you can run.

**The correct quiz answer is always the first option.**
Confirmed by several people, on Sonnet, on Opus and on GLM, and still unfixed. `SKILL.md` now requires every answer to be the same number of words, which kills a different tell — the correct answer used to be the only fully-reasoned one — but says nothing about position. One contributor tested an instruction-level fix for position and reported the correct answer still landing in slot A 33 times out of 33 across nine lessons ([#335](https://github.com/mattpocock/skills/issues/335)), which points at a shuffling quiz component in `assets/` as the real fix rather than better wording. Until that ships, treat answer position as meaningless. Your `assets/` directory is yours to change, so asking for a component that shuffles at render time is a legitimate local fix.

**It assumed I already knew things, and used terms it never defined.**
The first run now establishes a baseline after the mission: a self-report plus one brief retrieval or practical diagnostic. The first learning record stores the highest demonstrated evidence level—exposure, self-report, retrieval, guided practice, independent practice, or production-ready under stated conditions—and the remaining limits. Unsafe or inaccessible diagnostics become walkthroughs with an explicit fidelity limit, not assumed proficiency.

**Does it do spaced repetition, and does it know when to stop teaching?**
No to the first, and not reliably to the second. Spacing and interleaving are principles the lessons are designed against, but nothing schedules a review, and there is no Anki or calendar integration — both are recurring requests. The related gap is exit criteria: as one user put it, `teach` "is good at making the next lesson, but not as good at knowing when to stop and switch to review or real practice." If you want review or drilling instead of new material, ask for it; the skill will not propose the switch on its own.

**Is it only useful for code?**
No, and the non-coding use is the larger part of the record: Korean, Japanese formal register, piano, guitar, board game design, OpenSCAD, film plots, Azure and CCNA certifications, university exams, and children of eight and ten getting printable books on escape rooms and fire salamanders. Nothing in the skill is programming-specific — mission, resources, zone of proximal development and drill work the same way in any domain. Within code, the strongest reported use is not learning a language from scratch but getting oriented in an unfamiliar codebase or a new team's stack.

**Which model should I run it with?**
There is no canonical answer, and the reported differences are large. Higher [reasoning effort](https://www.aihero.dev/ai-coding-dictionary/effort) has been reported to produce noticeably better lessons than the medium setting. One user ran the same skill through Copilot CLI with Codex and got a single 30-line HTML card where Claude Code produced a full lesson. It runs unmodified in Claude Cowork, subject to whether your organisation allows skills to be added there. If the lessons come out thin, change model, [harness](https://www.aihero.dev/ai-coding-dictionary/harness) or effort before rewriting your prompt.

## It's working if

- The first thing it does in an empty directory is interview you about why you want this, rather than produce a lesson.
- The teaching workspace and any practice sandbox are explicit absolute paths outside installed skills and the only production copy.
- The first run records a self-report plus retrieval or practical baseline instead of guessing the level.
- `RESOURCES.md` fills up before the lessons do, and each lesson names one primary source worth reading yourself.
- Sources record edition/revision, access date, relevant tool/engine version, and access/licensing limits.
- Claims in a lesson carry links out. A lesson with no citations is the skill teaching from memory.
- A lesson takes one sitting and leaves you able to do one thing you couldn't before.
- Procedural skills are demonstrated in safe practice with evidence appropriate to the real failure class; HTML exposure alone is not counted as mastery.
- Network and performance claims state their topology and representative capture conditions; production readiness remains conditional.
- Opening a fresh session in the folder and saying "next lesson" continues the course instead of restarting it.
- `learning-records/` grows, and lessons stop re-teaching what you have already demonstrated.
- The lessons look like one course — they link the stylesheet in `assets/` rather than each carrying its own.
- A question that needs judgement gets you pointed at a forum, subreddit or class, not just an answer.

## Where it fits

`teach` is a **reach-for-it-anytime standalone**. It is not a step in a build chain; it owns a dedicated course workspace and any explicitly named practice sandbox for as long as the topic lasts. Practice artifacts enter production only through a separate approved promotion step.

Its one real neighbour is [handoff](https://aihero.dev/skills-handoff), through the composition Matt named as the answer to "what do I do if I'm being grilled about something I don't understand?": don't stop the grilling to learn — `/handoff` to a teaching workspace, learn it there with `/teach`, then go back and pick up where you left off. The nearby alternative is [research](https://aihero.dev/skills-research), for when what you want is a cited document rather than lessons and retention. When you are not sure which skill or flow fits, [ask-matt](https://aihero.dev/skills-ask-matt) routes you over the whole set.
