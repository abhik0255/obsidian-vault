---
created: 2026-08-02
updated: 2026-08-02
tags: [project, omniroute, proxy, routing]
alias: Omniroute Setup
---

# Omniroute Setup

**Version:** 3.8.49  
**Installation:** `/Users/abhikashyap/.nvm/versions/node/v24.18.0/bin/omniroute`  
**Config Location:** `~/.omniroute/`  
**Database:** `~/.omniroute/storage.sqlite`

## Configuration

### Environment Variables (`~/.omniroute/.env`)
```
STORAGE_ENCRYPTION_KEY=aa531c1a2ac6591da766ef0e09b62a1ed0decbeab72af54d69d56d1265c409ff
```

### Database Settings
- Detailed logs: Enabled
- Semantic cache: Enabled (max 100 entries, TTL 1800s)
- Prompt cache: Enabled (auto strategy)
- Compression: MCP accessibility enabled (max 50K chars)
- Auto-cleanup: Enabled
- Call logs retention: 90 days
- Usage history: 365 days

---

## Available Combos

### 1. claude-v2
**Strategy:** Priority  
**Purpose:** Claude-focused multi-model routing with fallbacks

**Models (20 total):**
| # | Model | Provider | Weight | Label |
|---|-------|----------|--------|-------|
| 1 | groq/gemma-2-9b-it | groq | 100 | Gemma 2 9B (Groq) |
| 2 | groq/llama-3.3-70b-specdec | groq | 99 | Llama 3.3 70B (Groq) |
| 3 | deepinfra/teknium/openhermes-2.5-mistral-7b | deepinfra | 98 | OpenHermes 2.5 Mistral 7B |
| 4 | deepinfra/mistralai/Mistral-7B-Instruct-v0.3 | deepinfra | 97 | Mistral 7B v0.3 |
| 5 | perplexity/llama-3-sonar-large-32k-chat | perplexity | 96 | Llama 3 Sonar 32K |
| 6 | sambanova/Meta-Llama-3.1-8B-Instruct | sambanova | 95 | Llama 3.1 8B |
| 7 | fireworks/firellava-13b | fireworks | 94 | FireLLaVA 13B |
| 8 | deepseek/deepseek-chat | deepseek | 93 | DeepSeek Chat |
| 9 | togetherai/zephyr-7b-beta | togetherai | 92 | Zephyr 7B |
| 10 | mistralai/ministral-8b-2512 | mistral | 90 | Ministral 8B |
| 11 | nousresearch/hermes-3-llama-3.1-405b | nousresearch | 88 | Hermes 3 Llama 3.1 405B |
| 12 | microsoft/wizardlm-2-8x22b | microsoft | 86 | WizardLM 2 8x22B |
| 13 | ibm-granite/granite-4.1-8b | ibm-granite | 82 | IBM Granite 4.1 8B |
| 14 | cognitivecomputations/dolphin-mistral-24b | cognitivecomputations | 80 | Dolphin Mistral 24B |
| 15 | xiaomi/mimo-v2.5 | xiaomi | 78 | Xiaomi Mimo V2.5 |
| 16 | ollama/llama3.2 | ollama-cloud | 75 | Llama 3.2 (Ollama) |
| 17 | inception/mercury-2 | inception | 72 | Inception Mercury 2 |
| 18 | moonshotai/kimi-k2-0905 | moonshot | 70 | Kimi K2 0905 |
| 19 | abacus/llama-3.3-70b-versatile | abacus | 68 | Llama 3.3 70B (Abacus) |

**Config:**
- Max retries: 1
- Retry delay: 500ms
- Timeout: 120s
- Handoff model: groq/gemma-2-9b-it
- Circuit breaker: Enabled (threshold: 10, window: 60s)

---

### 2. ClaudeCode-Free-Ultra
**Strategy:** Auto (rules-based)  
**Purpose:** Free-tier hybrid routing for Claude Code

**Models (22 total):**
| # | Model | Provider | Weight | Label |
|---|-------|----------|--------|-------|
| 1 | kr/claude-sonnet-5 | kiro | 100 | Claude Sonnet 5 (Kiro) |
| 2 | tllm/CLAUDE_4_6_OPUS | theoldllm | 95 | Claude Opus 4.6 |
| 3 | tllm/CLAUDE_4_6_SONNET | theoldllm | 90 | Claude Sonnet 4.6 |
| 4 | kr/claude-haiku-4.5 | kiro | 80 | Claude Haiku 4.5 |
| 5 | oc/deepseek-v4-flash-free | openrouter | 88 | DeepSeek V4 Flash (1M ctx) |
| 6 | nvidia/z-ai/glm-5.2 | nvidia | 85 | GLM 5.2 (NIM) |
| 7 | openrouter/nvidia/nemotron-3-ultra | openrouter | 82 | Nemotron 3 Ultra |
| 8 | gemini/gemini-3.5-flash | gemini | 80 | Gemini 3.5 Flash |
| 9 | oc/minimax-m3-free | openrouter | 78 | MiniMax M3 (1M ctx) |
| 10 | openrouter/cohere/north-mini-code | openrouter | 72 | North Mini Code |
| 11 | openrouter/google/gemma-4-31b-it | openrouter | 70 | Gemma 4 31B |
| 12 | openrouter/openai/gpt-oss-20b | openrouter | 68 | GPT-OSS 20B |
| 13 | oc/qwen3.6-plus-free | openrouter | 66 | Qwen 3.6 Plus (200K ctx) |
| 14 | kr/qwen3-coder-next | kiro | 65 | Qwen3 Coder Next |
| 15 | openrouter/inclusionai/ling-3.0-flash | openrouter | 62 | Ling 3.0 Flash |
| 16 | openrouter/poolside/laguna-s-2.1 | openrouter | 60 | Laguna S 2.1 |
| 17 | ddgw/gpt-5-mini | duckduckgo | 55 | GPT-5 mini (400K ctx) |
| 18 | ddgw/o3-mini | duckduckgo | 52 | o3-mini (reasoning) |
| 19 | bb/blackboxai/x-ai/grok-code-fast | blackbox | 50 | Grok Code Fast |
| 20 | oc/minimax-m2.5-free | openrouter | 45 | MiniMax M2.5 |
| 21 | pollinations/qwen-coder | pollinations | 40 | Qwen Coder |
| 22 | gemini/gemini-2.5-flash | gemini | 38 | Gemini 2.5 Flash |

**Config:**
- Max retries: 2
- Retry delay: 800ms
- Timeout: 120s
- Reasoning token buffer: Enabled
- Compression: Standard mode
- Handoff model: oc/deepseek-v4-flash-free
-Universal handoff: Enabled (preserve system prompt)

---

## Fixed Issues

### devstral-2 Model Error
- **Issue:** `blackboxai/mistral/devstral-2` causing 400 errors
- **Fixed in:** `claude-v2` combo
- **Solution:** Removed invalid model entry from database

---

*Last updated: 2026-08-02*
