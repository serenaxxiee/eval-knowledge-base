---
title: "Shreya Shankar's AI Evaluation Practices"
source: https://www.sh-reya.com/blog/in-defense-ai-evals/
last_updated: 2026-03-17
category: industry/patterns
tags: [shreya-shankar, evals, ai-evals-course, llm-as-judge, validator-alignment, error-analysis]
---

## TL;DR
Shreya Shankar (UC Berkeley researcher, co-creator of the most popular AI evals course) argues that systematic evaluation is essential for building lasting AI products -- evals live on a spectrum, and dismissing them harms newer teams who need structured measurement tools.

## Key Facts
- **"In Defense of AI Evals, for Everyone" (Sep 2025)**: Counters growing "anti-evals" sentiment, arguing evals are "the systematic measurement of application quality" and successful products already conduct them whether or not they call it that.
- Co-teaches the **AI Evals for Engineers and PMs** course on Maven with Hamel Husain -- 2,000+ students from 300+ companies including teams at OpenAI and Anthropic.
- O'Reilly will publish the companion book in **Spring 2026**.
- Research paper: **"Who Validates the Validators?"** -- addresses the core challenge of aligning LLM-assisted evaluation with human preferences.
- Key insight: Teams can reduce eval rigor when (1) their task is well-represented in posttraining data, or (2) team members have sufficient domain expertise for continuous dogfooding.
- Key insight: Evals live on a **spectrum** -- there is no one-size-fits-all methodology.
- Course covers: error analysis of LLM agents, trustworthy LLM-as-judge evaluation, identifying specification vs. model capability bottlenecks, and scaling analysis.

## Customer Impact
- The "anti-evals" rebuttal is useful for conversations with customers who push back on evaluation effort -- Shankar makes the case that skipping evals hurts newer teams most.
- The "spectrum" framing helps customers right-size their evaluation effort rather than over-engineering or under-investing.
- The "specification vs. model capability" bottleneck framework helps diagnose whether the problem is unclear requirements or insufficient model performance.
- The upcoming O'Reilly book (Spring 2026) will be a useful reference for customer teams building evaluation practices.
- Co-authored "LLM Evals: Everything You Need to Know" FAQ with Hamel Husain -- see the Hamel Husain entry for detailed coverage.

## Detail

### Core Arguments ("In Defense of AI Evals")

1. **Evals are ubiquitous** -- every successful product already does evaluation throughout its lifecycle, whether or not teams explicitly label it as "evals."

2. **Foundation model providers lead the way** -- major AI providers invest heavily in task-specific evaluations (math, coding, instruction-following), and their upstream work benefits application builders.

3. **Rigor can be contextual** -- teams can reduce rigor when their task is well-represented in posttraining data or when team members have enough domain expertise to guide development through dogfooding and error analysis.

4. **Anti-eval sentiment is harmful** -- dismissing evals damages newer teams lacking data analysis backgrounds. These builders need systematic measurement tools to understand what works.

5. **Evals are tools, not dogma** -- they live on a spectrum with no one-size-fits-all methodology.

### Research Contributions

**"Who Validates the Validators?"** -- builds an interface to align LLM-based evaluators with user preferences, highlighting the fundamental challenge: LLMs evaluate other LLMs, but "who validates the validators?" The paper proposes techniques for calibrating automated evaluators against human judgment.

### Course Methodology
The AI Evals course covers:
- How to identify whether you are bottlenecked by **specification** (unclear requirements) or by **model capability** (model can't do what you need)
- How to do **error analysis** that produces actionable insights
- How to **scale analysis** with tools like LLM-as-Judge
- Multi-turn and collaborative evaluation techniques

## Sources
- [In Defense of AI Evals, for Everyone](https://www.sh-reya.com/blog/in-defense-ai-evals/)
- [AI Evals For Engineers and PMs (Maven course)](https://maven.com/parlance-labs/evals)
- [LLM Evals: Everything You Need to Know (FAQ, with Hamel Husain)](https://hamel.dev/blog/posts/evals-faq/)
- [Shreya Shankar's papers](https://www.sh-reya.com/papers/)
