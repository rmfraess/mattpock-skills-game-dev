# The canonical install block for this fork

This repository is an independent adaptation. The official `mattpocock-skills` marketplace plugin and the `mattpocock/skills` installer source install the upstream edition, not this fork. Do not present either as an installation route for the game-development adaptation.

## Prerequisites

- Git
- Node.js 22.20.0 or newer with `npx`
- An agent supported by the [`skills` installer](https://github.com/vercel-labs/skills)

## Recommended game-project baseline

Run from the target game project:

```bash
npx skills@latest add rmfraess/mattpock-skills-game-dev --skill setup-matt-pocock-skills game-development
```

This installs the project setup skill and the shared game-development discipline. Install additional workflow skills explicitly as needed:

```bash
npx skills@latest add rmfraess/mattpock-skills-game-dev --skill implement prototype code-review
```

Inspect all discoverable skills without installing:

```bash
npx skills@latest add rmfraess/mattpock-skills-game-dev --list
```

The bare command without `--skill` is not the recommended route: the current CLI installs all discoverable skills, including skills in non-promoted buckets.

After installation, invoke `setup-matt-pocock-skills` once in each target project. Agents that expose skills as slash commands use `/setup-matt-pocock-skills`.

## Direct clone

Cloning is for inspection or contribution; it does not install the skills into an agent:

```bash
git clone https://github.com/rmfraess/mattpock-skills-game-dev.git
```
