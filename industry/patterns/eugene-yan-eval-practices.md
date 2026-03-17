---
title: "Eugene Yan's AI Evaluation Practices"
source: https://eugeneyan.com/writing/product-evals/
last_updated: 2026-03-17
category: industry/patterns
tags: [eugene-yan, evals, product-evals, llm-as-judge, eval-driven-development, scientific-method]
---

## TL;DR
Eugene Yan (Anthropic, ex-Amazon) has published influential practical guidance on AI evaluation -- including a three-step framework for product evals and a scientific method approach to eval-driven development that emphasizes fixing the process over adding tools.

## Key Facts
- **"Product Evals in Three Simple Steps" (Nov 2025)**: Proposes a three-step framework: (1) Label some data, (2) Align LLM evaluators, (3) Run evaluation harness with changes.
- **"An LLM-as-Judge Won't Save The Product -- Fixing Your Process Will" (Apr 2025)**: Core thesis -- evals are practices that apply the scientific method, not static artifacts or quick fixes.
- Recommends **binary pass/fail labels** for objective criteria and **win/lose/tie comparisons** for subjective ones -- avoid 1-5 Likert scales.
- Target **50-100 fail cases** from 200+ total samples for balanced evaluation datasets.
- Use **Cohen's Kappa** to measure evaluator agreement -- target 0.4-0.6 for substantial, 0.7+ for excellent.
- Build **individual evaluators per dimension** rather than "God Evaluators" attempting multiple criteria.
- For win/lose comparisons, run evaluations twice with **swapped positions** to detect position bias.
- Currently Member of Technical Staff at Anthropic; previously at Amazon building recommendation systems.

## Customer Impact
- The three-step framework is the simplest, most actionable guide for teams building their first evaluation pipeline.
- The binary labeling recommendation aligns with Copilot Studio's pass/fail grading approach.
- The Cohen's Kappa targets give teams concrete goals for evaluator quality.
- The "fix your process, not your tools" message is important for customers who want to buy their way to quality.
- The four-week investment example (enabling dozens of experiments in two weeks) helps justify eval infrastructure investment.

## Detail

### Three-Step Product Eval Framework

**Step 1: Label Some Data**
- Sample real inputs and outputs from LLM requests
- Annotate whether outputs meet evaluation criteria
- Use binary pass/fail for objective criteria, win/lose/tie for subjective
- Target 50-100 fail cases from 200+ total samples
- Generate organic failures using less capable models rather than synthetic defects
- Consider active learning to identify likely failures in unlabeled data

**Step 2: Align LLM Evaluators**
- Create prompt templates assessing inputs/outputs against single evaluation dimensions
- Treat as standard ML problem with train/test splits (75/25)
- Build individual evaluators per dimension -- avoid "God Evaluators"
- For win/lose comparisons, swap positions and use XML tags to detect position bias
- Evaluate using precision, recall, and Cohen's Kappa against human labels
- Target Cohen's Kappa of 0.4-0.6 (substantial) to 0.7+ (excellent)
- Benchmark against human performance, not perfection

**Step 3: Run Evaluation Harness with Changes**
- Integrate evaluators into automated pipeline
- Parallelize evaluations and aggregate results into simple reports
- Export metrics as single-row dataframes for stakeholder sharing
- Connect directly to experiment pipelines for tight feedback loops
- Calculate sample size based on statistical confidence needs (400 samples > 200 for tighter confidence intervals)

### Scientific Method for AI Products ("Fixing Your Process")

Five-step cyclical process:
1. **Observation** -- examine inputs, AI outputs, and user interactions to identify failures
2. **Annotation** -- label representative datasets with ~50:50 pass/fail splits
3. **Hypothesization** -- analyze failure patterns using retrieved documents and reasoning traces
4. **Experimentation** -- test hypotheses through prompt rewrites, component updates, or model changes
5. **Measurement and Analysis** -- quantify whether experiments improved outcomes

### Eval-Driven Development (EDD)
Similar to test-driven development: establish success criteria before building features, evaluate baselines, then iterate continuously measuring each change's impact objectively.

### Real-World Impact
A team that invested 4 weeks in evaluation infrastructure was able to run dozens of experiments within two weeks, and hundreds more over months -- work that would have been impossible with manual human annotation bottlenecks.

## Sources
- [Product Evals in Three Simple Steps](https://eugeneyan.com/writing/product-evals/)
- [An LLM-as-Judge Won't Save The Product -- Fixing Your Process Will](https://eugeneyan.com/writing/eval-process/)
- [Evaluating Long-Context Question and Answer Systems](https://eugeneyan.com/writing/qa-evals/)
- [Eugene Yan's eval tag](https://eugeneyan.com/tag/eval/)
