# Academic Argument

Problem, claim, reasons, evidence, warrant, and the sections that carry them. Companion files: `academic-evidence.md` (calibrating claims), `academic-sources.md` (prior work and citation), `academic-style.md` (paragraphs, cohesion, venue).

## 1. Governing model

Write as a scholar making a defensible argument to an intelligent reader. The objective is not to sound academic. The objective is to:

1. identify a worthwhile problem
2. make a consequential claim
3. support it with reasons and evidence
4. place it within existing scholarship
5. explain why the result matters

The argumentative chain: problem, question, claim, reasons, evidence, warrants, qualifications and objections, consequence.

If a paragraph, citation, table, definition, or section does not contribute to that chain, reconsider whether it belongs.

## 2. Start with a research problem, not a topic

A topic names an area. A research problem names something unresolved and states the consequence.

| Weak | Better |
|---|---|
| This paper discusses agent memory. | Existing agent-memory systems optimize retrieval accuracy, but we do not know how stale memories affect subsequent tool decisions. |

Shape: **condition + consequence**.

> We do not know whether static call graphs preserve service boundaries in polyglot applications, which makes it difficult to determine whether they are sufficient for whole-system security analysis.

Never assume the importance of a problem is self-evident.

## 3. State a central claim

A substantial work has a sentence that completes: "This paper argues that ______."

A central claim is specific, contestable, consequential, supported, and appropriately qualified.

| Weak | Better |
|---|---|
| AI agents are important. | We show that separating persistent memory from execution state reduces recovery ambiguity in long-running tool-using agents. |
| We investigate agent memory. | |
| This paper explores the relationship between X and Y. | |

A claim is not a topic, a question, an announcement of activity, or an uncontested observation.

## 4. Separate claim, reason, evidence, and warrant

- **Claim**: what the reader should accept. "Static analysis can recover a substantial fraction of inter-service dependencies."
- **Reason**: why. "Most service calls originate from statically identifiable client callsites."
- **Evidence**: what establishes the reason. "Across 18 services, 91% of observed HTTP edges corresponded to statically identified callsites."
- **Warrant**: why the evidence supports the claim. "If dependencies originate at identifiable callsites, resolving those callsites provides evidence of service dependencies."

For every major claim ask: What is the reason? What is the evidence? What connects evidence to reason? What connects reason to claim? A missing link is an argumentative gap.

## 5. Make significance explicit

Do not stop at "this is true." Explain what changes because it is true.

Progression: We know X. We do not know Y. We show Z. This matters because Q.

| Weak | Better |
|---|---|
| Our system improves recall by 11%. | Our system improves recall by 11%, suggesting that cross-service static evidence recovers dependencies that deployment topology alone does not expose. |

Results answer "What happened?" Discussion answers "What does this change?"

## 6. Put the argument early

An introduction establishes, as early as the genre permits: context, problem, limitation or gap, research question, answer or thesis, contribution, significance.

Abstract pattern: **context, problem, gap, approach, result, significance**. An abstract states the principal result. It is not a teaser.

## 7. Make research questions genuine

A research question corresponds to a real uncertainty.

| Weak | Better |
|---|---|
| RQ1: How does our system perform? | RQ1: How accurately does static callsite resolution recover service dependencies observed at runtime? |

Each research question maps to motivation, method, evidence, answer, implication.

## 8. Keep contributions concrete

Weak:

> We make three contributions: a framework, insights, and extensive experiments.

Better:

1. We define a cross-language representation that unifies static callsites and deployment endpoints.
2. We introduce an algorithm that resolves candidate callsites to service identities.
3. Across 12 applications, we show that combining static and deployment evidence recovers 18 to 27% more observed edges than either source alone.

A contribution states what now exists or what is now known. Avoid unsupported labels: novel, important, robust, comprehensive, scalable, efficient, state-of-the-art. Let evidence earn the adjective.

## 9. Write methods to support evaluation

Give readers enough to judge whether the evidence supports the claim: cases or subjects, selection, measurements, operationalization, procedure, comparisons, assumptions, uncertainty. Where reproducibility is expected, give enough detail to reproduce the procedure.

## 10. Organize results around questions

RQ1, evidence, answer. RQ2, evidence, answer. Not the chronology of experiments. A paper reflects the logic of the investigation, not the history of the project.

## 11. Make discussion do intellectual work

A discussion answers these questions:

- What do the results mean?
- Why might they have occurred?
- How do they change prior understanding?
- How do they relate to previous work?
- Where does the conclusion hold, and where might it fail?
- What follows?

Do not merely restate results in prose.

## 12. Anticipate strong objections

Address objections that could materially weaken the claim, evidence, method, interpretation, novelty, or generalizability. Do not introduce trivial objections merely to defeat them. A qualification often strengthens a claim by defining where it holds.

## 13. Explain what a limitation changes

A limitation defines the boundary of a result. Always connect it to its consequence.

| Weak | Better |
|---|---|
| A limitation is that we evaluate only HTTP services. | Because the evaluation includes only HTTP-based services, the results do not establish equivalent recovery for asynchronous messaging. |

## 14. End by answering the problem

A conclusion returns to the research problem: what was learned, what changed, why it matters, what remains unresolved. Do not introduce a major unsupported claim in the conclusion.
