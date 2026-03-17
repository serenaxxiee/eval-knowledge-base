---
title: LangSmith Evaluation Platform
source: https://www.langchain.com/langsmith/evaluation
last_updated: 2026-03-17
category: industry/frameworks
tags: [langsmith, langchain, evaluation, observability, llm-testing]
---

## TL;DR
LangSmith is LangChain's agent engineering platform providing end-to-end observability, evaluation, and prompt management -- framework-agnostic and supporting both offline (pre-deployment) and online (production) evaluation workflows.

## Key Facts
- **Built by**: LangChain team, but **framework-agnostic** -- works with LangGraph, custom Python, or any other framework.
- **Two evaluation modes**: Offline (curated datasets, pre-deployment) and Online (real-time scoring of production traffic).
- **Five evaluator types**: Human evaluation (annotation queues), heuristic checks, LLM-as-judge, pairwise comparisons, and custom evaluators (Python or TypeScript).
- **Key concepts**: Examples (test cases), Evaluators (scoring functions), Experiments (evaluation runs), Runs (execution traces), Threads (multi-turn conversations).
- **Multi-turn support**: First-class "thread" concept for evaluating complete multi-turn agent conversations.
- **Insights Agent**: Automatically categorizes agent usage patterns and scores complete conversations.
- **CI/CD integration**: Works with pytest, Vitest, and GitHub workflows for automated testing on PRs and nightly builds.
- **Deployment options**: Cloud (GCP us-central-1 or europe-west4), self-hosted on Kubernetes (AWS, GCP, Azure).
- **Data policy**: "We will not train on your data."
- **Pricing**: Free tier available; paid plans scale with trace volume; enterprise pricing available.

## Customer Impact
- LangSmith's offline + online evaluation combination is a strong pattern: test before shipping (offline), then monitor in production (online).
- The annotation queue feature makes it practical to incorporate human review into evaluation workflows at scale.
- Multi-turn evaluation support is critical for agent use cases where quality must be assessed across an entire conversation, not just single turns.
- Framework-agnostic design means teams are not locked into the LangChain ecosystem.
- The Insights Agent can surface production quality patterns without manual analysis.

## Detail

### Offline Evaluation Workflow
1. **Create datasets** from manually curated test cases, historical production traces, or synthetic data.
2. **Define evaluators** -- human review, code rules, LLM-as-judge, or pairwise comparison.
3. **Run experiments** with configurable repetitions, concurrency, and caching.
4. **Analyze results** for benchmarking, unit tests, regression tests, or backtesting.

### Online Evaluation Workflow
1. Deploy your application to generate production runs.
2. Configure evaluators for automatic execution on production traces.
3. Monitor real-time performance with anomaly detection.
4. Create feedback loops by adding failing traces to datasets for targeted fixes.

### Evaluator Types in Detail

| Type | Description | Best For |
|------|-------------|----------|
| **Human** | Subject-matter experts score via annotation queues | Nuanced quality assessment, calibrating LLM judges |
| **Heuristic** | Code-based checks (output validation, format checks) | Deterministic requirements |
| **LLM-as-judge** | LLM scores against criteria you define | Scalable semantic evaluation |
| **Pairwise** | Compare two outputs side-by-side | A/B testing models or prompts |
| **Custom** | Python or TypeScript functions with any logic | Domain-specific evaluation |

### Prompt Optimization
- Playground interface for prompt experimentation.
- Side-by-side comparison across prompt versions and model providers.
- AI-assisted prompt improvement via "Agent Polly."
- Scale testing through dataset evaluation.

### Recent Updates (2025)
- **Insights Agent**: Monitors agents in production, automatically categorizes usage patterns.
- **Multi-turn Evals**: Threads as first-class concept for evaluating complete agent conversations.
- **Calibration**: LLM-as-judge evaluators can be calibrated against human feedback.

## Sources
- [LangSmith Evaluation](https://www.langchain.com/langsmith/evaluation)
- [LangSmith Evaluation Docs](https://docs.langchain.com/langsmith/evaluation)
- [LangSmith Platform](https://www.langchain.com/langsmith)
- [Insights Agent and Multi-turn Evals (blog)](https://blog.langchain.com/insights-agent-multiturn-evals-langsmith/)
