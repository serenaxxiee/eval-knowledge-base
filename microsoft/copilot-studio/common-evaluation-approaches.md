---
title: Common Evaluation Approaches for Copilot Studio Agents
source: https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/architecture/common-evaluation-approaches
last_updated: 2026-03-17
category: microsoft/copilot-studio
tags: [copilot-studio, evaluation-approaches, echo, historical-replay, synthesized-personas, grading, architecture]
---

## TL;DR
Microsoft's architecture-level guidance on generating test data (echo, historical replay, synthesized personas) and grading responses (code-based, LLM-as-judge, human) -- plus how to translate evaluation results into deployment decisions.

## Key Facts
- Three approaches for generating request-response pairs: **Echo** (static prompt replay), **Historical replay** (evaluate each turn against prior context), **Synthesized personas** (human or agentic actor generates conversation in real time).
- Three grading approaches: **Code-based** (regex, unit tests, vector similarity), **LLM-as-judge** (scenario-based at scale), **Human** (best qualitative, expensive/slow).
- Recommends **combining multiple approaches and platforms** rather than relying on a single evaluation method.
- Challenges legacy serial development ("upgrade from declarative to custom to pro-code"), advocating multivariate evaluation instead.
- Recommends **high-friction visualizations** (column charts, decision frameworks) over low-friction radar plots to highlight dimensions critical to success.
- Hybrid evaluation (human graders audit LLM judge reasoning) provides benefits of both approaches.

## Customer Impact
- The three test data generation approaches help teams pick the right strategy for their scenario -- echo for simple, persona-based for complex multi-turn.
- The "move away from serial development flows" guidance is particularly relevant for customers comparing Copilot Studio agent types.
- The advice to establish baseline success rate for the **existing system** (even manual) before building an agent is essential for realistic ROI conversations.
- The radar plot vs. column chart guidance helps teams make better architecture decisions based on the specific qualities that matter for their use case.

## Detail

### Generating Request-Response Pairs

**Echo**: Replays a static list of multi-turn prompts word for word.
- Pros: Low cost, fair comparisons for incremental changes.
- Cons: Static prompts can't adapt to divergent responses in multi-turn.
- Ideal for: Single-turn scenarios, deterministic checks (citations, tool triggers).

**Historical Replay**: Evaluates each turn in context of prior prompts and responses.
- Pros: Identifies where and how much each turn diverges from ideal path.
- Cons: Can't handle dynamic conversations or dynamic RAG changes.
- Ideal for: Comparing model changes, understanding divergence from original behavior.

**Synthesized Personas**: Human or agentic actor generates conversation in real time based on a scenario and persona.
- Pros: Dynamically assesses complex scenarios (e.g., tutoring).
- Cons: Grading requires nuance; must consider cost of LLM or human tester.

### Grading Responses

**Code-based**: Regex, binary pass/fail, unit testing, vector similarity, telemetry-based (performance, capacity, cost).
- Pros: Mature solutions and frameworks exist.
- Cons: Difficult to accurately evaluate nuance or qualitative aspects (tone, accuracy).

**LLM-as-judge**: Uses language models to score responses.
- Pros: Enables scenario-based testing at scale, flexible encoding of user preferences.
- Cons: Overreliance on limited set of models can introduce entropy.

**Human graders**: Domain experts evaluate responses.
- Pros: Best qualitative evaluation.
- Cons: Slow and expensive, requires expert time away from day jobs.

### Translating Results into Decisions

- Establish baseline of existing system (even manual processes don't have 100% success rate).
- Evaluation metrics should be specific to business outcome (e.g., both TTR and routing accuracy for ticket routing).
- Complete proof of concept evaluation before building any solution.
- Resist averaged/low-friction scores -- select agents based on the one or two specific qualities needed for success.
- Consider hybrid evaluation: human graders audit and refine LLM judge reasoning.

## Sources
- [Common evaluation approaches](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/architecture/common-evaluation-approaches)
- [Evaluation frameworks](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/architecture/evaluation-frameworks)
- [Design and operationalize agent evaluation](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/evaluation-overview)
