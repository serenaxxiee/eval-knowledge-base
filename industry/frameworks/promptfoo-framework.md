---
title: PromptFoo - Open Source LLM Evaluation and Red Teaming (Acquired by OpenAI)
source: https://github.com/promptfoo/promptfoo
last_updated: 2026-03-17
category: industry/frameworks
tags: [promptfoo, open-source, evaluation-framework, red-teaming, testing, ci-cd, openai-acquisition]
---

## TL;DR
PromptFoo is an open-source CLI and library for evaluating and red-teaming LLM applications -- supporting prompt testing, model comparison, automated scoring, and vulnerability scanning. On March 9, 2026, OpenAI announced its acquisition of PromptFoo; the tool will remain open source and be integrated into OpenAI Frontier.

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

## OpenAI Acquisition (March 9, 2026)

On March 9, 2026, OpenAI announced the acquisition of PromptFoo. Key details:

- **Scale at acquisition**: 350,000+ developers, 130,000 active monthly users, 25%+ of Fortune 500 companies as customers, 23-person team.
- **Open source commitment**: PromptFoo will remain open source under the current license. OpenAI stated it will "continue to maintain the open-source suite as a best-in-class red teaming, static scanning, and evals tool for any AI model or application."
- **Integration**: PromptFoo's technology will be integrated into **OpenAI Frontier**, OpenAI's platform for building and operating AI coworkers. Automated security testing and red-teaming will become native to Frontier.
- **Multi-provider support preserved**: PromptFoo will continue supporting diverse providers and models.
- **Rationale**: OpenAI cited the need to help "teams catch vulnerabilities early and ship secure AI from the start" as agents become more autonomous.

This acquisition signals that AI security testing and evaluation is becoming a core platform capability rather than a standalone tool category.

## Sources
- [GitHub: promptfoo/promptfoo](https://github.com/promptfoo/promptfoo)
- [PromptFoo Documentation](https://www.promptfoo.dev/docs/intro/)
- [PromptFoo Red Teaming Guide](https://www.promptfoo.dev/docs/red-team/)
- [PromptFoo is joining OpenAI (blog)](https://www.promptfoo.dev/blog/promptfoo-joining-openai/)
- [OpenAI to acquire Promptfoo](https://openai.com/index/openai-to-acquire-promptfoo/)
- [TechCrunch: OpenAI acquires Promptfoo](https://techcrunch.com/2026/03/09/openai-acquires-promptfoo-to-secure-its-ai-agents/)
