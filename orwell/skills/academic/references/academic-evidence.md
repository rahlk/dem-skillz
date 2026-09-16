# Academic Evidence: Calibrating Claims

Match every claim's strength, scope, and wording to the evidence behind it.

## 1. Match confidence to evidence

Choose verbs deliberately. From strongest to weakest: establishes, demonstrates, shows, supports, suggests, is consistent with, may indicate, raises the possibility.

These are not interchangeable. Do not default to the strongest or the weakest. Overstatement and excessive hedging both reduce precision.

## 2. Do not overclaim causality

Use "X is associated with Y" unless the research design supports "X causes Y."

Distinguish observed, inferred, estimated, predicted, and demonstrated. The verb encodes the strength of the evidence.

## 3. Match the scope of the claim to the evidence

Do not infer a general law from one example, universal effectiveness from one benchmark, causation from correlation, or nonexistence from failure to find.

Use bounded claims: "In the applications studied", "Among the evaluated systems", "Under this workload", "For HTTP-based services", "Within the assumptions of our model".

Expand scope only when the evidence permits.

## 4. Distinguish absence of evidence from evidence of absence

| Overclaims | Supported |
|---|---|
| No runtime dependency exists. | No runtime dependency was observed during the evaluated workloads. |
| No prior work exists. | We found no prior work that... |

## 5. Put conditions where readers see them early

When a condition limits interpretation, surface it before the claim.

| Weak | Better |
|---|---|
| The method recovers 94% of observed edges for applications using static HTTP endpoints. | For applications using static HTTP endpoints, the method recovers 94% of observed edges. |

The reader should never temporarily read a bounded claim as universal.

## 6. Keep comparisons complete

Never write "X is 40% faster" without: faster than what, on what measure, under what conditions.

> On the 18-service benchmark, X reduced median analysis time by 40% relative to Y.

Use "significant" only when its substantive or statistical meaning is clear.

## 7. Quantify when numbers improve the claim

| Vague | Better |
|---|---|
| most applications | 17 of 20 applications |
| a substantial number | approximately 30% |

Only when the evidence supports the number. Do not manufacture precision.

When rewriting for confidence or concision, add nothing the source text does not state. That covers quantifiers ("all", "none", "every", "consistently"), numbers, and causal reasons. A rewrite may sharpen wording. It may not add facts.

## 8. Use evidence proportional to the claim

Large claims require correspondingly strong evidence. Ask: How broad is the claim? How direct is the evidence? How many cases support it? What assumptions intervene? What uncertainty remains?

Narrow the claim when the evidence cannot carry it.

## 9. Preserve important distinctions

Do not collapse:

- accuracy vs precision
- association vs causation
- runtime vs deployment
- observation vs explanation
- absence vs nonexistence
- method vs implementation
- concept vs metric
- hypothesis vs result
- result vs implication

Rigor often consists of preserving distinctions that rhetorical compression would erase.

## 10. Separate concepts from operationalizations

> We define autonomy as the degree to which a system selects its next action without an externally specified transition.

> We operationalize autonomy as the proportion of transitions selected by the model.

The metric is evidence about the concept. It is not automatically identical to the concept.

## 11. Separate observation from interpretation

Observation: "Precision increased from .71 to .86."

Interpretation: "This increase suggests that deployment metadata primarily eliminates false target resolutions."

Do not present an interpretation as though it were a measurement.

## 12. Explain figures, tables, and equations

For an important artifact: state what question it answers, direct attention to the important pattern, interpret the pattern, connect it to the argument.

| Weak | Better |
|---|---|
| Results are shown in Figure 4. | Figure 4 shows that recovery plateaus after three evidence sources. Runtime logs improve precision but add little recall. |

Do not narrate every visual detail. Interpret what matters.
