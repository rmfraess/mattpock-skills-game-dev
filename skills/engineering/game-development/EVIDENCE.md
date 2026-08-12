# Game-Development Evidence

Select the smallest evidence set that can support the claim. More evidence is not automatically better; irrelevant evidence hides the missing layer.

## Evidence layers

| Layer | Supports | Does not prove |
| --- | --- | --- |
| Static analysis, unit/property tests | Deterministic source behavior at a stable seam | Editor wiring, player experience, assets, runtime budgets |
| Engine/editor validation | Assets load, references resolve, graphs compile, expected editor state | Representative play, packaged behavior, target performance |
| Runtime/play observation | Controls, camera, timing, encounter flow, animation/audio/visual behavior | Broad player preference, worst-case performance, every platform |
| Creative/discipline review | Intent, readability, quality, source fidelity, craft bar | Runtime correctness outside reviewed conditions |
| Network scenario | Authority, replication, prediction, persistence under recorded topology/conditions | Other topologies, load, regions, platform services |
| Profile/trace/benchmark | Frame time, memory, streaming, loading, shader/draw cost at recorded scale | Unmeasured content, hardware, settings, or shipping configuration |
| Cook/package/build | Serialization, staging, dependencies, build configuration | Target-device behavior unless run there |
| Target-device/platform check | Behavior on the named hardware, OS, service, entitlement, and configuration | Other targets or certification as a whole |

## Evidence record

Record enough for another owner to understand what was demonstrated:

- claim and acceptance signal;
- project/build revision and engine/tool version;
- map/scene/content set and data scale;
- platform, hardware, settings, network conditions, and input device where material;
- procedure, automation, or capture location;
- observed result and known variance;
- mocked, omitted, or unrepresentative conditions;
- completion state and remaining gate/owner.

## Human evaluation

For feel, visuals, audio, spatial composition, pacing, readability, tone, accessibility, or source fidelity, name the reviewer and the representative conditions. A screenshot cannot prove motion or feel; a video cannot prove input response; an isolated asset cannot prove in-context readability.

## Performance

A budget claim needs a named metric, threshold, capture tool, representative scale, and target configuration. Measure before and after when the claim is comparative. Do not generalize a toy scene, editor viewport, warm cache, development build, or desktop run to a shipping target without saying so.

## Completion language

Prefer precise states over “done”:

- **implemented** — artifact exists;
- **integrated** — connected and valid in its engine/editor context;
- **representative-tested** — exercised under named production-like conditions;
- **approved** — named authority accepted the experiential result;
- **budget-verified** — measured against the named threshold;
- **packaged** — cook/package/build succeeded;
- **target-verified** — launched and checked on the named target.
