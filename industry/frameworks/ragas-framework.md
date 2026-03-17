---
title: Ragas Evaluation Framework
source: https://docs.ragas.io/en/stable/
last_updated: 2026-03-17
category: industry/frameworks
tags: [ragas, rag-evaluation, retrieval-augmented-generation, llm-metrics, open-source]
---

## TL;DR
Ragas (Retrieval Augmented Generation Assessment) is an open-source Python framework for evaluating RAG pipelines and LLM applications, offering reference-free LLM-driven metrics, custom metric creation, and integration with major AI frameworks.

## Key Facts
- **What it is**: Open-source evaluation framework specializing in RAG pipeline assessment, with broader LLM evaluation capabilities.
- **Key innovation**: Reference-free evaluation -- uses LLMs under the hood instead of requiring human-annotated ground truth labels.
- **Experiments-first methodology**: Emphasizes systematic experimentation and continuous improvement loops.
- **Installation**: `pip install ragas`
- **Academic basis**: Published as a research paper (arXiv:2309.15217).

### Available Metrics

| Category | Metrics |
|----------|---------|
| **RAG Core** | Context Precision, Context Recall, Response Relevancy, Faithfulness |
| **Agent/Tool Use** | Tool Call Accuracy, Agent Goal Accuracy, Topic Adherence |
| **Comparison** | Factual Correctness, Semantic Similarity |
| **General Purpose** | Aspect Critic, Rubrics-Based Scoring |
| **Traditional NLP** | BLEU, ROUGE, CHRF, Exact Match |
| **SQL** | Query Equivalence, Execution-based metrics |

### Integrations
- LangChain, LlamaIndex, LangGraph, Griptape
- OpenAI, Anthropic Claude, Google Gemini, Ollama (local models)
- Langfuse for observability

## Customer Impact
- Ragas is the go-to framework for teams evaluating RAG pipelines -- its metrics (Faithfulness, Context Precision, Context Recall, Response Relevancy) map directly to the key failure modes of RAG systems.
- The reference-free approach is significant: teams can start evaluating without first creating expensive human-annotated ground truth datasets.
- Custom metric creation via decorators lets teams define domain-specific evaluation criteria.
- The framework is particularly strong for RAG but has expanded to cover agents (Tool Call Accuracy, Agent Goal Accuracy) and general LLM evaluation.

## Detail

### Core RAG Metrics Explained

**Faithfulness**: Measures whether the generated answer is grounded in the retrieved context. Catches hallucinations where the model generates information not present in the source documents.

**Answer Relevancy**: Measures whether the generated answer actually addresses the user's question. Catches cases where the model produces a well-formed but off-topic response.

**Context Precision**: Measures whether the retrieved context contains information relevant to the question. Evaluates retrieval quality -- are we fetching the right documents?

**Context Recall**: Measures whether all the information needed to answer the question was retrieved. Catches cases where relevant documents were missed by the retriever.

### How It Works
1. **Prepare your dataset** -- define queries, retrieved contexts, generated responses, and optionally ground truth answers.
2. **Select metrics** -- choose from pre-built metrics or create custom ones.
3. **Run evaluation** -- Ragas uses LLMs to compute scores for each metric.
4. **Analyze results** -- review per-sample and aggregate scores to identify weak points.

### Custom Metrics
Ragas supports custom metric creation via Python decorators and a pre-built metric library. This lets teams define evaluation criteria specific to their domain without modifying the framework core.

### Agent Evaluation
Beyond RAG, Ragas supports agent evaluation through:
- **Tool Call Accuracy**: Did the agent call the right tools with the right parameters?
- **Agent Goal Accuracy**: Did the agent achieve the intended goal?
- **Topic Adherence**: Did the agent stay on topic throughout the interaction?

## Sources
- [Ragas Documentation](https://docs.ragas.io/en/stable/)
- [Ragas Getting Started](https://docs.ragas.io/en/latest/getstarted/evals/)
- [Ragas Available Metrics](https://docs.ragas.io/en/stable/concepts/metrics/available_metrics/)
- [Ragas Paper (arXiv:2309.15217)](https://arxiv.org/abs/2309.15217)
- [GitHub: Ragas](https://github.com/vibrantlabsai/ragas)
