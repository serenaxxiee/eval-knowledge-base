---
title: Copilot Studio Agent Evaluation
source: https://learn.microsoft.com/en-us/microsoft-copilot-studio/analytics-agent-evaluation-intro
last_updated: 2026-03-17
category: microsoft/copilot-studio
tags: [copilot-studio, agent-evaluation, testing, quality-assurance]
---

## TL;DR
Copilot Studio provides built-in agent evaluation that lets you generate test sets, run automated tests against your agent, and measure accuracy, relevancy, and quality of responses using multiple grading methods.

## Key Facts
- Agent evaluation is currently in **preview** (subject to change).
- A **test set** contains up to 100 **test cases**, each simulating a user question with an optional expected answer.
- Test sets can be **generated** from knowledge/topics, **imported** from files, or **manually written**.
- Seven evaluation methods (graders) are available: General Quality, Compare Meaning, Tool Use, Keyword Match, Text Similarity, Exact Match, and Custom.
- Multiple test methods can be applied to a single test set simultaneously.
- User profiles can be assigned to simulate different users during evaluation.
- Results include aggregate scores plus per-test-case details with transcripts and activity maps.
- Government Community Cloud (GCC) has limitations: no user profiles and no Text Similarity method.
- Agent evaluation measures correctness and performance, **not** AI ethics or safety -- responsible AI reviews and content safety filters are still required separately.

## Customer Impact
- Teams building Copilot Studio agents should adopt agent evaluation early to catch regressions before publishing changes.
- Start with General Quality (no expected answers needed) to get a baseline, then layer in Compare Meaning and Keyword Match as you define expected responses.
- Use the Custom grader for domain-specific compliance checks (e.g., HR policy compliance, regulatory language).
- Agent evaluation complements -- but does not replace -- manual test chat, responsible AI reviews, and content safety filters.
- Run the same test set before and after agent changes to objectively measure impact.

## Detail

### How It Works
1. **Create a test set** -- generate from your agent's knowledge sources, import a CSV/JSONL file, or manually author test cases.
2. **Choose evaluation methods** -- select one or more of the seven graders, configure pass thresholds and expected answers where needed.
3. **Run the evaluation** -- Copilot Studio sends each test case question to your agent, records the response, compares it against expectations, and scores each case.
4. **Review results** -- view aggregate pass rates per method, drill into individual test cases to see transcripts, activity maps, and which knowledge sources were used.

### Test Chat vs. Agent Evaluation
| Aspect | Test Chat | Agent Evaluation |
|--------|-----------|------------------|
| Scope | One question at a time | Up to 100 test cases at once |
| Repeatability | Hard to repeat consistently | Same test set can be rerun |
| Multi-turn | Supports full conversation sessions | Single question-response per test case |
| User simulation | You interact manually | Assign user profiles to simulate different users |

Both methods should be used together for a complete picture of agent quality.

### Iterative Framework
Microsoft recommends a four-stage iterative approach:
1. Start small with focused test cases drawn from real scenarios.
2. Expand coverage across agent capabilities.
3. Add regression testing for changes.
4. Build a fully operational evaluation system with ongoing maintenance.

## Sources
- [About agent evaluation](https://learn.microsoft.com/en-us/microsoft-copilot-studio/analytics-agent-evaluation-intro)
- [Choose evaluation methods](https://learn.microsoft.com/en-us/microsoft-copilot-studio/analytics-agent-evaluation-overview)
- [Generate and import test sets](https://learn.microsoft.com/en-us/microsoft-copilot-studio/analytics-agent-evaluation-create)
- [Run tests and view results](https://learn.microsoft.com/en-us/microsoft-copilot-studio/analytics-agent-evaluation-results)
- [Build an iterative evaluation framework](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-iterative-framework)
