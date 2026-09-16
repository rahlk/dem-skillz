#!/usr/bin/env bash
# Install dem-skillz for Codex and VS Code Copilot. Idempotent; safe to re-run.
# Claude Code users install through the plugin marketplace instead (see README).
#
#   ./install.sh            link skills, write instructions, patch AGENTS.md
#   ./install.sh --uninstall
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="${AGENTS_SKILLS_DIR:-$HOME/.agents/skills}"        # read by Codex and VS Code
COPILOT_INSTR="${COPILOT_INSTRUCTIONS_DIR:-$HOME/.copilot/instructions}"
CODEX_AGENTS="${CODEX_AGENTS_MD:-$HOME/.codex/AGENTS.md}"
STYLE="$ROOT/orwell/output-styles/orwell.md"                     # the always-on text, minus its frontmatter
MARK_BEGIN="<!-- dem-skillz:orwell begin -->"
MARK_END="<!-- dem-skillz:orwell end -->"

skills() { find "$ROOT" -name SKILL.md -not -path '*/node_modules/*' -exec dirname {} \; | sort; }
style_body() { awk 'BEGIN{n=0} /^---$/{n++; next} n>=2' "$STYLE"; }

if [[ "${1:-}" == "--uninstall" ]]; then
  # Remove every link that points into this repo, including links to skills that no longer exist.
  for l in "$SKILLS_DIR"/*; do
    [[ -L "$l" && "$(readlink "$l")" == "$ROOT"/* ]] && rm -f "$l"
  done
  rm -f "$COPILOT_INSTR/orwell.instructions.md"
  [[ -f "$CODEX_AGENTS" ]] && python3 - "$CODEX_AGENTS" "$MARK_BEGIN" "$MARK_END" <<'PY'
import re, sys
p, b, e = sys.argv[1:]
t = open(p).read()
open(p, "w").write(re.sub(r"\n?" + re.escape(b) + r".*?" + re.escape(e) + r"\n?", "", t, flags=re.S))
PY
  echo "removed"; exit 0
fi

mkdir -p "$SKILLS_DIR" "$COPILOT_INSTR" "$(dirname "$CODEX_AGENTS")"

# 1. Skills: one symlink per SKILL.md directory. Codex and VS Code both scan ~/.agents/skills.
for s in $(skills); do
  ln -sfn "$s" "$SKILLS_DIR/$(basename "$s")"
  echo "skill   $SKILLS_DIR/$(basename "$s") -> $s"
done

# 2. VS Code Copilot: always-on instructions file, generated from the orwell output style so
#    the text has one source. Re-run this script after editing output-styles/orwell.md.
{
  printf -- '---\nname: Orwell writing defaults\ndescription: Plain English for every reply and prose deliverable; adhd and academic registers on request\napplyTo: "**"\n---\n\n'
  style_body
} > "$COPILOT_INSTR/orwell.instructions.md"
echo "copilot wrote $COPILOT_INSTR/orwell.instructions.md"

# 3. Codex: no output styles exist, so the same text goes into ~/.codex/AGENTS.md. Replace the
#    block on every run so edits propagate.
touch "$CODEX_AGENTS"
python3 - "$CODEX_AGENTS" "$MARK_BEGIN" "$MARK_END" <<'PY'
import re, sys
p, b, e = sys.argv[1:]
t = open(p).read()
t = re.sub(r"\n?" + re.escape(b) + r".*?" + re.escape(e) + r"\n?", "", t, flags=re.S)
open(p, "w").write(t)
PY
{ echo; echo "$MARK_BEGIN"; style_body; echo "$MARK_END"; } >> "$CODEX_AGENTS"
echo "codex   wrote orwell block to $CODEX_AGENTS"
