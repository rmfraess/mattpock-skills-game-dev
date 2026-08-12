# Installation-instructions verification

**Verdict: supported, but the bare command is not a deterministic two-skill install.**

## Findings

- **Source syntax — supported.** The official CLI documents `npx skills add <owner>/<repo>` and explicitly lists GitHub shorthand (`owner/repo`) as a supported source format.[1][2] The published `skills` package exists on npm, so `npx skills@latest` is a valid npm invocation of that CLI.[3] The `@latest` spelling is npm package-resolution syntax; the Skills documentation itself shows the equivalent `npx skills add ...` form rather than this exact spelling.
- **The two requested skills exist in the live fork.** The current `main` tree contains valid `SKILL.md` files at [`skills/engineering/setup-matt-pocock-skills`](https://github.com/rmfraess/mattpock-skills-game-dev/tree/7623855afe24148422bc99b8cec43873e9eb135f6/skills/engineering/setup-matt-pocock-skills) and [`skills/engineering/game-development`](https://github.com/rmfraess/mattpock-skills-game-dev/tree/7623855afe24148422bc99b8cec43873e9eb135f6/skills/engineering/game-development), with those names in their frontmatter.[4][5][6]
- **Selecting both is supported.** The CLI documents `--skill <skills...>` and examples for installing named skills.[2] Its current source filters by the requested skill names, so this is the deterministic form:

  ```bash
  npx skills@latest add rmfraess/mattpock-skills-game-dev \
    --skill setup-matt-pocock-skills --skill game-development
  ```

  (`--skill setup-matt-pocock-skills game-development` also parses successfully in the current CLI, but repeated flags match the documented examples more literally.)
- **Bare-command caveat.** With multiple skills and a normal interactive TTY, omitting `--skill` opens the CLI's skill-selection prompt; therefore a user can select these two interactively.[7] However, when the CLI detects that it is running inside an agent, it forces non-interactive mode; with no explicit `--skill`, the current source selects all discovered skills.[8] Thus `npx skills@latest add rmfraess/mattpock-skills-game-dev` is a valid discovery/install command, but README prose should not imply that it always installs only `setup-matt-pocock-skills` and `game-development` or always presents prompts.
- **Agent support.** The current official agent registry contains **76** `--agent` identifiers: `aider-desk`, `amp`, `antigravity`, `antigravity-cli`, `astrbot`, `autohand-code`, `augment`, `bob`, `claude-code`, `openclaw`, `cline`, `codearts-agent`, `codebuddy`, `codemaker`, `codestudio`, `codex`, `command-code`, `continue`, `cortex`, `crush`, `cursor`, `deepagents`, `devin`, `dexto`, `droid`, `eve`, `firebender`, `forgecode`, `gemini-cli`, `github-copilot`, `goose`, `grok`, `hermes-agent`, `inference-sh`, `iflow-cli`, `jazz`, `junie`, `kilo`, `kimchi`, `kimi-code-cli`, `kiro-cli`, `kode`, `lingma`, `loaf`, `mcpjam`, `minimax-code`, `mistral-vibe`, `moxby`, `mux`, `neovate`, `opencode`, `openhands`, `ona`, `pi`, `qoder`, `qoder-cn`, `qwen-code`, `replit`, `reasonix`, `roo`, `rovodev`, `tabnine-cli`, `terramind`, `tinycloud`, `trae`, `trae-cn`, `warp`, `windsurf`, `zed`, `zcode`, `zencoder`, `zenflow`, `pochi`, `promptscript`, `adal`, and `universal`.[9][10] The official table maps Hermes Agent to project `.hermes/skills/` and global `~/.hermes/skills/`.[9] `--agent <agents...>` is the documented way to target agents; without it, the CLI detects installed/current agents or prompts.[2][8]

## Documented versus observed

- **Documented:** GitHub shorthand sources, named-skill selection, agent targeting, and the project/global installation model are covered by the official CLI documentation/source.[1][2][7][8]
- **Observed against the live source:** `npx skills@latest add rmfraess/mattpock-skills-game-dev --list` resolved the public GitHub repository, cloned it, reported 36 discovered skills, and listed both requested names. An isolated run with `--skill setup-matt-pocock-skills --skill game-development --agent hermes-agent --copy -y` exited 0 and installed exactly those two skills under `.hermes/skills/`. This is runtime evidence, not a substitute for the documented contract.

## Sources

1. https://www.skills.sh/docs/cli
2. https://github.com/vercel-labs/skills/blob/c6f69c631292444cc541ac6d91e2226b0ff247da/README.md
3. https://registry.npmjs.org/skills/latest
4. https://github.com/rmfraess/mattpock-skills-game-dev/blob/7623855afe24148422bc99b8cec43873e9eb135f6/skills/engineering/setup-matt-pocock-skills/SKILL.md
5. https://github.com/rmfraess/mattpock-skills-game-dev/blob/7623855afe24148422bc99b8cec43873e9eb135f6/skills/engineering/game-development/SKILL.md
6. https://api.github.com/repos/rmfraess/mattpock-skills-game-dev
7. https://github.com/vercel-labs/skills/blob/c6f69c631292444cc541ac6d91e2226b0ff247da/src/add.ts#L1292-L1369
8. https://github.com/vercel-labs/skills/blob/c6f69c631292444cc541ac6d91e2226b0ff247da/src/add.ts#L1066-L1084
9. https://github.com/vercel-labs/skills/blob/c6f69c631292444cc541ac6d91e2226b0ff247da/README.md#L265-L340
10. https://github.com/vercel-labs/skills/blob/c6f69c631292444cc541ac6d91e2226b0ff247da/src/types.ts#L1-L77
