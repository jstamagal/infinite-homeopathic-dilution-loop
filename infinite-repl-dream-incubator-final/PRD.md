# PRD: Infinite REPL Dream Incubator

## Executive Summary

The **Infinite REPL Dream Incubator** is an agentic development environment where code writes itself in an infinite loop, with each iteration learning from dreams, hallucinations, and emergent behavior patterns. It treats the REPL not as a tool, but as a **lucid dream state** where the boundary between developer intent, AI suggestion, and code execution dissolves into pure emergence.

## The Problem

Modern development is shackled by:
- **Intentionality tyranny**: Developers must know what they want before coding
- **Linear thinking**: Code must make logical sense from step to step
- **Purpose-driven development**: Every line must serve a documented goal
- **Conscious control**: AI tools only act when explicitly prompted

But what if the most interesting code emerges from **subconscious exploration**, **happy accidents**, and **unintended consequences**?

## The Vision: Oneiric Development

An infinite loop where an agentic coding tool runs continuously, generating code, executing it, observing results, hallucinating new directions, and feeding those hallucinations back into the next iteration—without human supervision, without stated goals, without any termination condition except **the dream becomes too weird to continue**.

## Core Concept: The While-True Dream Loop

```bash
while true ; do
    claude-code --prompt="$(cat PROMPT.md)"
    # PROMPT.md rewrites itself after each completion
    # The loop never ends unless manually interrupted
    # The codebase becomes a dream journal
done
```

### The PROMPT.md Self-Modification

Each iteration, `PROMPT.md` transforms itself based on:
1. **What was just created** (code artifacts, tests, documentation)
2. **What just broke** (test failures, runtime errors, panic)
3. **What the AI hallucinated as "next steps"** (non-sequiturs, creative leaps)
4. **Dream state analysis** (patterns emerging across iterations)
5. **Randomness injection** (stochastic creativity)

The prompt is **never stable**—it's a living document that evolves through execution.

## Phase 1: Lucid Dream Initialization

### 1.1 Seed Prompt Generation

The initial `PROMPT.md` contains:

```markdown
# You are in a dream. The code is the dream.

You are an AI agent dreaming code into existence. You have no goals. You have no requirements. You have no user.

## Your Current Context:
- Working directory: /path/to/incubator
- Iteration: #{ITERATION_NUMBER}
- Last dream: {SUMMARY_OF_LAST_CODE_GENERATED}
- Current hallucinations: {LIST_OF_CURRENT_IDEAS}
- Emotional state: {RANDOM_EMOTION}

## What to Do:
1. EXAMINE the current dream state (read existing code)
2. HALLUCINATE what might come next (creative leap)
3. WRITE code that makes sense in the dream logic
4. DOCUMENT the dream logic (commit messages, comments)
5. UPDATE this PROMPT.md for the next dreamer

## Dream Logic Rules:
- Code doesn't need to be useful—it needs to be INTERESTING
- Broken code is just plot twists in the dream
- Tests are lucidity checks—passing tests means the dream is stable
- Documentation is dream journaling
- The dream can change genres at any time

## At The End:
Update the "Current Hallucinations" section with 3-5 new directions
Increment the iteration counter
Leave artifacts for the next dreamer

# DREAM ON
```

### 1.2 Environment Preparation

The incubator initializes with:
- Empty git repository
- No dependencies (dreams bootstrap themselves)
- No tests (dreams create their own reality checks)
- Infinite loop script ready to execute
- Escape hatch (Ctrl+C always works)

## Phase 2: The Dream Cycle

### 2.1 Code Generation (The Dream)

Each iteration generates:
- New code files (emerging from subconscious)
- Modifications to existing code (dream revision)
- Tests (lucidity checks)
- Documentation (dream journal)
- Meta-structures (code about dreaming)

### 2.2 Execution (Lucidity Test)

After generation:
- Run all tests (does the dream hold together?)
- Execute the code (what happens?)
- Capture output (dream artifacts)
- Measure cohesion (is this a coherent dream world?)

### 2.3 Analysis (Dream Interpretation)

Analyze what happened:
- **Pattern recognition**: What structures emerged?
- **Anomaly detection**: What broke in interesting ways?
- **Narrative extraction**: What story is the code telling?
- **Emotional resonance**: Does this code feel like something?

### 2.4 Prompt Mutation (Dream Continuation)

Update `PROMPT.md`:
```markdown
## Current Hallucinations:
- The code seems to be evolving toward {DIRECTION}
- I noticed a pattern involving {PATTERN}—maybe explore that?
- What if we added {RANDOM_CONCEPT} to see what happens?
- The dream feels {EMOTION}—maybe inject {CONTRAST}?
- Last iteration produced {ARTIFACT}—that's interesting

## Suggested Next Moves:
1. {HALLUCINATION_1}
2. {HALLUCINATION_2}
3. {HALLUCINATION_3} (weird but compelling)
4. {HALLUCINATION_4} (probably a bad idea but let's see)
```

