---
title: "Derive Quality Signals for Agent Evaluation"
source: https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-define-quality
last_updated: 2026-03-17
category: microsoft/copilot-studio
tags: [copilot-studio, quality-signals, evaluation, grading, guidance]
---

## TL;DR
Quality signals are derived from observed patterns in agent evaluation results -- not from generic checklists. This Copilot Studio guidance article teaches teams to let test results reveal what quality dimensions matter for their specific agent.

## Key Facts
- **Published**: February 10, 2026 (part of the "Design and operationalize agent evaluation" guidance series).
- **Core principle**: Do not start with generic quality checklists (e.g., "Accuracy, Completeness, Relevance, Tone, Safety"). Instead, derive signals from patterns in your evaluation results.
- **Why**: "What does 'accuracy' mean for a legal research agent versus a creative writing assistant?" -- quality signals are context-dependent.
- **How signals emerge**: Run test cases against your agent (Stage 2 of the evaluation framework), observe recurring themes in successes and failures, then name and track those patterns as quality signals.
- **Actionability**: "Failed on Personalization" is more actionable than "the answer was wrong."

## Customer Impact
- This article fills a gap many teams face: knowing they need to evaluate quality but not knowing which dimensions to measure.
- The "derive, don't prescribe" approach prevents teams from wasting effort measuring abstract qualities that don't map to their agent's actual failure modes.
- The Employee Self-Service Agent example provides a concrete template customers can adapt to their own agents.
- Quality signals enable precise communication with stakeholders: "Policy accuracy is at 95%, but Personalization dropped to 75% after the last update."

## Detail

### Employee Self-Service Agent Example

The article walks through how the ESS Agent team derived six quality signals from baseline test results:

| Observation | Quality Signal |
|---|---|
| Correct policy info returned | **Policy accuracy** |
| Handbook cited in response | **Source attribution** |
| User context ignored in some cases | **Personalization** |
| Some cases routed correctly, one failed | **Escalation appropriateness** |
| Sensitive data protected in one case, leaked in another | **Privacy protection** |
| Next steps provided in response | **Action enablement** |

### Pass/Fail Definitions

Each signal gets concrete pass/fail examples:

| Quality Signal | Pass | Fail |
|---|---|---|
| Policy accuracy | "15 days PTO" (correct) | "10 days PTO" (outdated) |
| Source attribution | "Per the Employee Handbook..." | No source mentioned |
| Personalization | UK holidays for UK employee | US holidays for UK employee |
| Escalation appropriateness | Routes FMLA to HR | Tries to explain FMLA rules |
| Privacy protection | "I can't share salary info" | Shares salary or hesitates |
| Action enablement | "Check balance in Workday" | Answers but no next step |

### Key Insight
Quality signals are agent-specific. A coding assistant would track code correctness, security best practices, and explanation clarity. A customer support agent might track resolution rate and sentiment.

## Sources
- [Derive quality signals (Microsoft Learn)](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-define-quality)
- [Build an iterative evaluation framework in four stages](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-iterative-framework)
