---
title: Braintrust AI Evaluation Platform
source: https://www.braintrust.dev
last_updated: 2026-03-17
category: industry/frameworks
tags: [braintrust, evaluation-platform, observability, evals, ci-cd]
---

## TL;DR
Braintrust is an AI observability and evaluation platform that connects production traces, evaluation experiments, and CI/CD workflows in a single tool, used by teams at Notion, Stripe, Vercel, Airtable, Instacart, Zapier, and Coda.

## Key Facts
- **Core pillars**: Observability (tracing & monitoring), Evaluation (experiments & scoring), and Prompt Engineering (iteration & optimization).
- **Trace-to-eval workflow**: Every production trace can become a test case with one click -- production logs flow directly into evaluation datasets.
- **Scoring methods**: Supports LLM-as-judge, code-based scorers, and human scoring.
- **CI/CD integration**: GitHub Actions integration posts detailed eval results on every pull request.
- **Loop Agent**: AI-powered tool that analyzes prompts, generates improved versions, creates evaluation datasets, and builds custom scorers.
- **Brainstore**: Proprietary database optimized for AI data (full-text search, low write latency, fast span loading).
- **SDKs**: Python, TypeScript, Go, Ruby, C#.
- **Framework agnostic**: No vendor lock-in; works with any AI provider or framework.
- **Security**: SOC 2 Type II, GDPR, HIPAA compliance, SSO/SAML, RBAC, hybrid deployment options.
- **Pricing**: Free tier available; paid plans scale with usage.

## Customer Impact
- Braintrust's trace-to-eval workflow is a key differentiator -- teams can build evaluation datasets from real production data rather than relying solely on synthetic test cases.
- The CI/CD integration makes it practical to run evals on every PR, catching regressions before they reach production.
- The platform is framework-agnostic, making it accessible regardless of the AI stack being used.
- The Loop Agent for automated prompt optimization is a newer capability that reduces the manual effort of prompt engineering.

## Detail

### Observability
- Real-time trace inspection with scalable log ingestion and live performance monitoring.
- Tracks prompts, responses, tool calls, latency, cost, and quality metrics.
- Custom trace views for different task types.

### Evaluation
- Versioned datasets with flexible experiment management.
- Side-by-side prompt comparison across experiments.
- Automated and human scoring with customizable scorers.
- Regression detection through experiment comparison.

### How Evaluation Works
1. **Define a dataset** -- curate examples manually or capture from production traces.
2. **Write scorers** -- code-based (deterministic) or LLM-based (semantic) scoring functions.
3. **Run experiments** -- execute your AI application against the dataset and score results.
4. **Compare** -- view results side-by-side across experiments to identify improvements or regressions.
5. **Automate** -- integrate into CI/CD for continuous evaluation.

### MCP Integration
Braintrust offers Model Context Protocol (MCP) support for IDE integration, allowing developers to interact with evaluation data directly from their development environment.

## Recent Updates (2026)

### Series B Funding (February 17, 2026)
Braintrust raised **$80M in Series B funding** led by ICONIQ Capital, with participation from Andreessen Horowitz, Greylock, Elad Gil, and basecase capital. The company is positioning itself as core observability infrastructure for production AI, noting that "traces are now long-running, multi-step agents with tool calls and intermediate reasoning that capture massive volumes of data."

### Temporal Integration (January 2026)
Braintrust announced an integration with **Temporal** that combines durable workflow execution with LLM observability. The integration:
- Automatically converts Temporal workflow and activity executions into Braintrust spans.
- Enables prompt management through Braintrust UI with automatic pulling by workers.
- Provides full trace hierarchy from client requests through all workflow steps.
- Solves mid-execution failures, black-box prompt debugging, and slow iteration cycles.

### EU Privacy and Compliance (March 2026)
New support for EU privacy and compliance requirements as customers scale AI-powered products with complex data needs.

### Notable Customers (Updated)
Notion, Replit, Cloudflare, Ramp, Dropbox (in addition to previously listed Stripe, Vercel, Airtable, Instacart, Zapier, and Coda).

## Sources
- [Braintrust Homepage](https://www.braintrust.dev)
- [Braintrust Evaluation Docs](https://www.braintrust.dev/docs/evaluate)
- [How to Eval: The Braintrust Way](https://www.braintrust.dev/articles/how-to-eval)
- [Best AI Evals Tools for CI/CD](https://www.braintrust.dev/articles/best-ai-evals-tools-cicd-2025)
- [Braintrust Series B Announcement](https://www.braintrust.dev/blog/announcing-series-b)
- [Braintrust + Temporal Integration](https://www.braintrust.dev/blog/temporal-braintrust-integration)
- [Braintrust EU Privacy and Compliance](https://www.braintrust.dev/blog/eu-privacy-compliance)
