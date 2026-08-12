# Learning Record Format

Learning records live in `./learning-records/` and use sequential numbering: `0001-slug.md`, `0002-slug.md`, etc. Create the directory lazily — only when the first record is written.

They are the teaching equivalent of ADRs: they capture non-obvious lessons, key insights, and stated prior knowledge that will steer future sessions. They are used to calculate the zone of proximal development.

## Template

```md
---
status: active
evidence-level: guided-practice
conditions: {workspace/tool/version/platform conditions under which this was demonstrated}
---

# {Short title of what was learned or established}

{1-3 sentences: what was learned (or what prior knowledge was established), and why it matters for future sessions.}

## Evidence
{What the user recalled, produced, ran, reviewed, or explained. Link a compact artifact/capture when useful.}

## Remaining limits
{What has not been demonstrated, including production or fidelity conditions not yet met.}
```

Keep the record compact. The value is recording _what evidence supports the claim_, under which conditions, and why it changes what to teach next—not in filling out sections.

## Evidence levels

Record the highest level actually demonstrated:

1. `exposure` — encountered the material; no understanding claim.
2. `self-report` — the user reports prior knowledge or confidence.
3. `retrieval` — recalls or explains the idea without the lesson in view.
4. `guided-practice` — succeeds with prompts or step-by-step support.
5. `independent-practice` — succeeds unaided in the safe practice environment.
6. `production-ready` — succeeds independently under stated representative production conditions with the required review/evidence.

Coverage never advances the level. Production readiness is conditional, not a universal label.

## Optional sections

Only include these when they add genuine value. Most records won't need them.

- **Status** frontmatter (`active | superseded by LR-NNNN`) — useful when an earlier understanding turns out to be wrong and is replaced.
- **Implications** — what this unlocks or rules out for future sessions. Worth recording when non-obvious.

## Numbering

Scan `./learning-records/` for the highest existing number and increment by one.

## When to write a learning record

Write one when any of these is true:

1. **The user demonstrated genuine understanding of something non-trivial** — not just exposure, but evidence they can use the concept correctly. This sets a new floor for what to teach next.
2. **The user disclosed prior knowledge** — "I already know X." Record it so future sessions don't re-teach it. Also record the _depth_ claimed.
3. **A misconception was corrected** — the user previously believed something wrong and now sees why. These are high-value: they predict future stumbling blocks for related topics.
4. **The mission shifted in response to learning** — the user discovered they cared about something different than they thought. Cross-link to [[MISSION.md]] and update it.

### What does _not_ qualify

- Material that was merely covered. Coverage is not learning. Wait for evidence.
- Anything already captured tersely in [[GLOSSARY.md]] as a term definition. Don't duplicate.
- Session-by-session activity logs. Learning records are not a journal — they are decision-grade insights.

## Supersession

When a later record contradicts an earlier one (the user's understanding deepened or corrected), mark the old record `Status: superseded by LR-NNNN` rather than deleting it. The history of how understanding evolved is itself useful signal.
