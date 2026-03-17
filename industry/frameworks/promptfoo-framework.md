---
title: PromptFoo - Open Source LLM Evaluation and Red Teaming
source: https://github.com/promptfoo/promptfoo
last_updated: 2026-03-17
category: industry/frameworks
tags: [promptfoo, open-source, evaluation-framework, red-teaming, testing, ci-cd]
---

## TL;DR
PromptFoo is an open-source CLI and library (~10.6k GitHub stars) for evaluating and red-teaming LLM applications -- supporting prompt testing, model comparison, automated scoring, and vulnerability scanning with full local execution and CI/CD integration.

## Key Facts
- **Open source**, local-first -- all data stays on your machine, no cloud dependency.
- Supports **50+ LLM providers**: OpenAI, Anthropic, Azure, Google, HuggingFace, Llama, plus custom API integrations.
- **Matrix evaluation views** for side-by-side comparison of multiple prompts and models.
- **Red teaming and pentesting** built in -- automated vulnerability scanning for prompt injection, jailbreaks, and other attacks.
- **Automatic scoring** via customizable metrics, assertions, and evaluation criteria.
- **CI/CD integration**: GitHub Actions, Jest, Vitest, and general pipeline integration.
- Available via `npm`, `pip`, and `brew` -- runs as CLI tool, Node.js library, or CI/CD step.
- Performance optimization through caching, concurrency, and live reloading during development.
- Built-in sharing and web viewer for collaborative review of results.
- **Human-in-the-loop evaluation**: generates results and lets you score them manually in a review dashboard.

## Customer Impact
- PromptFoo fills a gap for teams wanting a free, self-hosted evaluation tool that integrates into existing developer workflows.
- The red teaming capabilities are particularly valuable for security-conscious enterprise customers who need to test prompt injection resistance.
- Local-first execution makes it suitable for customers with strict data residency requirements -- no data leaves the machine.
- The CI/CD integration makes it a natural fit for teams already practicing test-driven development.
- Compared to platforms like Braintrust or LangSmith, PromptFoo trades managed features for full transparency and control.

## Detail

### Key Use Cases
1. **Prompt and model optimization** -- benchmark reliable prompts, models, and RAG pipelines.
2. **Security testing** -- automated red teaming and penetration testing for AI vulnerabilities.
3. **Quality assurance** -- automatically score outputs and evaluate performance across inputs.

### How It Works
The workflow follows five iterative steps:
1. Define test cases (prompts, expected outputs, assertions)
2. Configure evaluation parameters (providers, scoring criteria)
3. Execute assessments across all combinations
4. Analyze results in matrix view or web UI
5. Refine based on findings

### Configuration
Tests are defined in YAML configuration files specifying prompts, providers, and assertions -- making them easy to version control alongside application code.

### Comparison with Other Frameworks

| Feature | PromptFoo | Braintrust | LangSmith | DeepEval |
|---------|-----------|------------|-----------|----------|
| Open source | Yes (MIT) | Partial | No | Yes |
| Local-first | Yes | No | No | Yes |
| Red teaming | Built-in | No | No | Yes |
| CI/CD native | Yes | Yes | Yes | Yes |
| Managed platform | No | Yes | Yes | No |
| Provider support | 50+ | Major providers | LangChain ecosystem | Major providers |

## Sources
- [GitHub: promptfoo/promptfoo](https://github.com/promptfoo/promptfoo)
- [PromptFoo Documentation](https://www.promptfoo.dev/docs/intro/)
- [PromptFoo Red Teaming Guide](https://www.promptfoo.dev/docs/red-team/)
