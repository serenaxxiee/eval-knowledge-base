---
title: "Jason Wei's Principles for Successful LLM Evaluations"
source: https://www.jasonwei.net/blog/evals
last_updated: 2026-03-17
category: industry/patterns
tags: [jason-wei, evals, eval-design, benchmarks, research, evaluation-principles]
---

## TL;DR
Jason Wei (ex-OpenAI, ex-Google Brain, known for chain-of-thought and emergence research) outlines seven principles for designing evaluations that actually get adopted -- drawing from experience creating widely-used benchmarks like MGSM and BBH.

## Key Facts
- Created two widely-used eval benchmarks: **MGSM** (multilingual grade school math, used by OpenAI/Claude/Gemini) and **BBH** (BIG-Bench Hard, used in Claude/Gemini/Llama).
- Seven eval design principles: sufficient sample size, quality control, simplicity, practical implementation, meaningful tasks, accurate grading, and performance trajectory.
- Core insight: **"A single-number metric is critical"** to maximize eval adoption and comprehension across teams.
- Core insight: **"Grading errors cause researchers to dismiss evals immediately"** -- accuracy of evaluation is paramount.
- Recommends **1,000+ examples** to avoid noisy results that fluctuate across model checkpoints.
- Current LLM evals still use very simple grading: multiple choice, checking a number, or running unit tests -- because LLMs' massive multi-task nature and long responses make evaluation substantially harder.
- Advocates maintaining both **public and private test sets** to detect model overfitting to leaked examples (contamination).

## Customer Impact
- The seven principles apply beyond research benchmarks -- they're relevant for any team designing evaluation test sets for production agents.
- The "single-number metric" principle helps customers avoid evaluation dashboard overload.
- The 1,000+ sample size recommendation provides a research-grounded target (though smaller sets are fine for initial stages per other guidance).
- The grading accuracy principle reinforces why Copilot Studio's built-in graders are valuable -- well-tested grading reduces dismissal risk.
- The contamination concern (public vs. private test sets) is relevant for customers whose agents may have been trained on publicly available test data.

## Detail

### Seven Principles for Successful Eval Design

**1. Sample Size**
Evals require sufficient examples (1,000+) to avoid noisy results that fluctuate across model checkpoints. Small sample sizes create unreliable signals.

**2. Quality Control**
High-quality, error-free evaluations build community (and team) trust. Poor ground truth undermines credibility -- if the expected answer is wrong, the whole eval loses value.

**3. Simplicity**
A single-number metric is critical to maximize adoption. If people have to study a complex reporting system to understand results, they won't use the eval.

**4. Practical Implementation**
Evals requiring excessive computational resources or complex infrastructure fail to gain traction. They should be easy to run.

**5. Meaningful Tasks**
Successful evals measure substantive intelligence dimensions like reasoning, coding, or language understanding -- not trivial checks.

**6. Accurate Grading**
Grading errors cause people to dismiss evals immediately. When disputes arise about whether a correct answer was marked wrong, trust erodes quickly.

**7. Performance Trajectory**
Evals must sustain differentiation over time. Premature saturation (like GLUE, where models maxed out quickly) limits utility for measuring continued improvement.

### Additional Recommendations

- **Community support**: Actively help others run evals and publicize results to encourage adoption.
- **Organizational buy-in**: Secure manager endorsement to drive team-wide usage.
- **Standardized prompting**: The field should converge on consistent approaches (like zero-shot chain-of-thought) for fair comparison.
- **Contamination mitigation**: Maintain both public and private test sets to detect when models have been trained on test data.
- **Domain awareness**: Domain-specific evals naturally reach smaller audiences than general-purpose benchmarks -- that's expected.

### Context: The State of LLM Evaluation
Wei notes that LLMs have made evaluation substantially harder because they are massively multi-task and give long responses. There is currently no single eval that adequately evaluates LLMs, and popular evals still use simple grading methods. This is an open problem in the field.

## Sources
- [Successful language model evals (Jason Wei's blog)](https://www.jasonwei.net/blog/evals)
- [Jason Wei's homepage](https://www.jasonwei.net/)
