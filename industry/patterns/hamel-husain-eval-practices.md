---
title: "Hamel Husain's AI Evaluation Practices"
source: https://hamel.dev/blog/posts/evals/
last_updated: 2026-03-17
category: industry/patterns
tags: [hamel-husain, evals, best-practices, llm-judge, critique-shadowing, error-analysis, eval-tools]
---

## TL;DR
Hamel Husain (ML engineer, ex-GitHub/Airbnb) has published the most influential practitioner-focused body of work on AI evaluation -- covering a three-level eval framework, a "Critique Shadowing" methodology for building LLM judges, and practical tool selection criteria. Co-teaches the world's most popular AI evals course with Shreya Shankar (2,000+ students including teams at OpenAI and Anthropic).

## Key Facts
- **"Your AI Product Needs Evals" (Mar 2024)**: Core thesis -- unsuccessful AI products almost universally lack robust evaluation systems. Proposes a three-level framework: Level 1 (Unit Tests), Level 2 (Human + Model Evaluation), Level 3 (A/B Testing).
- **"Using LLM-as-a-Judge: A Complete Guide" (Oct 2024)**: Introduces "Critique Shadowing" -- a seven-step process for building trustworthy LLM judges based on experience with 30+ companies.
- **"Selecting The Right AI Evals Tool" (Oct 2025)**: Reviews LangSmith, Braintrust, and Arize Phoenix against four criteria: workflow/DX, human-in-the-loop, transparency vs. automation, ecosystem integration.
- **"LLM Evals: Everything You Need to Know" (Jan 2026, with Shreya Shankar)**: Comprehensive FAQ recommending 60-80% of development time on error analysis and evaluation.
- Key principle: **Use binary pass/fail judgments**, not Likert scales (1-5).
- Key principle: **Error analysis is the highest ROI activity** in AI engineering.
- Key principle: Build custom annotation tools -- teams with tailored interfaces iterate ~10x faster.

## Customer Impact
- Husain's work is widely cited and provides the most practical, battle-tested guidance for teams starting their eval journey.
- The "Critique Shadowing" method is directly applicable to building custom graders in Copilot Studio or any platform.
- The binary pass/fail recommendation aligns with Copilot Studio's grading approach and simplifies evaluation design.
- The tool selection criteria (workflow/DX, human-in-the-loop, transparency, ecosystem) can help customers evaluate Copilot Studio's built-in eval against third-party alternatives.
- The 60-80% time allocation recommendation helps teams set realistic expectations for evaluation effort.

## Detail

### Three-Level Evaluation Framework ("Your AI Product Needs Evals")

**Level 1: Unit Tests**
Scoped assertions organized by feature and scenario. Examples: verifying result counts, checking for exposed UUIDs, validating formatting. Run cheaply and frequently during development.

**Level 2: Human and Model Evaluation**
Log traces through observability tools, then examine systematically. Human labelers provide ground truth; LLM evaluators critique outputs and should be validated against human judgment using precision and recall.

**Level 3: A/B Testing**
Real-world user experiments for mature products. Requires sufficient traffic and clear success metrics.

### Critique Shadowing Method ("Using LLM-as-a-Judge")

Seven-step iterative process:
1. **Find the principal domain expert** -- one person with deep subject matter knowledge.
2. **Create a diverse dataset** -- structured across features, scenarios, and personas.
3. **Domain expert makes pass/fail judgments with detailed critiques** -- binary decisions force focus on what truly matters.
4. **Fix obvious errors** before building the judge.
5. **Build LLM judge iteratively** -- use expert examples as few-shot prompts, test agreement, refine.
6. **Perform error analysis** -- calculate failure rates across dimensions, classify by root cause.
7. **Create specialized judges** only after understanding where problems exist.

Key insight: "It's not the judge that created value. The real benefits emerge from carefully examining data and conducting rigorous analysis."

### Eval Tool Selection Criteria ("Selecting The Right AI Evals Tool")

Four assessment dimensions:
1. **Workflow and Developer Experience** -- reduce friction from finding failures to fixing them.
2. **Human-in-the-Loop Support** -- tools should empower, not replace, human judgment.
3. **Transparency vs. Automation** -- beware "stacking of abstractions" where AI creates and scores its own evaluations.
4. **Ecosystem Integration** -- complement existing tech stacks, avoid proprietary lock-in.

Husain's personal approach: use eval platforms as backend data stores while conducting analysis through Jupyter notebooks and custom annotation interfaces.

### Key Recommendations from "LLM Evals FAQ" (with Shreya Shankar)

- Spend **60-80% of development time** on error analysis and evaluation.
- Start with **manual review of 20-50 outputs**, then perform open coding and axial coding of failures.
- Build evaluators only **after discovering persistent failures** worth iterating on.
- Favor binary pass/fail over Likert scales for clarity and consistency.
- Appoint a single **"benevolent dictator"** domain expert as quality decision-maker.
- RAG systems: treat retrieval and generation as **separate evaluation problems**.
- Agentic workflows: start with **end-to-end task success** (black box), then do step-level diagnostics.
- A 70% pass rate may indicate more meaningful stress-testing than 100%.

## Sources
- [Your AI Product Needs Evals](https://hamel.dev/blog/posts/evals/)
- [Using LLM-as-a-Judge For Evaluation: A Complete Guide](https://hamel.dev/blog/posts/llm-judge/)
- [Selecting The Right AI Evals Tool](https://hamel.dev/blog/posts/eval-tools/)
- [LLM Evals: Everything You Need to Know (FAQ)](https://hamel.dev/blog/posts/evals-faq/)
- [AI Evals For Engineers and PMs (Maven course)](https://maven.com/parlance-labs/evals)
