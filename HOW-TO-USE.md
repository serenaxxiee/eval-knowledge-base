# How to Use the Eval Knowledge Bases

Two repos work together to give you a complete picture of the AI agent evaluation landscape:

- **Public KB** (`eval-knowledge-base`) — Microsoft docs, industry frameworks, concepts, practitioner patterns
- **Internal KB** (`eval-knowledge-base-internal`) — Competitive positioning, talk tracks, customer patterns, known limitations

---

## 1. Ask Claude Code Directly (Most Powerful)

Since both repos have `CLAUDE.md` files, just `cd` into them and ask questions:

```bash
# Public KB — industry and Microsoft eval knowledge
cd ~/eval-knowledge-base
claude
# Then ask: "What graders does Copilot Studio support?"
# Or: "Compare Braintrust vs LangSmith vs Ragas"
# Or: "What does Hamel Husain say about eval design?"

# Internal KB — competitive, talk tracks, limitations
cd ~/eval-knowledge-base-internal
claude
# Then ask: "Give me a talk track for a customer who says they don't have time for evals"
# Or: "What are the known limitations of Copilot Studio eval?"
# Or: "How does Patronus AI position against us?"
```

Claude will search the KB files, read them, and synthesize answers with sources.

## 2. Use Both KBs as Context from Any Directory

```bash
# Reference KB files from wherever you are
claude "Read ~/eval-knowledge-base/microsoft/copilot-studio/evaluation-graders.md and summarize the 7 graders"

# Or use them as input for other work
claude "Using ~/eval-knowledge-base-internal/field/talk-tracks/eval-adoption-objections.md, draft an email to a customer who pushed back on eval investment"
```

## 3. Feed into the Field Enablement Deck

From your deck project directory:

```bash
cd "/c/Users/serenaxie/OneDrive - Microsoft/M365 CAPE-Agent FDE  Core Team (formerly Project Ninja) - Documents/Evals/agent_evaluation_field_enablement"
claude
# Then: "Read ~/eval-knowledge-base-internal/field/competitive/braintrust-vs-enterprise-eval.md
#         and update slide 22 speaker notes with competitive context"
# Or: "Check ~/eval-knowledge-base/microsoft/copilot-studio/evaluation-iterative-framework.md
#       against the Jordan walkthrough slides for accuracy"
```

## 4. Search Locally (Terminal)

```bash
# Find all files about a topic
grep -rl "quality signals" ~/eval-knowledge-base/
grep -rl "multi-turn" ~/eval-knowledge-base-internal/

# Read any file directly
cat ~/eval-knowledge-base/industry/patterns/hamel-husain-eval-practices.md
cat ~/eval-knowledge-base-internal/field/talk-tracks/vibe-checks-vs-systematic.md

# See what's new — read today's changelog
cat ~/eval-knowledge-base/changelog/2026-03-17.md
cat ~/eval-knowledge-base-internal/changelog/2026-03-17.md

# List everything in a category
ls ~/eval-knowledge-base/industry/frameworks/
ls ~/eval-knowledge-base-internal/field/competitive/
```

## 5. Browse on GitHub

- **Public**: https://github.com/serenaxxiee/eval-knowledge-base — shareable with anyone
- **Internal**: https://github.com/serenaxxiee/eval-knowledge-base-internal — keep private

GitHub renders the markdown nicely, and you can use GitHub's search bar to find content across all files.

## 6. Run the Daily Research

```bash
# Manual run — just tell Claude Code:
eval-daily

# Or run the scripts directly:
bash ~/eval-knowledge-base/scripts/research.sh
bash ~/eval-knowledge-base-internal/scripts/research-internal.sh

# Automatic — already scheduled via Windows Task Scheduler:
# 6:00 AM daily → public KB research
# 6:15 AM daily → internal KB research (picks up flagged items from public run)
```

## 7. Prep for Customer Conversations

```bash
cd ~/eval-knowledge-base-internal
claude
```

Then ask things like:

- "I have a meeting with a customer who uses LangSmith. What should I know?"
- "Customer says their agent is too simple for evaluation. Give me a response."
- "What maturity stage is a customer at if they only do manual testing?"
- "Draft 3 discovery questions about their current eval approach"

## 8. Share the Public KB with Colleagues

The public repo is safe to share. Teammates can:

- **Clone it**: `git clone https://github.com/serenaxxiee/eval-knowledge-base`
- **Browse on GitHub** for quick lookups
- **Use it as Claude Code context** in their own sessions
- **Pull daily** to stay current (it auto-updates)

## 9. Cross-Reference Between KBs

The KBs are designed to work together:

| Need | Use |
|------|-----|
| "What does this tool do?" | Public KB — `industry/frameworks/` |
| "How does it compare to us?" | Internal KB — `field/competitive/` |
| "What's the official MS guidance?" | Public KB — `microsoft/copilot-studio/` |
| "What are the gaps in our tooling?" | Internal KB — `microsoft-internal/known-limitations/` |
| "How do I talk about this to customers?" | Internal KB — `field/talk-tracks/` |
| "What do industry experts recommend?" | Public KB — `industry/patterns/` |

---

## Content Structure

### Public KB Folders

```
microsoft/copilot-studio/    — Official Copilot Studio eval docs
microsoft/azure-ai-eval-sdk/ — Azure AI Evaluation SDK
industry/frameworks/          — Braintrust, LangSmith, Ragas, DeepEval, PromptFoo
industry/patterns/            — Practitioner advice (Husain, Yan, Shankar, Wei)
concepts/                     — LLM-as-judge, best practices
changelog/                    — Daily research logs
```

### Internal KB Folders

```
field/competitive/            — Tool-by-tool positioning vs Copilot Studio
field/talk-tracks/            — Objection handling, business value, vibe checks
field/customer-patterns/      — Maturity stages, failure modes
microsoft-internal/known-limitations/ — Gaps and workarounds
microsoft-internal/seval/     — SEVAL internal tool
changelog/                    — Daily research logs
```

### File Format

Every knowledge file has the same layered structure:

```
---
title: [Topic Name]
source: [Primary URL]
last_updated: [YYYY-MM-DD]
category: [folder path]
tags: [tag1, tag2, tag3]
---

## TL;DR          ← One-liner summary (skim this for a quick answer)
## Key Facts       ← Bullet points of the essentials
## Customer Impact ← What to know or do differently with customers
## Detail          ← Full writeup with specifics
## Sources         ← Links to primary sources
```
