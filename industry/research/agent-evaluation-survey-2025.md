---
title: "Survey on Evaluation of LLM-based Agents"
source: https://arxiv.org/html/2503.16416
last_updated: 2026-03-17
category: industry/research
tags: [survey, agent-evaluation, benchmarks, arxiv, llm-agents, evaluation-frameworks]
---

## TL;DR
A comprehensive survey providing the first systematic analysis of LLM agent evaluation benchmarks and frameworks, organized across four dimensions: fundamental capabilities, application-specific benchmarks, generalist agent benchmarks, and evaluation frameworks.

## Key Facts
- **Authors**: Asaf Yehudai, Lilach Eden, Alan Li, Guy Uziel, Yilun Zhao, Roy Bar-Haim, Arman Cohan, Michal Shmueli-Scheuer.
- **Affiliations**: Hebrew University of Jerusalem, IBM Research, Yale University.
- **Published**: March 2025 on arXiv (2503.16416).
- **Scope**: Covers four critical evaluation dimensions with dozens of benchmarks and frameworks.

### Four Evaluation Dimensions

1. **Fundamental Capabilities**: Planning, multi-step reasoning, function calling/tool use, self-reflection, memory management.
2. **Application-Specific**: Web agents, software engineering agents, scientific agents, conversational agents.
3. **Generalist Agents**: Cross-domain systems handling diverse task types.
4. **Evaluation Frameworks**: Development tools enabling continuous monitoring and assessment.

### Key Benchmarks by Category

| Category | Benchmarks |
|----------|-----------|
| Planning & Reasoning | PlanBench, Natural Plan, ACPBench, MINT |
| Tool Use | BFCL, ToolBench, StableToolBench, ComplexFuncBench, NESTFUL |
| Memory | MemGPT, StreamBench, LTMbenchmark |
| Web Agents | WebArena, VisualWebArena, WorkArena++ |
| Software Engineering | SWE-bench variants, SWELancer |
| Scientific Tasks | SciCode, DiscoveryWorld, AAAR-1.0 |
| Generalist | GAIA, TheAgentCompany, OSWorld |

## Customer Impact
- This survey is the most comprehensive reference for teams selecting evaluation benchmarks for their agent systems.
- The four-dimension framework helps teams structure their evaluation strategy -- most should start with fundamental capabilities, then add application-specific benchmarks.
- The identified gaps (cost-efficiency, safety, policy compliance) highlight areas where teams need to build custom evaluations since standard benchmarks are lacking.
- The trend toward "continuously updated benchmarks" suggests teams should expect evaluation targets to evolve, not remain static.

## Detail

### Key Findings

**Emerging Trends:**
- Shift toward more realistic, challenging evaluations with continuously updated benchmarks.
- Dynamic benchmarks (like BFCL variants) that adapt as models improve.
- Growing emphasis on multi-step, long-horizon task evaluation.

**Critical Gaps Requiring Future Work:**
- **Cost-efficiency**: Evaluation of agent resource consumption and cost-effectiveness is underexplored.
- **Safety assessment**: Limited focus on policy compliance, risk mitigation, and adherence to organizational safety protocols.
- **Scalability**: Need for fine-grained, scalable evaluation methods that go beyond coarse task-level metrics.
- **Standardization**: Lack of standardized granular metrics for step-by-step performance analysis.

**Recommendations:**
- Develop standardized granular metrics for step-by-step performance analysis.
- Integrate cost and efficiency tracking as core evaluation components.
- Expand automated evaluation through synthetic data generation and agent-as-judge approaches.
- Prioritize comprehensive safety and compliance benchmarking for real-world deployment.

### Design Trade-offs in Agent Evaluation
The survey identifies key trade-offs that evaluation designers face:
- **Latency vs. accuracy**: Faster evaluation may sacrifice measurement precision.
- **Autonomy vs. controllability**: More autonomous agents are harder to evaluate deterministically.
- **Capability vs. reliability**: Expanding what an agent can do often reduces consistency.

Evaluation is further complicated by non-determinism, long-horizon credit assignment, tool and environment variability, and hidden costs such as retries and context growth.

## Sources
- [Survey on Evaluation of LLM-based Agents (arXiv:2503.16416)](https://arxiv.org/html/2503.16416)
