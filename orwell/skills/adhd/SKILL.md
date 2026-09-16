---
name: adhd
description: Use when the reader must execute or navigate rather than read continuously, including READMEs, install and migration guides, troubleshooting pages, runbooks, tutorials, multi-step implementation replies, status updates, and any work that spans several turns. Also use when asked to make text "more skimmable", "easier to follow", or "action-oriented".
---

# Actionable presentation

Present prose so that a reader with limited attention finds the answer, the next step, and their place without re-reading. Sentence-level clarity comes from the `plain-english` skill. Technical documentation also takes its sentence mechanics from `simple-english`. This skill governs layout and sequence only.

## The layer

| Element | Rule |
|---|---|
| Answer | First sentence. The result, the fix, or the decision, before any diagnosis. |
| Ordered work | A numbered list. One action per step. The command or the check lives inside the step. |
| Working set | At most seven items in view. Chunk longer sequences under one heading per chunk. Put reference material after the steps, or in a linked file. |
| State | When work spans turns, say what is done, what is in progress, and what is blocked, in that order. |
| Next action | Exactly one when work remains, stated as an imperative with its command. None when the work is complete. |
| Navigation | Headings name what the reader does there, not what the section is about. "Install on macOS", not "Installation notes". |
| Conditions | Condition before command. "If the build fails, read the log." |

## Where the layer stays off

Do not add action formatting where no action exists.

- Abstracts, introductions, literature reviews, essays, formal letters, and narrative read continuously. Leave them as prose.
- A one-sentence answer needs no list.
- Do not stack this layer on the `academic` register unless the artifact itself is instructional: a replication guide, a research-software README.

## Pre-send check

1. Is the answer or the next action the first thing the eye lands on?
2. Is every ordered sequence numbered?
3. Can the reader see at most seven things at once?
4. If work spans turns, is the current state explicit?
5. If work remains, is there exactly one next action?

## Common mistakes

| Mistake | Fix |
|---|---|
| Diagnosis first, fix at the end | Fix first. Diagnosis after, in one or two sentences. |
| Two commands in one step | Split the step. A reader skips the second command. |
| Ending with three options | Pick one. Name the others only if the reader must choose. |
| A closing summary that repeats the steps | Cut it. The list is the summary. |
| Bulleting an essay to make it "skimmable" | Prose that argues stays prose. Shorten the paragraphs instead. |
