---
title: "Azure AI Agent Evaluation GitHub Action"
source: https://github.com/microsoft/ai-agent-evals
last_updated: 2026-03-17
category: microsoft/azure-ai-eval-sdk
tags: [azure, github-action, ci-cd, agent-evaluation, microsoft-foundry, automated-testing]
---

## TL;DR
Microsoft's `ai-agent-evals` GitHub Action automates offline evaluation of Microsoft Foundry Agents within CI/CD pipelines, supporting agent evaluators, RAG evaluators, safety evaluators, and custom evaluators with statistical significance testing.

## Key Facts
- **What it is**: A GitHub Action for automated agent evaluation in CI/CD pipelines.
- **Current version**: v3-beta (38 commits, actively developed).
- **Target**: Microsoft Foundry Agents (Azure AI Foundry).
- **Workflow**: Accepts test datasets and evaluator specs, invokes agents with queries, collects performance metrics, runs evaluations, generates summary reports.
- **Statistical rigor**: Provides confidence intervals and tests for statistical significance to determine if changes are meaningful.
- **Performance tracking**: Collects latency and token count metrics alongside quality scores.

### Supported Evaluator Categories

| Category | Description |
|----------|-------------|
| **Agent evaluators** | Workflow assessment for agent behavior |
| **RAG evaluators** | Retrieval-augmented generation quality |
| **Risk and safety evaluators** | Response safety and content assessment |
| **General purpose evaluators** | Coherence, fluency, and quality metrics |
| **OpenAI-based graders** | String checks, text similarity, scoring models |
| **Custom evaluators** | Python or LLM-as-a-judge patterns |

## Customer Impact
- This action makes it practical to run agent evaluations on every pull request -- catching regressions before deployment.
- The statistical significance testing is a differentiator: it prevents teams from reacting to noise in evaluation results.
- Integrates with the Azure AI Evaluation SDK ecosystem, providing a bridge from SDK-based evaluation to automated CI/CD workflows.
- The multi-category evaluator support means teams can assess quality, safety, and performance in a single pipeline step.

## Detail

### How It Works
1. Define a test dataset with queries and expected behaviors.
2. Configure evaluators (choose from built-in categories or write custom).
3. Add the GitHub Action to your workflow.
4. On each PR/push, the action invokes your agent, runs evaluations, and posts results.
5. Review statistical summaries to determine if changes are meaningful improvements or regressions.

### Evaluator Categories in Detail

**Agent evaluators**: Assess the overall agent workflow -- did the agent follow the right steps, use the right tools, and achieve the intended outcome?

**RAG evaluators**: Measure retrieval quality and answer groundedness for agents that use knowledge sources.

**Risk and safety evaluators**: Check for content safety violations, PII exposure, and responsible AI compliance.

**General purpose evaluators**: Score response quality on dimensions like coherence, fluency, and relevance.

**OpenAI-based graders**: Use OpenAI models for string matching, text similarity comparison, and custom scoring.

**Custom evaluators**: Write arbitrary evaluation logic in Python or use LLM-as-a-judge patterns for domain-specific assessment.

## Sources
- [GitHub: microsoft/ai-agent-evals](https://github.com/microsoft/ai-agent-evals)
- [Azure AI Agent Evaluation - GitHub Marketplace](https://github.com/marketplace/actions/azure-ai-agent-evaluation)
