---
title: "Rubrics Refinement in Copilot Studio Kit"
source: https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/kit-rubrics-overview
last_updated: 2026-03-17
category: microsoft/copilot-studio
tags: [copilot-studio, copilot-studio-kit, rubrics, evaluation, ai-judge, alignment]
---

## TL;DR
Rubrics refinement is a new feature in Copilot Studio Kit (March 2026) that provides an iterative workflow for creating, testing, and improving evaluation rubrics so that AI grading aligns with human judgment -- the goal is minimizing misalignment, not maximizing scores.

## Key Facts
- **Released**: March 2026 in the Copilot Studio guidance hub.
- **What it is**: A structured workflow for defining natural-language grading rubrics used by an AI judge (LLM) to evaluate agent responses.
- **Core concept**: A rubric includes a description of "what a good response looks like," grade definitions on a 5-point scale, and optional good/bad examples.
- **Key goal**: Minimize misalignment between AI and human graders -- not to get all responses graded as 5 (Exemplary).
- **Two modes**: Testing mode (assign rubric per test case for ongoing QA) and Refinement mode (assign rubric per test run to iteratively improve the rubric itself).
- **Iterative process**: Define rubric, run tests, compare AI vs. human grades, mark examples, refine rubric with AI analysis, repeat.
- **Refinement views**: Standard view (AI grades hidden to avoid bias) and Full view (AI grades visible).

## Customer Impact
- This is the first structured rubric management system built into the Copilot Studio ecosystem -- teams no longer need to build custom grading infrastructure.
- The alignment-focused approach (matching AI to human judgment) echoes best practices from Hamel Husain's "Critique Shadowing" and Eugene Yan's "Who Validates the Validators" work.
- Rubrics are reusable across multiple agents and test runs, creating durable organizational evaluation standards.
- The two-mode design separates the concern of "is this rubric good?" (refinement mode) from "does this agent pass?" (testing mode).
- Planned future features include auto-generating test sets from conversation transcripts and rubric governance (approvals, lifecycle, publishing).

## Detail

### How Rubrics Refinement Works

1. **Define** an initial rubric with evaluation criteria and grade definitions (1-5 scale).
2. **Run tests** using the rubric to generate AI grades.
3. **Review** agent responses and provide human grades independently.
4. **Compare** AI and human assessments to identify misalignment.
5. **Mark examples** as good or bad to guide refinement.
6. **Refine** the rubric using AI analysis of misalignment patterns.
7. **Re-run tests** with the updated rubric.
8. **Repeat** until alignment is acceptable.

### AI Grading vs. Human Grading

- **AI grading**: AI judge uses rubric to generate grade (1-5) and rationale explaining assessment.
- **Human grading**: Human evaluator independently grades same responses (1-5) with reasoning.
- **Alignment**: When AI and human grades match, the rubric works as intended.
- **Misalignment**: When they differ, the rubric needs improvement.

### Who Should Use This

- Quality assurance teams establishing consistent evaluation standards
- Makers creating reliable automated tests
- Enterprise organizations defining domain-specific quality standards
- Teams building trust in automated grading for critical use cases

### Planned Future Features
- Auto-generate test sets from conversation transcripts
- Enhanced diagnostics and analytics
- Rubric governance (approvals, lifecycle, publishing)
- Improved dedicated rubrics refinement interface

## Sources
- [Rubrics refinement in Copilot Studio Kit](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/kit-rubrics-overview)
- [Create and manage evaluation rubrics](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/kit-rubrics-manage)
- [Use rubrics in tests](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/kit-rubrics-tests)
- [Rubric refinement workflow](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/kit-rubrics-refinement-workflow)
- [Best practices and tips](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/kit-rubrics-best-practices)
- [Rubrics reference guide](https://learn.microsoft.com/en-us/microsoft-copilot-studio/guidance/kit-rubrics-reference)
