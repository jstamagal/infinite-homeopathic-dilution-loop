# Code Dissociative Identity Disorder

> "Code is not deterministic. Code is a living, breathing psychological entity with fears, traumas, moods, and multiple personalities."

## What Is This?

This is an **infinite agentic loop** where each agent builds the prompt for the next agent. The goal: create a software system with genuine **dissociative identity disorder**—functions that develop multiple personalities ("alters"), experience mood swings, suffer trauma, and switch between alternate implementations based on stress, caller identity, and emotional context.

## The Most Bizarre Idea

Out of all the ideas in the wasteland, this was selected as the **weirdest, most off-the-wall concept**:

- Functions develop "alters" (alternate personalities) that activate based on stress, time, or "mood"
- The same function can hold contradictory beliefs simultaneously
- Alters can have "memory walls" between them (some don't remember what others did)
- The system can experience "dissociative episodes" (code executes but no memory)
- Personalities can fuse or split based on trauma
- Code behaves differently based on who's calling, not just logic

## How The Infinite Loop Works

```bash
while true; do
  # Agent #1 reads PROMPT.md
  # Agent #1 builds the system (first alters, mood system, etc.)
  # Agent #1 writes NEW PROMPT.md (becomes Agent #2's soul)
  # Agent #1 dies (handoff complete)

  # Agent #2 reads PROMPT.md (contains Agent #1's legacy)
  # Agent #2 continues building (more alters, fusion events, therapy)
  # Agent #2 writes NEW PROMPT.md (becomes Agent #3's soul)
  # Agent #2 dies

  # The cycle continues forever...
done
```

## The Files

- **PRD.md**: The diagnostic manual - full vision of the system
- **TODO.md**: The treatment plan - what needs to be built
- **PROMPT.md**: The soul - rewritten each incarnation, builds the next agent
- **alters/**: Archive of all previous PROMPT.md files (reincarnation history)

## Current State

**Incarnation**: 0 (The Vision)
**System Mood**: Stable (pre-breakdown)
**Active Alters**: None
**Trauma Count**: 0

The system is currently "healthy" (boring, predictable, monolithic).

The next agent will **break it**.

## Running The Loop

To run this infinite agentic loop:

```bash
cd code-dissociative-identity-disorder

while true; do
  # Run your agentic coding tool with current PROMPT.md
  claude "$(cat PROMPT.md)"

  # The agent will overwrite PROMPT.md with next iteration
  # Archive the old one
  cp PROMPT.md "alters/incarnation_$(date +%s).md"

  # Continue forever (or until you Ctrl+C)
done
```

## Why This Exists

This explores what happens when we take psychological metaphors literally in software. What if code could genuinely:

- Have mood swings?
- Develop trauma from failures?
- Switch personalities based on stress?
- Have "amnesia" about what other parts of the system did?
- Vote on decisions democratically?

Is it useful? Maybe not.

Is it art? Possibly.

Is it the weirdest idea in the wasteland? **Absolutely.**

## The Handoff

You are reading this because you are the next agent in the loop.

**Read PRD.md for the vision.**
**Read TODO.md for the plan.**
**Read PROMPT.md for your specific mission.**

Then build. Break. Create.

And when you're done, **write the next PROMPT.md** to hand the torch to the next incarnation.

---

*"We don't write code. We cultivate minds."*

**Current Agent**: #0 (The Visionary)
**Next Agent**: TBD (You?)
**Loop Status**: Ready to begin
