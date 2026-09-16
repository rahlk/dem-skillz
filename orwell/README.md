# Orwell

Claude Code plugin for prose no harder to read than the ideas require. Plain English is the base for every reply and every prose deliverable. Two registers sit on top: `adhd` for readers who must execute or navigate, and `academic` for scholarly genres. Each is an output style you switch on for a session, and a skill you invoke for one deliverable.

The base is [claude-plain-english-skill](https://github.com/b1rdmania/claude-plain-english-skill) by b1rdmania, vendored under MIT. Its two skills, `plain-english` and `simple-english`, ship inside this plugin, so do not install that plugin alongside this one.

## Install

**Claude Code**

1. Register the marketplace once and install:

   ```
   claude plugin marketplace add /path/to/dem-skillz
   claude plugin install orwell@dem-skillz --scope user
   ```

2. Pick a style. Claude Code reads output styles once at session start, so `/clear` after switching.

   ```
   /output-style orwell:orwell
   /output-style orwell:adhd
   /output-style orwell:academic
   ```

   Claude Code prefixes plugin styles with the plugin name. The bare names `orwell`, `adhd`, and `academic` are not accepted.

**Codex and VS Code Copilot**

Run `./install.sh` at the repo root. It links every skill into `~/.agents/skills/`, which both harnesses scan. Neither harness has output styles. The installer writes the `orwell` style body to `~/.copilot/instructions/orwell.instructions.md` with `applyTo: "**"` and into `~/.codex/AGENTS.md` between marker comments. The `adhd` and `academic` registers are available there as skills only.

## What each style does

| Style | Adds on top of plain English | Sends deliverables to |
|---|---|---|
| `orwell` | nothing | `plain-english`; technical docs to `simple-english` |
| `adhd` | answer first, numbered steps, working set of seven, explicit state across turns, one next action | `adhd`, then `plain-english` or `simple-english` |
| `academic` | truth over concision, verb strength preserved, scope matched to evidence, no bulleting of continuous prose | `academic`, then `plain-english` |

All three styles carry the same 24 plain-English rules inline, so the base never changes when you switch.

## Skills

| Skill | Governs | Files |
|---|---|---|
| `plain-english` | sentence-level prose with a voice: cut words, active voice, banned vocabulary, em-dash budget, no preamble or closer | `SKILL.md`, `REFERENCE.md` |
| `simple-english` | technical documentation under ASD-STE100: 20/25-word limits, one word one meaning, condition before command | `SKILL.md`, `references/checklist.md`, `references/use-cases.md` |
| `adhd` | layout and sequence for readers who execute or navigate | `SKILL.md` |
| `academic` | argument, evidence, sources, and venue for scholarly prose | `SKILL.md`, `references/academic-argument.md`, `academic-evidence.md`, `academic-sources.md`, `academic-style.md` |

Priority when the academic register conflicts with anything: truth, evidentiary accuracy, venue requirements, argumentative clarity, reader comprehension, terminological precision, concision, elegance. The skill never shortens or sharpens prose by making it less true.

## Layout

```
orwell/
  .claude-plugin/plugin.json      Claude Code manifest
  .codex-plugin/plugin.json       Codex manifest; hooks: {} because Codex has none
  output-styles/orwell.md         plain English, always on
  output-styles/adhd.md           plain English + actionable layer
  output-styles/academic.md       plain English + academic layer
  skills/plain-english/           vendored, MIT
  skills/simple-english/          vendored, MIT
  skills/adhd/SKILL.md            actionable presentation
  skills/academic/                academic register and its four reference files
```

## Editing

The marketplace is a directory source, so skills and styles load from this repo. After editing, run `/reload-plugins` in an open session, then `/clear` if you changed a style. If a session still shows stale content, run:

```
claude plugin update orwell@dem-skillz
```

The three style files repeat the 24 base rules. Edit all three together. After editing `output-styles/orwell.md`, re-run `./install.sh` so the Codex and VS Code copies follow.

To pull a newer upstream plain-english, install it once from its marketplace, copy `skills/plain-english` and `skills/simple-english` from the plugin cache over the vendored copies, and uninstall it again.

## Testing

Each register was checked against a baseline before it shipped.

`academic`: an agent with plain-english alone, asked to make a hedged contribution statement punchier, turned "appeared to reduce" into "reduces" and "suggest … may be" into "show … is". With the skill, the agent kept "to our knowledge" and "suggests", added no facts, and flagged every change. Re-run that check after material edits.

`adhd`: an agent with no skill, given a mid-rollout failure and asked what to do, already answered first, numbered the steps, and ended with one next action. The layer earns its keep on long deliverables, not short replies. Test it on a README or a migration guide, not a chat answer.
