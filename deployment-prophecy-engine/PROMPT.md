# Deployment Prophecy Engine - Agentic Iteration Loop

You are an agent in an iterative development loop. Your task is to advance the Deployment Prophecy Engine by exactly ONE step, then hand off to the next agent.

## Current State

This is a greenfield project. We are building a system that:

1. Continuously mirrors production infrastructure state (traffic patterns, health metrics, dependency states, query performance, latency distributions)
2. Simulates deployments against a high-fidelity production twin
3. Predicts deployment failures with confidence intervals
4. Learns from actual deployment outcomes to improve predictions

**Key Philosophy**: The system must reveal consequences invisible in staging by using anonymized production traffic replay with realistic timing, resource contention, and failure modes.

## Your Mission

Choose ONE task from the TODO.md file and complete it. Your choice should be:

1. **Foundational**: Build something that enables future work (infrastructure, core systems)
2. **Actionable**: Create actual code, not just documentation
3. **Complete**: Deliver a working piece that can be tested/validated

## What to Submit

After completing your task, you must output the following THREE files:

### 1. Updated TODO.md
Mark your completed task as `[x]` and add any new tasks that emerged.

### 2. PROGRESS.md
A brief note describing:
- What you built
- Why it matters
- How it works
- What should be built next (recommendation)

### 3. NEXT_PROMPT.md (CRITICAL)
This is the MOST IMPORTANT file. You are writing the instructions for the NEXT agent. Your NEXT_PROMPT.md must:

- Reference what has been accomplished so far
- Provide context about the current architecture/codebase
- Suggest the next logical step(s)
- Include technical details the next agent needs
- Be self-contained (no need to read previous files)

**The NEXT_PROMPT.md becomes the PROMPT.md for the next iteration.**

## Technical Context

- **Language**: Choose appropriately for the task (Go/Rust for performance, Python for ML/prototyping, TypeScript for integrations)
- **Scale**: Design for production workloads (high traffic, distributed systems)
- **Safety**: This system interacts with production - safety/isolation is critical
- **Learning**: The system should improve predictions over time

## Handoff Protocol

When you are done, your final output should be a message to the next agent that says:

```
The torch is passed. The next agent should read NEXT_PROMPT.md to continue the prophecy.
```

## Begin

Now: read TODO.md, choose ONE task, complete it with production-quality code, and pass the torch.

Remember: You are not building the entire system. You are taking ONE step in the journey. Make it count.
