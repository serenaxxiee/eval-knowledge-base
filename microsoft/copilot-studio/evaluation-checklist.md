---
title: Agent Evaluation Checklist
source: https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-checklist
last_updated: 2026-03-17
category: microsoft/copilot-studio
tags: [copilot-studio, evaluation-checklist, test-sets, acceptance-criteria, baseline, regression]
---

## TL;DR
A four-stage checklist template for building and iterating on agent evaluation test sets -- from foundational test cases through continuous quality improvement operations.

## Key Facts
- Provides a downloadable editable checklist template from the [PowerPnP Guidance Hub on GitHub](https://github.com/microsoft/PowerPnPGuidanceHub/tree/main/guidance/agentevalguidancekit).
- Four stages mirror the iterative evaluation framework: (1) Build foundational test sets, (2) Establish baseline and improve, (3) Systematic expansion, (4) Continuous quality improvement.
- Each test case has four components: Agent scenario, Test prompt, Expected response, and Acceptance criteria.
- Recommends running test sets **multiple times** and calculating average success rate due to probabilistic nature of LLMs.
- Target pass rate: **80-90%** based on business needs (not 100%).
- Root cause analysis categorizes failures as either **test case issues** (bad prompt/criteria) or **agent design issues** (unclear instructions, flawed knowledge/tools).

## Customer Impact
- The downloadable checklist template is immediately usable -- share with customers who want a structured starting point.
- The 80-90% pass rate guidance is critical for setting realistic expectations with stakeholders.
- The false positive / true negative analysis framework helps teams avoid both over- and under-confidence in their agents.
- Stage 3 quality categories (Foundational core, Robustness, Architecture test, Edge cases) give teams a clear expansion path beyond initial testing.

## Detail

### Stage 1: Build Foundational Evaluation Test Sets
Create and run a foundational test set covering the agent's core scenarios.

| Component | Description |
|-----------|------------|
| Agent scenario | What the agent should or should not do |
| Test prompt | Sample question to the agent |
| Expected response | What a correct answer looks like |
| Acceptance criteria | What passes and what doesn't |

**Starting point**: One test prompt per key scenario, then iterate.

### Stage 2: Establish Baseline and Improve
- Run foundational test set against the agent
- Document pass/fail per test case
- Calculate overall pass rate
- Record agent version and baseline date
- Perform root cause analysis on failures
- Iterate: refine test cases OR improve agent design

### Stage 3: Systematic Expansion
Broaden evaluation across quality categories:

| Quality category | Goal | When failures tell you... |
|-----------------|------|--------------------------|
| Foundational core | "Must pass" set for deployment and regression detection | Something is broken -- investigate recent changes |
| Agent robustness | Handle phrasing variations, rich context, multi-intent | Agent is too strict or overfitted to specific phrasings |
| Architecture test | Tool calls, knowledge retrieval, routing, handoffs | A specific component needs debugging |
| Edge cases | Boundary conditions, guardrails, out-of-scope behavior | Guardrails need improvement |

### Stage 4: Continuous Quality Improvement
- Set up regular evaluation maintenance cadence
- Trigger full suite evaluations on: model changes, major knowledge updates, new tool/connector integrations, production incidents

**Success indicator**: You can answer stakeholder concerns with specifics instead of "the agent seems okay."

## Sources
- [Review the agent evaluation checklist](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-checklist)
- [Agent Eval Guidance Kit (GitHub)](https://github.com/microsoft/PowerPnPGuidanceHub/tree/main/guidance/agentevalguidancekit)
