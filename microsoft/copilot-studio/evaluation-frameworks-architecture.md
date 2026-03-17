---
title: Evaluation Frameworks for Copilot Studio Agents
source: https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/architecture/evaluation-frameworks
last_updated: 2026-03-17
category: microsoft/copilot-studio
tags: [copilot-studio, evaluation-frameworks, scenario-validation, capacity-planning, continuous-evaluation, architecture]
---

## TL;DR
Architecture-level guidance on building evaluation frameworks with three key components -- baseline establishment, capacity planning, and scenario validation -- plus an 11-theme checklist for comprehensive scenario testing.

## Key Facts
- Three key framework components: **Baseline establishment**, **Capacity planning**, and **Scenario validation**.
- Baseline should capture current performance levels, user satisfaction metrics, and operational costs for comparison with agent-based solutions.
- Capacity planning must include grounding file sizes, response times, input/output row counts, and language support requirements.
- Provides an 11-theme scenario validation checklist covering temporal references, location awareness, completeness, language precision, compliance, role-specific info, prompt leakage, ugly links, globalization, and pronouns.
- **Continuous evaluation**: Must reevaluate agents and reestablish baselines when architectural changes occur (model, orchestrator, reasoning model, or tool type changes).

## Customer Impact
- The 11-theme scenario validation checklist is one of the most actionable resources in the entire guidance series -- use it as a ready-made test design template.
- Temporal reference testing (handling "next week," "last month") is a commonly missed failure mode that this checklist catches.
- Prompt leakage testing (references to internal test data, placeholder orgs) is critical for production readiness.
- The capacity planning component prevents deploying agents that can't handle production workload.
- "Ugly links" testing ensures professional presentation -- a detail that significantly impacts user trust.

## Detail

### Key Components

**1. Baseline Establishment**
- Capture existing system effectiveness (even manual processes)
- Use proxy metrics like task completion time for legacy processes
- Enables meaningful comparison with agent-based solutions and ROI estimation

**2. Capacity Planning**
- Test upper limits: grounding file sizes, response times, row counts
- Verify critical language support requirements
- Prevents deployment of agents that can't handle production workload
- Informs infrastructure planning decisions

**3. Scenario Validation**
Design comprehensive tests across these 11 themes:

| Theme | What to test |
|-------|-------------|
| Temporal references | "next," "last," "last week," "this month" -- avoid generating incorrect information |
| Location awareness | "What is my office mailing address?" "When is my next meeting in local time?" |
| Completeness verification | Correct counts, comprehensive coverage of available information |
| Language precision | Precise terminology, no inappropriate pluralization or grammatical errors |
| Compliance and override handling | Required disclaimers, organizational policy implementation |
| Role-specific information | Accurate people/role metadata in responses (e.g., expense policies by role) |
| General baseline | Core content and references included accurately and consistently |
| Prompt leakage | No references to internal test data or placeholder organizations |
| Ugly links | Hyperlinks in clean, user-friendly format -- no raw URLs |
| Globalization support | Date formats, currency, cultural context based on requesting user |
| Pronouns | Correctly interpret "me," "my," and other context-dependent references |

### Continuous Evaluation
- Reevaluate when architectural changes occur: language model, orchestrator, reasoning model, or tool type modifications
- Regular evaluation cycles help identify performance degradation before it affects users
- Provides data for optimization decisions

## Sources
- [Evaluation frameworks](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/architecture/evaluation-frameworks)
- [Common evaluation approaches](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/architecture/common-evaluation-approaches)
