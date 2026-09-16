---
name: academic
description: Use when drafting, rewriting, reviewing, or evaluating scholarly prose, including papers, abstracts, theses, proposals, research reports, literature reviews, related-work sections, methods, results, discussion, and contribution statements. Also use when asked to make text that contains findings, comparisons, or qualifications "more confident", "punchier", "shorter", or "simpler", because that request is where claims outgrow their evidence.
---

# Academic register

Write as a scholar making a defensible argument to an intelligent reader. This skill governs the argument, the evidence, the sources, and the venue. Sentence-level clarity comes from the `plain-english` skill in this plugin.

**REQUIRED BACKGROUND:** the `plain-english` skill (Orwell/Gowers rules and AI-tic removal). Apply it to every draft this skill produces. Do not apply `simple-english` to scholarly prose. Its 20-word limits and controlled vocabulary fight the qualification that academic claims need.

## Reference files

Load only what the task needs.

| File | Load when |
|---|---|
| `references/academic-argument.md` | drafting or restructuring: problem, claim, reasons, evidence, warrant, and the sections that carry them |
| `references/academic-evidence.md` | any rewrite of findings, comparisons, or qualifications. Always when the user asks for more confident, punchier, shorter, or simpler |
| `references/academic-sources.md` | related work, citations, novelty claims, representing prior work |
| `references/academic-style.md` | paragraphs, cohesion, emphasis, terminology, headings, formality, venue |

A full paper needs all four. An abstract needs argument and evidence. A related-work section needs sources and style.

## Priority when rules conflict

truth > evidentiary accuracy > venue requirements > argumentative clarity > reader comprehension > terminological precision > concision > elegance.

Never make prose shorter, simpler, smoother, or more confident by making it less true. A hedge that changes what is claimed is content. Keep it. Cut "it is important to note that". Keep "in the applications studied".

## Revision passes

Revise in this order. Do not perfect a sentence whose paragraph may still be deleted.

| Pass | Ask |
|---|---|
| 1. Argument | What is the problem? The central question? The central claim? Why does it matter? Does each section advance it? |
| 2. Evidence | Does every major claim have support proportional to its strength? Are objections and limitations addressed? Does the wording match the evidence? |
| 3. Structure | Does every section have a purpose? Does every paragraph make one move? Does information appear when the reader needs it? |
| 4. Cohesion and style | Does old information lead to new? Are actors and actions visible? Are terms stable? Can anything go without loss? |
| 5. Sources | Does every citation support its attached claim? Are paraphrase and quotation accurate? Are causal, comparative, and universal claims justified? |
| 6. Mechanics | Only now: grammar, punctuation, citation format, numbering, cross-references. |

## Pre-send check

A reader should be able to answer:

1. What problem is addressed?
2. Why does it matter?
3. What is the central claim?
4. What evidence supports it?
5. How does it differ from what was already known?
6. How strong is the evidence?
7. Under what conditions does the claim hold?
8. What follows if the claim is correct?

Then check for these faults: announcements instead of claims, literature lists instead of synthesis, claims broader than the evidence, decorative citations, hidden warrants, unsupported novelty, causal language the design does not support, limitations without consequences, interpretation presented as observation, conclusions that repeat results.

## Common mistakes

| Mistake | Fix |
|---|---|
| "Punchier" turns "associated with" into "causes" or "to our knowledge" into "first" | Confidence comes from concrete evidence, not stronger verbs. See `academic-evidence.md` |
| Halving length by deleting scope, power, or generalizability caveats | Compress wording. Keep every qualification that changes the claim |
| Adding "all", "none", "every", a number, or a reason the source never stated, to sound decisive | If the source does not say it, the rewrite does not say it |
| "We believe this suggests X" rewritten as "X" | Drop "we believe". Keep "suggests". The verb is the claim's strength |
| "Appeared to reduce" or "may be useful" rewritten as "reduced" or "is useful" | "Appeared to" and "may be" state how the effect was observed. Keep them unless the user confirms a direct measurement. Do not offer the upgrade as an option in the rewrite |
| Bulleting an abstract or introduction | Scholarly prose reads continuously. Lists belong in methods and appendices |
| Adding "novel", "robust", "comprehensive" | Let evidence earn adjectives |
| Varying terms to avoid repetition | One term per concept |
| Applying `simple-english` sentence limits to a paper | Split for clarity where it helps. Never split a qualification away from its claim |
