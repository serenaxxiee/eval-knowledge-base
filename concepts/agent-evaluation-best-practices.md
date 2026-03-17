---
title: AI Agent Evaluation Best Practices
source: https://www.anthropic.com/engineering/demystifying-evals-for-ai-agents
last_updated: 2026-03-17
category: concepts
tags: [agent-evaluation, best-practices, testing, evals, production-monitoring]
---

## TL;DR
Agent evaluation requires a multi-dimensional approach combining offline and online evals, multiple grader types, outcome-based scoring, and continuous integration -- starting small with real failures and progressively building comprehensive coverage.

## Key Facts
- **Eval types**: Single-turn (prompt-response), Multi-turn (conversation with tool calls), and Agent evals (autonomous multi-step tasks where mistakes compound).
- **Three grader types**: Code-based (fast, objective, brittle), Model-based/LLM-as-judge (handles nuance, needs calibration), Human (gold standard, expensive/slow).
- **Key metrics**: `pass@k` (likelihood of at least one correct solution in k attempts) and `pass^k` (probability ALL k trials succeed -- critical for customer-facing reliability).
- **Starting point**: 20-50 simple tasks drawn from real failures is a great start.
- **Best practice**: Grade outcomes, not paths -- avoid penalizing creative solutions that achieve the right result differently.
- **Eval-driven development**: Build evals before agents can fulfill them; "evals force product teams to specify what success means."
- **Eval saturation**: When agents pass most tests, create new, harder evaluations to continue measuring progress.

## Customer Impact
- Teams should start eval efforts early -- even 20-50 test cases based on real user failures provide significant value.
- Use the `pass^k` metric (all trials succeed) for customer-facing scenarios where consistency matters more than best-case performance.
- Combine automated evals with periodic human review -- use humans to keep model judges honest, not to score thousands of examples.
- Build eval into CI/CD pipelines so every change is tested automatically.
- Read transcripts regularly to catch grader bugs and validate that automated scoring matches actual quality.
- Different agent types need different evaluation approaches (see Detail section).

## Detail

### Core Components of Agent Evaluation

| Component | Definition |
|-----------|-----------|
| **Task** | A single test with defined inputs and success criteria |
| **Trial** | One attempt at a task; run multiple trials for consistency |
| **Grader** | Logic that scores agent performance (code, model, or human) |
| **Transcript** | Complete record including all outputs and interactions |
| **Outcome** | Final environment state after task completion |

### Evaluation Design Principles

1. **Start small**: Begin with 20-50 tasks drawn from real failures and edge cases.
2. **Use reference solutions**: Prove tasks are solvable with known-good solutions.
3. **Balance problem sets**: Test both positive cases (should succeed) and negative cases (should refuse/fail gracefully).
4. **Isolate environments**: Clean state between trials to prevent correlated failures.
5. **Grade outcomes, not paths**: Don't penalize creative solutions that achieve the correct result via an unexpected route.
6. **Include partial credit**: For multi-component tasks, score each component independently.
7. **Read transcripts regularly**: Validate that grader scores match actual quality.

### Agent-Type-Specific Approaches

**Coding Agents**
- Use deterministic tests (does the code compile? do unit tests pass?) plus code quality rubrics.
- Partial credit for correct logic with minor errors.

**Conversational Agents**
- Combine state verification with interaction quality rubrics.
- Often require user simulation to test realistic dialog flows.
- Multi-turn evaluation is essential.

**Research Agents**
- Verify groundedness (are claims supported by sources?).
- Check coverage (did the agent address all aspects?).
- Validate source quality and citation accuracy.

**Computer Use Agents**
- Test in real or sandboxed environments.
- Balance token efficiency with latency.
- Evaluate task completion in the actual environment state.

### Common Pitfalls

| Pitfall | Why It Hurts | Fix |
|---------|-------------|-----|
| Overly rigid grading | Penalizes valid alternative approaches | Grade outcomes, not paths |
| Ambiguous task specifications | Causes unfair failures | Write clear, specific success criteria |
| Shared state between trials | Introduces correlated failures | Isolate environments, clean between runs |
| Eval saturation (100% pass rate) | Eliminates improvement signal | Add harder tasks, expand coverage |
| Grader bugs | False passes/failures go unnoticed | Read transcripts, validate grader logic |
| Testing only happy paths | Misses failure modes | Include negative test cases and edge cases |

### Multi-Dimensional Assessment Framework

Modern agent evaluation should measure across multiple dimensions:

- **Quality**: Accuracy, relevance, groundedness, completeness
- **Performance**: Latency, throughput, resource utilization, token efficiency
- **Reliability**: Consistency across runs (`pass^k`), error recovery, graceful degradation
- **Safety**: Content safety, prompt injection resistance, information leakage prevention
- **Cost**: Token usage, API calls, compute resources per task

### Continuous Evaluation Strategy

1. **Offline evals** (pre-deployment): Run against curated datasets before shipping changes.
2. **Online evals** (production): Score real user interactions in real-time to detect drift.
3. **CI/CD integration**: Run evals on every PR/commit to catch regressions early.
4. **Observability**: Capture structured logs with user inputs, agent outputs, intermediate reasoning, and tool invocations.
5. **Feedback loops**: Route failing production cases into evaluation datasets for targeted improvement.
6. **Periodic human review**: Use human reviewers to calibrate automated judges and catch subtle quality issues.

### Running Multiple Trials
Because LLMs produce different outputs for the same input due to their probabilistic nature, running evaluations multiple times produces more stable results. This is especially important for agents that chain multiple decisions -- variance compounds across steps.

## Sources
- [Demystifying Evals for AI Agents (Anthropic)](https://www.anthropic.com/engineering/demystifying-evals-for-ai-agents)
- [AI Evaluation Metrics 2026 (Master of Code)](https://masterofcode.com/blog/ai-agent-evaluation)
- [Evaluating AI Agents: Real-World Lessons (AWS)](https://aws.amazon.com/blogs/machine-learning/evaluating-ai-agents-real-world-lessons-from-building-agentic-systems-at-amazon/)
- [State of AI Agents (LangChain)](https://www.langchain.com/state-of-agent-engineering)
- [AI Agent Performance Measurement (Microsoft)](https://www.microsoft.com/en-us/dynamics-365/blog/it-professional/2026/02/04/ai-agent-performance-measurement/)
