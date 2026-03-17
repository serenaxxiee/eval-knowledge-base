---
title: Copilot Studio Evaluation Graders
source: https://learn.microsoft.com/en-us/microsoft-copilot-studio/analytics-agent-evaluation-overview
last_updated: 2026-03-17
category: microsoft/copilot-studio
tags: [copilot-studio, graders, evaluation-methods, keyword-match, compare-meaning, general-quality, custom-classification]
---

## TL;DR
Copilot Studio offers seven evaluation graders -- General Quality, Compare Meaning, Tool Use, Keyword Match, Text Similarity, Exact Match, and Custom -- each measuring a different dimension of agent response quality.

## Key Facts
- **General Quality**: AI-assisted, scores 0-100%, no expected answer needed. Evaluates Relevance, Groundedness, Completeness, and Abstention.
- **Compare Meaning**: AI-assisted, scores 0-100% with configurable pass threshold (default 50). Compares semantic intent, not exact wording.
- **Tool Use**: Pass/fail. Checks whether the agent triggered the expected tools or topics during processing.
- **Keyword Match**: Pass/fail. Checks if response contains specified keywords/phrases. Configurable as "Any" or "All" match mode.
- **Text Similarity**: Scores 0-100% using cosine similarity. Compares textual similarity of response to expected answer. Not available in GCC environments.
- **Exact Match**: Pass/fail. Character-for-character comparison. Best for short, precise answers (codes, numbers, fixed phrases).
- **Custom (Classification)**: Pass/fail per label. You define evaluation instructions in natural language and create custom labels (e.g., "Compliant" / "Non-Compliant").

## Customer Impact
- **Start with General Quality** -- it requires no expected answers, making it the fastest way to get initial signal on agent performance.
- **Layer in Compare Meaning** when you have expected answers but the exact phrasing may vary (most real-world scenarios).
- **Use Keyword Match** to enforce that specific terms appear in responses (e.g., product names, policy numbers, required disclaimers).
- **Use Custom graders** for domain-specific compliance checks -- define your criteria in natural language and let the AI classify responses. This is powerful for HR compliance, legal disclaimers, tone checks, and similar use cases.
- **Use Exact Match** sparingly -- only for responses where exact character matching is appropriate (e.g., codes, IDs).
- **Combine multiple graders** on the same test set for multi-dimensional assessment.

## Detail

### General Quality (Default Grader)
Added to all test sets by default. Uses a language model to assess four criteria:

| Criterion | What It Checks |
|-----------|---------------|
| **Relevance** | Does the response stay on subject and directly answer the question? |
| **Groundedness** | Is the response based on provided context rather than introducing unsupported information? |
| **Completeness** | Does the response cover all aspects and provide sufficient detail? |
| **Abstention** | Did the agent attempt to answer the question? |

A response must meet all criteria to receive a high score. If any criterion fails, the response is flagged for improvement.

### Compare Meaning
Compares the semantic intent of the agent's response against an expected answer. Does not require exact wording -- evaluates whether the same ideas and meaning come through. The default pass threshold is 50%, configurable per test set.

Best used when answers can be phrased in multiple correct ways but the core meaning must be preserved.

### Tool Use
Verifies that the agent invoked the expected tools, topics, or connectors during execution. Useful for testing that your agent routes to the correct backend systems.

### Keyword Match
Checks for presence of specified keywords or phrases. Two modes:
- **Any**: At least one keyword must appear (logical OR).
- **All**: Every specified keyword must appear (logical AND).

### Text Similarity
Uses cosine similarity to compare the agent's response against the expected answer. Scores range from 0 to 1. Useful when both wording and meaning matter. Not available in GCC environments.

### Exact Match
Strict character-by-character comparison. Best for:
- Numeric answers (e.g., "42")
- Reference codes or IDs
- Fixed phrases that must be reproduced exactly

### Custom (Classification Grader)
The most flexible grader. You provide:
1. **Evaluation instructions** -- natural language description of what to evaluate (e.g., "Evaluate the agent's response for HR policy compliance").
2. **Labels** -- two or more labels with names, descriptions, and pass/fail assignments (e.g., "Compliant" = Pass, "Non-Compliant" = Fail).

Tips for good evaluation instructions:
- Be goal-oriented
- Use bullet points and headings
- Describe what to check in specific terms

## Sources
- [Choose evaluation methods - Copilot Studio](https://learn.microsoft.com/en-us/microsoft-copilot-studio/analytics-agent-evaluation-overview)
- [How to evaluate AI agents in Copilot Studio (blog)](https://www.microsoft.com/en-us/microsoft-copilot/blog/copilot-studio/how-to-evaluate-ai-agents/)
- [Build smarter, test smarter (blog)](https://www.microsoft.com/en-us/microsoft-copilot/blog/copilot-studio/build-smarter-test-smarter-agent-evaluation-in-microsoft-copilot-studio/)
