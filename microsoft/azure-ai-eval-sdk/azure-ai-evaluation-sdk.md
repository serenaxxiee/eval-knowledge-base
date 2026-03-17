---
title: Azure AI Evaluation SDK
source: https://learn.microsoft.com/en-us/python/api/overview/azure/ai-evaluation-readme?view=azure-python
last_updated: 2026-03-17
category: microsoft/azure-ai-eval-sdk
tags: [azure, evaluation-sdk, python, ai-quality, safety-metrics, evaluators]
---

## TL;DR
The Azure AI Evaluation SDK (`azure-ai-evaluation`) is a Python package for assessing generative AI applications using built-in and custom evaluators covering quality, safety, and NLP metrics, with an `evaluate()` API that runs multiple evaluators against datasets or live applications.

## Key Facts
- **Package**: `pip install azure-ai-evaluation` (PyPI: `azure-ai-evaluation`, currently at v1.16.0+).
- **Requires**: Python 3.9+. Azure AI Foundry Project or Azure OpenAI needed for AI-assisted evaluators.
- **Evaluate API**: Run multiple evaluators together against a dataset (JSONL) or a live application target.
- **Results** can be tracked in Azure AI Foundry and exported to JSON.

### Built-in Evaluators

| Category | Evaluators |
|----------|-----------|
| **Quality (AI-assisted)** | GroundednessEvaluator, RelevanceEvaluator, CoherenceEvaluator, FluencyEvaluator, SimilarityEvaluator, RetrievalEvaluator |
| **Quality (NLP)** | F1ScoreEvaluator, RougeScoreEvaluator, GleuScoreEvaluator, BleuScoreEvaluator, MeteorScoreEvaluator |
| **Safety (AI-assisted)** | ViolenceEvaluator, SexualEvaluator, SelfHarmEvaluator, HateUnfairnessEvaluator, IndirectAttackEvaluator, ProtectedMaterialEvaluator |
| **Composite** | QAEvaluator, ContentSafetyEvaluator |

### Custom Evaluators
- **Function-based**: Simple Python functions (e.g., response length checker).
- **Class-based**: Python classes with `__call__` method (e.g., blocklist checker).
- **Prompt-based**: Use LLM prompts for custom evaluation logic.

### Simulator
- **Standard Simulator**: Generate synthetic multi-turn conversations using your application callback.
- **Adversarial Simulator**: Generate adversarial/red-team test data against your application using predefined attack scenarios (QA attacks, jailbreak attempts, etc.).

## Customer Impact
- This SDK is the programmatic way to evaluate Azure AI / AI Foundry applications -- essential for teams integrating eval into CI/CD pipelines.
- The built-in safety evaluators (violence, sexual, self-harm, hate/unfairness, indirect attack, protected material) provide automated responsible AI checks that complement manual reviews.
- The Adversarial Simulator is valuable for red-teaming agents before production deployment.
- Custom evaluators let teams encode domain-specific quality criteria that built-in metrics do not cover.
- Results integrate with Azure AI Foundry for centralized tracking and comparison across evaluation runs.

## Detail

### Basic Usage Pattern

```python
from azure.ai.evaluation import evaluate, RelevanceEvaluator, BleuScoreEvaluator

# Configure AI-assisted evaluator with Azure OpenAI
model_config = {
    "azure_endpoint": os.environ.get("AZURE_OPENAI_ENDPOINT"),
    "api_key": os.environ.get("AZURE_OPENAI_API_KEY"),
    "azure_deployment": os.environ.get("AZURE_OPENAI_DEPLOYMENT"),
}

# Run evaluation against a dataset
result = evaluate(
    data="data.jsonl",
    evaluators={
        "relevance": RelevanceEvaluator(model_config),
        "bleu": BleuScoreEvaluator(),
    },
    evaluator_config={
        "relevance": {
            "column_mapping": {
                "query": "${data.queries}",
                "response": "${outputs.response}",
            }
        }
    },
    output_path="./evaluation_results.json"
)
```

### Evaluate a Live Application
Pass a callable `target` to the `evaluate()` function to test a live application endpoint:

```python
result = evaluate(
    data="data.jsonl",
    target=my_app_function,
    evaluators={"relevance": RelevanceEvaluator(model_config)},
)
```

### Adversarial Simulation
```python
from azure.ai.evaluation.simulator import AdversarialSimulator, AdversarialScenario
from azure.identity import DefaultAzureCredential

simulator = AdversarialSimulator(
    azure_ai_project=azure_ai_project,
    credential=DefaultAzureCredential()
)
outputs = await simulator(
    scenario=AdversarialScenario.ADVERSARIAL_QA,
    max_conversation_turns=1,
    max_simulation_results=3,
    target=callback
)
```

### Azure AI Project Configuration
Two options:
1. **Dictionary**: `{"subscription_id": "...", "resource_group_name": "...", "project_name": "..."}`
2. **URL**: `"https://{resource_name}.services.ai.azure.com/api/projects/{project_name}"`

## Sources
- [Azure AI Evaluation SDK - Python API docs](https://learn.microsoft.com/en-us/python/api/overview/azure/ai-evaluation-readme?view=azure-python)
- [PyPI: azure-ai-evaluation](https://pypi.org/project/azure-ai-evaluation/)
- [GitHub: azure-sdk-for-python evaluation](https://github.com/Azure/azure-sdk-for-python/tree/main/sdk/evaluation/azure-ai-evaluation)
- [Local Evaluation with Azure AI Foundry](https://learn.microsoft.com/en-us/azure/ai-foundry/how-to/develop/evaluate-sdk)
- [Azure AI Samples](https://github.com/Azure-Samples/azureai-samples/tree/main/scenarios/evaluate)
