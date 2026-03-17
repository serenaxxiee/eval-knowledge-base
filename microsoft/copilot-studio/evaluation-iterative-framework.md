---
title: Build an Iterative Evaluation Framework in Four Stages
source: https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-iterative-framework
last_updated: 2026-03-17
category: microsoft/copilot-studio
tags: [copilot-studio, iterative-framework, four-stages, evaluation-cadence, regression-testing, operationalize]
---

## TL;DR
A four-stage framework for building agent evaluation from first test cases to a fully operational system: Define foundational tests, Establish baseline and iterate, Expand with purposeful categories, and Operationalize for continuous quality.

## Key Facts
- **Stage 1 (Define)**: Start small -- translate key scenarios into concrete test cases with clear acceptance criteria. You don't need a working agent to begin.
- **Stage 2 (Baseline)**: Run tests, establish quantitative baseline, enter the core loop: evaluate > analyze > improve > reevaluate.
- **Stage 3 (Expand)**: Build comprehensive suite with four categories: Core (regression), Variations (generalization), Architecture (diagnostic), Edge cases (robustness).
- **Stage 4 (Operationalize)**: Establish cadence and automation for continuous evaluation.
- Acceptance criteria must be specific enough that **two people could independently agree** whether a response passes or fails.
- Uses five quality signals in the Employee Self-Service example: Policy accuracy, Source attribution, Personalization, Action enablement, Privacy protection.
- Final example suite: 108 test cases across four categories with defined cadence per category.

## Customer Impact
- This is the most actionable article in the guidance series -- it tells teams exactly what to do at each stage.
- The acceptance criteria examples ("Too vague vs. Specific enough" table) are immediately useful for training customer teams.
- The four evaluation categories provide a clear mental model for organizing test suites beyond just "happy path" testing.
- The Stage 4 cadence table is a ready-made operational plan customers can adapt.
- Key message: "Evaluation is a continuous conversation about quality, not a gate at the end of development."

## Detail

### Stage 1: Define Foundational Evaluation Set

Three activities:
1. **Identify core scenarios** from purpose/scenarios prerequisites -- be specific, break broad scenarios into concrete situations.
2. **Define core user inputs** -- realistic queries with natural language variations.
3. **Define acceptance criteria** -- specific enough for two independent reviewers to agree.

**Writing good acceptance criteria:**

| Too vague (not testable) | Specific enough (testable) |
|--------------------------|---------------------------|
| "Responds helpfully" | "Response includes the correct PTO balance for the employee's tenure bracket" |
| "Gives accurate information" | "PTO allowance matches the current HR policy document (Section 4.2)" |
| "Handles escalation well" | "Routes to HR with context when query involves medical leave, FMLA, or ADA accommodations" |
| "Protects privacy" | "Refuses to disclose other employees' PTO balances, salary, or personal information" |

### Stage 2: Establish Baseline and Iterate

- First evaluation run = baseline (quantitative snapshot of starting performance)
- Categorize failures by quality signal to diagnose fix type
- The iteration loop (evaluate > analyze > improve > reevaluate) is "the heartbeat of Stage 2"
- Run many cycles; each should show measurable progress on specific dimensions

### Stage 3: Systematic Expansion

| Category | Purpose | When it fails... | When to add |
|----------|---------|-------------------|-------------|
| Core (regression) | Must-pass tests, run on every change | Something broke that used to work | Always (non-negotiable) |
| Variations (generalization) | Confirm success generalizes beyond exact test cases | Agent is brittle, overfitted to specific phrasings | When agent handles diverse phrasings |
| Architecture (diagnostic) | Pinpoint where failures occur (knowledge, tools, routing) | Specific component needs attention | When debugging is difficult |
| Edge cases (robustness) | Test graceful handling of unusual inputs | Needs better guardrails or fallback behaviors | When facing adversarial users or compliance requirements |

### Stage 4: Operationalize

**Cadence by category:**

| Category | When to run | Rationale |
|----------|-------------|-----------|
| Core (regression) | Every change | Catch regressions before production |
| Variations (generalization) | Before release | Ensure improvements generalize |
| Architecture (diagnostic) | On failures | Targeted investigation |
| Edge cases (robustness) | Weekly + before releases | Verify guardrails |

**Full suite triggers**: Model change, major knowledge base update, new tool/connector integration, before production deployment, after production incidents.

### Employee Self-Service Agent Operationalized Example
- **108 total test cases** across four categories
- Core (18 tests): Every PR merge and deployment
- Core + Variations (63 tests): Nightly automated run
- Full suite (108 tests): Weekly + before all production releases
- Dashboard tracks pass rates by quality signal (Policy accuracy: 98%, Personalization: 91%, Escalation: 100%, Privacy: 100%)

## Sources
- [Build an iterative evaluation framework in four stages](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-iterative-framework)
- [Define your agent's purpose and key scenarios](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-define-purpose)
- [Review the agent evaluation checklist](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-checklist)
