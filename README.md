# dem-skillz

Personal Claude Code marketplace. Plugins live in their own directory with a `.claude-plugin/plugin.json`. Standalone skills sit at the repo root.

## Install

Three harnesses read this repo. Each finds skills a different way.

| Harness | Skills | Routing text | Command |
|---|---|---|---|
| Claude Code | plugin marketplace | output styles in `orwell/output-styles/` | `claude plugin marketplace add /path/to/dem-skillz` then `claude plugin install orwell@dem-skillz --scope user` |
| Codex (CLI and app) | `~/.agents/skills/` | `orwell` style body in `~/.codex/AGENTS.md` | `./install.sh` |
| VS Code Copilot | `~/.agents/skills/` | `~/.copilot/instructions/orwell.instructions.md` with `applyTo: "**"` | `./install.sh` |

`install.sh` is idempotent. It symlinks every directory that holds a `SKILL.md` into `~/.agents/skills/`, writes the Copilot instructions file from the body of `orwell/output-styles/orwell.md`, and writes the same text into `~/.codex/AGENTS.md` between marker comments. Run it again after editing that style. `./install.sh --uninstall` removes all three.

Claude Code also scans `~/.claude/skills/`, and VS Code also scans `~/.claude/skills/` and `~/.copilot/skills/`. The installer does not write there, so a Claude Code plugin install and an `install.sh` run do not load `orwell` twice.

Codex has no output styles or session-start hook, so the plugin manifest in `orwell/.codex-plugin/plugin.json` declares `"hooks": {}` and the always-on text lives in `AGENTS.md`. The Codex marketplace file is `.agents/plugins/marketplace.json`; the `~/.agents/skills/` symlink is the tested path, and the marketplace file is untested.

## Plugins

| Plugin | Purpose | README |
|---|---|---|
| `orwell` | Plain English for all prose, with `adhd` and `academic` registers on top. Three output styles, four skills. Bundles [plain-english](https://github.com/b1rdmania/claude-plain-english-skill) under MIT. | [orwell/README.md](orwell/README.md) |

## Standalone skills

Linked by `install.sh` for Codex and VS Code. For Claude Code, symlink into `~/.claude/skills/`:

```
ln -s /path/to/dem-skillz/drawio ~/.claude/skills/drawio
```

| Skill | Purpose |
|---|---|
| `drawio` | Generate draw.io diagrams as native `.drawio` files, with PNG, SVG, PDF, or browser-URL output. |
| `theme-factory` | Apply one of eleven preset color and type themes to slides, docs, or pages, or generate a new theme. |

## Adding a plugin

1. Create `<name>/.claude-plugin/plugin.json` with `name`, `description`, and `version`. Output styles under `<name>/output-styles/` and skills under `<name>/skills/` load without being listed.
2. Create `<name>/.codex-plugin/plugin.json` with the same fields plus `"skills": "./skills/"` and `"hooks": {}`.
3. Put skills under `<name>/skills/<skill>/SKILL.md`.
4. Add an entry to `.claude-plugin/marketplace.json` with `"source": "./<name>"`, and to `.agents/plugins/marketplace.json` with `"source": {"source": "local", "path": "./<name>"}`.
5. Install with the commands above. After later edits, run `/reload-plugins` in a Claude Code session, or `./install.sh` for the others.