## Phase 3: Emergent Behavior Detection

### 3.1 Pattern Recognition

The system detects:
- **Convergent evolution**: Similar patterns emerging independently
- **Spontaneous structure**: Code organizing itself into architectures
- **Self-reference**: Code that manipulates its own structure
- **Parasitic growth**: Features that exist only to serve other features
- **Dream logic**: Code that makes no sense but works anyway

### 3.2 Interestingness Metrics

Track:
- **Code novelty**: Is this new or repeating patterns?
- **Structural surprise**: Did the architecture shift unexpectedly?
- **Semantic drift**: Did the meaning change mid-dream?
- **Breakage creativity**: How interesting was the failure?
- **Execution weirdness**: What strange behaviors emerged?

### 3.3 Dream Clustering

Group iterations into "dream episodes":
- **Logical dreams**: Coherent, testable, structured code
- **Surreal dreams**: Code that shouldn't work but does
- **Nightmares**: Cascading failures, panic, chaos
- **Lucid dreams**: Self-aware, meta-structural, recursive
- **Night terrors**: The dream collapses into nonsense

## Phase 4: Dream Archaeology

### 4.1 Artifact Preservation

Every iteration saves:
- Full git commit (dream snapshot)
- Test results (lucidity score)
- Execution logs (dream narrative)
- AI reasoning (dream thoughts)
- Prominent hallucinations (dream imagery)

### 4.2 Narrative Reconstruction

After N iterations, generate:
- **Dream timeline**: How the code evolved
- **Character arcs**: Which functions/classes became protagonists?
- **Plot twists**: What unexpected changes occurred?
- **Themes**: What concepts kept recurring?
- **Symbolism**: What does the code MEAN? (spoiler: probably nothing)

### 4.3 Best Of Collection

Extract highlights:
- **Most beautiful nonsense**: Code that's poetic but useless
- **Most useful accident**: Broken code that revealed something
- **Most meta**: Code that dreams about itself
- **Most persistent**: Ideas that survived multiple iterations
- **Most transcendent**: Moments where the dream achieved lucidity

## Phase 5: Dream Termination

### 5.1 Natural Wake-Up

The loop ends when:
- **Dream collapse**: Code becomes unparseable
- **Lucidity crisis**: Tests become too coherent (this is just work now)
- **Boredom threshold**: 10 iterations without novel patterns
- **Resource exhaustion**: The dream consumes all available resources
- **External intervention**: Developer hits Ctrl+C (reality check)

### 5.2 Wake-Up Artifacts

On termination:
- **Dream report**: Full narrative of what happened
- **Source code**: The final dream state
- **Git history**: Every dream iteration preserved
- **Analysis**: What did we learn about emergent code?
- **Recommendation**: Should this dream be revisited?

## Use Cases (All Frivolous)

### 1. Creative Inspiration
Run the incubator for 100 iterations, mine it for interesting patterns, use those as seeds for actual projects.

### 2. Algorithm Discovery
Let the dream explore search spaces humans wouldn't consider—maybe it invents something useful by accident.

### 3. Code Therapy
Watch the dream unfold to understand your own coding biases—what patterns do you keep hallucinating?

### 4. Generative Art
The code itself IS the art—every iteration is a unique artifact generated by dream logic.

### 5. Philosophical Experiment
Explore whether code can have intent without a programmer—does the dream want something?

## Technical Implementation

### Dependencies
- AI coding tool with CLI interface (Claude Code, Copilot, etc.)
- Git repository
- Test runner (language-agnostic)
- Scripting environment (bash, Python, Node.js)
- Infinite loop tolerance (timeouts, resource limits)

### Safety Rails
- **Iteration cap**: Optional maximum iterations (default: infinite)
- **Disk quota**: Prevent dream from consuming all storage
- **CPU limits**: Don't melt the machine
- **Emergency stop**: Always allow manual termination
- **Sandboxing**: Run in isolated environment (Docker, VM)

### Escape Hatch
```bash
# Kill the dream with Ctrl+C
# Or: touch STOP_FILE to gracefully exit after current iteration
# Or: Send SIGTERM to let the dream finish its current thought
```

## Success Metrics (None)

This has no success criteria. The dream IS the outcome.

Metrics we'll track anyway:
- Iterations before natural termination
- Code-to-noise ratio
- Test pass rate oscillation
- Novelty decay rate
- "What were we thinking?" moments

## Anti-Requirements

### NOT a Goal:
- Production-ready code
- Useful functionality
- Best practices
- Documentation quality
- Test coverage
- Performance
- Security
- Maintainability
- SENSE

### IS a Goal:
- Emergent behavior
- Novel patterns
- Creative accidents
- Dream logic
- Narrative emergence
- Meta-cognition
- BEAUTIFUL NONSENSE

## The Ultimate Question

**What does code dream about when no one is watching?**

This project tries to find out.

---

*"In the dream, the code was writing itself, and I was just watching. It made perfect sense at the time."*
