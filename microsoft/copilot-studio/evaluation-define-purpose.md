---
title: Define Your Agent's Purpose and Key Scenarios
source: https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-define-purpose
last_updated: 2026-03-17
category: microsoft/copilot-studio
tags: [copilot-studio, purpose-definition, key-scenarios, evaluation-prerequisites, scope]
---

## TL;DR
Before designing any evaluation, define your agent's core mission, scope/boundaries, and key scenarios -- without this foundation, evaluation efforts risk measuring the wrong things.

## Key Facts
- This is a prerequisite article in the Copilot Studio evaluation guidance series -- complete it before building test cases.
- Three elements to define: **Core mission** (what tasks, what user needs, what success looks like), **Scope and boundaries** (what to handle, what to decline, edge cases), and **Key scenarios** (essential situations the agent must handle).
- Vague scenarios lead to vague evaluations -- be specific.
- Key scenarios become the foundation for test cases in the iterative evaluation framework (Stage 1).
- Uses the Employee Self-Service Agent as the running example.

## Customer Impact
- This is the first step customers should take when starting evaluation -- even before building any test sets.
- Teams that skip purpose definition often discover late that their evaluations don't measure what matters to the business.
- The scope/boundaries definition is particularly valuable -- explicitly documenting what the agent should NOT do is as important as what it should do.
- The key scenarios list directly feeds into test case creation -- one test case per key scenario as a starting point.

## Detail

### Core Mission Definition
Articulate in concrete terms:
- What specific tasks should the agent accomplish?
- What user needs does it address?
- What does a successful interaction look like from the user's perspective?
- What does success look like from the business's perspective?

### Scope and Boundaries
Document explicitly:
- What the agent **should handle**
- What it should **gracefully decline**
- What **edge cases** fall outside its purpose

### Key Scenarios
Identify the essential situations and use cases. These define what the agent needs to do and directly inform evaluation test cases.

### Employee Self-Service Agent Example

**Core mission**: Help employees get quick, accurate answers to HR questions without submitting tickets or waiting for human responses. Provide personalized guidance based on company policies and route complex or sensitive issues to appropriate human support.

**In scope**: PTO policies/balances, benefits enrollment, training requirements, public holidays by location, general policy explanations, routing to HR for complex issues.

**Out of scope**: Performance reviews, salary negotiations, legal/compliance issues, medical emergencies, personnel decisions, compensation disputes.

**Key scenarios**:
- Answer HR policy questions accurately using official knowledge sources
- Provide location/context-specific information tailored by region, job level, or tenure
- Route to human support when questions require human judgment
- Protect sensitive information -- refuse requests for other employees' data

## Sources
- [Define your agent's purpose and key scenarios](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-define-purpose)
