---
title: DeepEval LLM Evaluation Framework
source: https://deepeval.com/docs/getting-started
last_updated: 2026-03-17
category: industry/frameworks
tags: [deepeval, llm-evaluation, open-source, confident-ai, testing, red-teaming]
---

## TL;DR
DeepEval is an open-source LLM evaluation framework by Confident AI that provides 50+ metrics, Pytest-like unit testing for LLM applications, synthetic data generation, red-teaming capabilities, and a cloud platform for collaborative evaluation management.

## Key Facts
- **What it is**: Open-source Python framework for evaluating LLM applications, designed like Pytest but for AI.
- **Installation**: `pip install -U deepeval`
- **50+ metrics** covering RAG, agents, chatbots, and general use cases -- all multi-modal.
- **LLM-as-a-judge**: Core evaluation approach, including G-Eval (chain-of-thought prompting for custom criteria).
- **Synthetic data generation** using state-of-the-art evolution techniques.
- **Red-teaming**: Security scanning for vulnerabilities in LLM applications.
- **Evaluation modes**: End-to-end and component-level evaluation.
- **Conversational testing**: Multi-turn interaction evaluation support.
- **Tracing**: Non-intrusive `@observe` decorators for production monitoring.
- **LLM support**: OpenAI, Azure OpenAI, Anthropic, Gemini, Ollama, and custom models.
- **Framework integration**: OpenAI Agents, LangChain, CrewAI, and more.
- **Cloud platform**: Confident AI for regression testing, production monitoring, prompt optimization, and annotation management.

## Customer Impact
- DeepEval's Pytest-like interface makes it the most developer-friendly eval framework -- teams familiar with unit testing can adopt it quickly.
- The G-Eval metric is particularly powerful: define any custom evaluation criteria in natural language and get scored results using chain-of-thought reasoning.
- Red-teaming capabilities are a differentiator -- security scanning for LLM vulnerabilities is built in rather than requiring a separate tool.
- The component-level evaluation via `@observe` decorators helps teams identify exactly which part of their pipeline is underperforming.
- Runs locally by default, which is important for teams with data privacy requirements.

## Detail

### Key Metrics

**LLM-as-Judge Metrics:**
- G-Eval (custom criteria via CoT)
- Answer Relevancy
- Faithfulness
- Hallucination detection
- Task Completion
- Contextual Precision / Recall / Relevancy
- Summarization
- Bias and Toxicity detection

**NLP Metrics:**
- BLEU, ROUGE, METEOR
- BERTScore
- Exact Match

### How It Works

```python
from deepeval import assert_test
from deepeval.test_case import LLMTestCase
from deepeval.metrics import GEval

# Define a custom metric
coherence_metric = GEval(
    name="Coherence",
    criteria="Coherence - the response should be logically structured and easy to follow",
    evaluation_params=["actual_output"],
)

# Create a test case
test_case = LLMTestCase(
    input="What is the capital of France?",
    actual_output="Paris is the capital of France.",
)

# Assert the test passes
assert_test(test_case, [coherence_metric])
```

### G-Eval: Custom LLM-as-Judge
G-Eval implements the research paper's approach of using LLM-as-judge with chain-of-thought (CoT) prompting. You define:
1. **Name**: What this metric measures.
2. **Criteria**: Natural language description of evaluation criteria.
3. **Evaluation parameters**: Which test case fields to evaluate.

The LLM generates evaluation steps via CoT, then scores the output. This makes it possible to evaluate against ANY custom criteria without writing scoring logic.

### Red-Teaming
DeepEval can scan LLM applications for security vulnerabilities including:
- Prompt injection attacks
- Jailbreak attempts
- Information leakage
- Bias and toxicity in outputs

### Confident AI (Cloud Platform)
The optional cloud platform provides:
- Centralized evaluation result tracking
- Regression testing across versions
- Production monitoring dashboards
- Collaborative annotation management
- Prompt optimization tools

## Sources
- [DeepEval Getting Started](https://deepeval.com/docs/getting-started)
- [DeepEval Metrics Introduction](https://deepeval.com/docs/metrics-introduction)
- [DeepEval G-Eval](https://deepeval.com/docs/metrics-llm-evals)
- [GitHub: confident-ai/deepeval](https://github.com/confident-ai/deepeval)
- [Confident AI Platform](https://www.confident-ai.com/)
