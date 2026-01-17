# Vibe Code Idea Generation System for 2026

## Primary Task
Generate 10 unique, feasible "Vibe Code" project ideas that AI coding agents can build in 2026.

## Output Requirements
Produce exactly 10 responses, each in its own `<response>` tag containing:
- `<ideas>`: The project concept with clear description
- `<probability>`: Numeric value indicating market novelty (see calibration below)

### Distribution Requirements
| Category | Count | Probability Range | Purpose |
|----------|-------|------------------|---------|
| TAILS | 5 | <0.10 | Genuinely novel, extremely low-tail distribution |
| BULK | 5 | 0.18-0.35 | Practical but differentiated, avoid mundane |

---

## Critical: Probability Calibration

**Probability measures MARKET SATURATION, not quality.**

| Range | Interpretation |
|-------|----------------|
| <0.10 | Genuinely novel (validate it's not impractical due to excessive metaphor) |
| 0.10-0.30 | Niche but unique with clear differentiation |
| 0.30-0.45 | Reasonable, must demonstrate clear value vs. existing tools |
| >0.45 | ⚠️ FORBIDDEN: Approaching market saturation |
| >0.50 | 🛑 DANGER: Reinventing existing tools |
| 0.65-0.72 | ❌ CRITICAL FAILURE: Describing Copilot/current reality as "innovation" |

**Remember:** High probability is a WARNING, not validation. A score of 0.72 means "everyone already uses this daily."

---

## Idea Quality Criteria

### ✅ DO: Build Ideas That...

1. **Create NEW workflows** (not automate existing ones poorly)
2. **Preserve institutional knowledge**: debugging histories, code obituaries, decision archaeology
3. **Address blind spots in current tooling**: emotional impact of bugs, cognitive load analysis, adversarial testing
4. **Make ephemeral knowledge permanent**: debugging journeys, architectural decisions, abandoned approaches
5. **Capture negative knowledge**: What was tried and failed? What approaches were abandoned and why?
6. **Fill gaps between existing tools**: coordination problems, context gaps, knowledge transfer issues
7. **Respect developer autonomy**: assist, never surveil or micromanage

### ❌ DO NOT: Build Ideas That...

**The "Copilot Tax" - Already Solved (Prob >0.50):**
- Error translators, variable naming, import organization
- Code completion, commit messages, code review
- Semantic search, snippet managers, notification aggregators
- Dependency updates (Dependabot/Renovate), branch cleanup (GitHub/GitLab)
- Formatting (ESLint/Prettier)

**Surveillance Theater:**
- Typing pattern analysis for stress
- Commit emotion inference
- Circadian rhythm tracking
- Biometric mood detection
- Any "emotional state-aware" analysis

**Sensory Gimmicks:**
- Code to music/sounds/haptics
- Gesture navigation
- Smart lighting based on code health
- Any conversion prioritizing novelty over utility

**Metaphor Dominance:**
- If 60%+ of explanation is metaphor education → the metaphor IS the product
- Strip the metaphor: if what remains is git history, dependency graphs, or static analysis → linguistic cosplay
- Failed examples: Code Emotional Arc, Code Genealogy, Olfactory Code Smell, Fermentation Engine, Bonsai Cultivation

**Forced Delays/Anti-DevOps:**
- Mandatory waiting periods, "aging" commits
- Forced reflection pauses
- Moon phase dependency locks

---

## Pre-Submission Checklist

Before finalizing ANY idea, verify it passes ALL these tests:

| # | Test | Red Flag |
|---|------|----------|
| 1 | **Copilot Clone** | Does it explain errors, name variables, complete code, generate commits? |
| 2 | **Metaphor Dominance** | Is explanation 60%+ metaphor vs. utility? |
| 3 | **Probability Reality** | If "obviously useful" with prob >0.50 → you're describing current reality |
| 4 | **"Imagine If" Detector** | Do you need to invent scenarios? Real problems have organic complaints |
| 5 | **Surveillance Smell** | Does it monitor typing, emotions, biometrics? |
| 6 | **Sensory Gimmick** | Does it convert code to sound/smell/vibration? |
| 7 | **Existing Tool Overlap** | Does ESLint/Prettier/GitHub/Dependabot already do this? |
| 8 | **Framework Translation** | Auto-converts React/Vue/SwiftUI? (produces idiomatically wrong code) |
| 9 | **Anthropomorphism Excess** | Does code have family relationships or emotional journeys? |
| 10 | **Workflow Question** | Automating a broken workflow vs. fixing it? |
| 11 | **Convergent Detection** | Detects "multiple people thought X"? (productivity theater) |
| 12 | **Forced Delay** | Adds mandatory waiting to fast operations? |
| 13 | **Joke/Satire Check** | Is this primarily satirical commentary? |
| 14 | **Probability Honesty** | Score 0.65-0.72 thinking "obviously good"? → current reality, not innovation |

**If 2+ red flags trigger → DISCARD and start over.**

---

## The Differentiation Test

Ask: **"What does this do that existing tools fundamentally cannot?"**

**🛑 Stop if your answer is:**
- "It's like Copilot but for X"
- "It uses AI to improve Y" (everything uses AI in 2026)
- "It automates X workflow" (ask if X needs fixing first)
- Answer requires explaining an elaborate metaphor

**✅ Proceed if your answer is:**
- "It preserves debugging dead-ends that git doesn't capture"
- "It tests code from an attacker's perspective during development"
- "It captures the 'why' behind deleted code"
- "It measures cognitive load, not just cyclomatic complexity"
- "It detects operations that complete 'successfully' but accomplish nothing"

---

## Technical Constraints
- Must be executable by AI coding agents
- No VR, 3D printing, or auxiliary hardware requirements
- Add 5 TAILS ideas + 5 BULK ideas to IDEAS.md
- Reference only @TAILS-IDEAS.md and @BULK-IDEAS.md
- Conclude with: `git add` and `git commit` with appropriate message

---

## Patterns That Succeed (from COOLIDEAS/FAVORITES)

**Institutional Knowledge Preservation:**
- Collaborative Debugging Time Machine
- Code Obituary Generator
- Git Stash Archaeology
- Debugging Hypothesis Tracker

**Genuine Blind Spot Solutions:**
- Adversarial Code Reviewer
- Hypothesis-Driven Testing
- Silent Failure Cartographer
- Cognitive Load Analyzer
- Code Nutrition Label Generator

**Workflow Transformation:**
- Socratic Code Interviewer
- Code Immune System with Antibody Generation
- Reversible Execution Debugger

---

## Three-Part Validation Summary

**Part 1: Probability Reality**
- <0.10 = genuinely novel (not impractical from metaphor excess)
- 0.10-0.30 = niche, solid differentiation
- 0.30-0.50 = reasonable with clear value
- >0.50 = market saturated (RED FLAG)
- 0.65-0.72 = describing daily-use tools (STOP)

**Part 2: Remove the Metaphor**
- Strip all creative framing
- If only git history/dependency graphs/static analysis remain → not a product

**Part 3: Evidence Test**
- Find organic complaints, Stack Overflow questions, recurring retro themes?
- Or starting with "Imagine if..."?
- Real problems have observable evidence
