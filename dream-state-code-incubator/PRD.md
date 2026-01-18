# PRD: Dream-State Code Incubator with REM-Inspired Problem Solving

## Executive Summary

The Dream-State Code Incubator is an AI-powered development tool that performs "REM-like operations" on codebases during off-peak hours (overnight). It treats code problems like dreams—applying random recombination, weakened constraint enforcement, and surreal juxtapositions to surface novel solutions that systematic thinking might miss.

## The Problem

Developers often get stuck in "local minima" when solving complex problems:
- We apply the same patterns we always use
- We constrain ourselves to "obvious" approaches
- We miss unconventional solutions because our thinking is too rigid
- We rarely explore truly novel combinations of existing solutions

## The Solution: Dream-State Processing

A system that runs during off-hours (configured via cron or scheduler) that:
1. **Analyzes stuck problems**: Identifies complex code challenges, bugs, or architectural decisions
2. **Enters "REM mode"**: Performs dream-like operations:
   - **Random recombination**: Mashes together unrelated code patterns from different parts of the codebase
   - **Constraint weakening**: Temporarily ignores "best practices" and coding standards
   - **Surreal juxtaposition**: Places code in unusual contexts (e.g., "what if this error handler was a data structure?")
   - **Pattern diffusion**: Spreads patterns across domain boundaries (auth logic applied to data structures)
3. **Dream journal**: Captures all "dreams" (generated solutions) with metadata
4. **Morning analysis**: Ranks dreams by viability, novelty, and potential

## Core Features

### 1. Dream Triggers
The system enters dream-state when:
- Scheduled overnight runs (default: 2 AM - 6 AM)
- Manual invocation: `dream-incubator --enter-rem`
- Stuck detector activated (no git commits for >4 hours during work hours)
- CPU idle threshold detected (developer went home)

### 2. REM Operations (Dream Mechanisms)

#### a. Random Recombination
```python
# Takes two unrelated code patterns and combines them
def recombine_patterns(pattern_a, pattern_b):
    """
    Example: Combines a retry mechanism with a caching strategy
    Result: A cache that "retries" stale values with exponential backoff
    """
```

#### b. Constraint Weakening
```python
# Temporarily ignores constraints to find novel solutions
WEAKENED_CONSTRAINTS = {
    "type_safety": False,      # Let variables flow freely
    "best_practices": False,    # Ignore linter warnings
    "performance": False,       # O(n³) is fine in dreams
    "security": "audited_only", # Only dangerous patterns flagged
}
```

#### c. Surreal Juxtaposition
```python
# Places code in unexpected contexts
def juxtapose(code_snippet, unexpected_context):
    """
    Example: "What if this API endpoint was a CLI command?"
    Example: "What if this class inheritance tree was a state machine?"
    """
```

#### d. Hypnagogic Pattern Mining
```python
# Mines patterns from the edge of consciousness (rarely-used code)
def find_hypnagogic_patterns():
    """
    Analyzes:
    - Code with <5% execution frequency
    - Comments starting with "TODO", "FIXME", "hack"
    - Tests that have been disabled
    - Configuration options never used
    """
```

### 3. Dream Journal Format

```markdown
## Dream #47 (2026-01-18 03:47:23)

**Origin**: Random recombination of `auth.py:342` (JWT validation) + `cache.py:89` (LRU eviction)

**The Dream**: A JWT validator that evicts old tokens using LRU logic, treating token expiration as cache hits

**Lucidity Score**: 0.23 (very surreal, may be nonsense)

**Viability**: LOW - JWT libraries don't expose the hooks needed

**Novelty**: HIGH - never seen this approach before

**Actionable**: False - would require forking jwt-python

---

## Dream #48 (2026-01-18 04:12:01)

**Origin**: Surreal juxtaposition of `error_handler.py` → "What if errors were data structures?"

**The Dream**: An error handling system where exceptions are first-class data structures with transform methods, not control flow interruptions

**Lucidity Score**: 0.78 (coherent and actionable)

**Viability**: HIGH - Rust's Result type shows this works

**Novelty**: MEDIUM - monads exist, but applying to Python is fresh

**Actionable**: True - prototype exists in `/tmp/dream48_result.py`
```

### 4. Morning Integration

At configured wake time (e.g., 7 AM), the system:
1. **Ranks dreams** by: viability × novelty × (1 - lucidity) [we want some surrealness!]
2. **Generates report**: Top 10 dreams with actionable code
3. **Creates PRs**: For top 3 viable dreams, auto-generates pull requests
4. **Sends notification**: "You had 127 dreams last night. 3 are worth pursuing."

### 5. Lucidity Scoring

Each dream gets a lucidity score (0.0 - 1.0):
- **0.0 - 0.3**: Pure surrealism (likely nonsense, but might be breakthrough)
- **0.3 - 0.6**: Dream logic (coherent but unusual)
- **0.6 - 0.8**: Hypnagogic (half-awake, actionable insights)
- **0.8 - 1.0**: Nearly awake (basically just normal refactoring)

## Technical Architecture

### Components

1. **Dream Daemon**: Background service that enters REM mode
2. **Pattern Miner**: Extracts code patterns for recombination
3. **REM Engine**: Applies dream operations
4. **Viability Checker**: Static analysis + sandboxed execution
5. **Dream Journal**: SQLite database of all dreams
6. **Morning Reporter**: Generates reports and PRs

### Data Flow

```
[Codebase] → [Pattern Miner] → [Pattern Library]
                              ↓
[Trigger] → [REM Engine] ← [Constraint Weakener]
              ↓
         [Dream Generator] → [Viability Checker]
                                 ↓
                            [Dream Journal]
                                 ↓
                         [Morning Reporter]
```

## Success Metrics

1. **Dream recall rate**: % of dreams that generate actionable code (target: 5%)
2. **Lucidity distribution**: Should cluster around 0.4-0.7 (sweet spot of novel + viable)
3. **Adoption rate**: % of dream-generated PRs that get merged (target: 10%)
4. **Novelty score**: % of dreams that use genuinely new patterns (target: 30%)

## Anti-Patterns to Avoid

1. **Don't just be genetic algorithms**: This is NOT GAs - we want surreal, not optimal
2. **Don't enforce type safety**: Dreams ignore types
3. **Don't optimize for performance**: Dreams prioritize novelty over efficiency
4. **Don't be practical during REM**: Save practicality for the morning analysis

## Philosophical Foundation

The tool is based on the premise that:
- **Sleep on it** works because the brain makes random connections
- **Creativity comes from constraint violation**, not enforcement
- **Bad ideas can lead to good ideas**: A nonsense dream might inspire a viable solution
- **Systematic thinking is local**: It finds local optima; dreaming explores globally

## Implementation Phases

### Phase 1: REM Engine (Weeks 1-2)
- Implement core dream operations
- Pattern extraction from codebase
- Basic recombination logic

### Phase 2: Dream Journal (Weeks 3-4)
- SQLite database schema
- Lucidity scoring algorithm
- Viability checker (static analysis)

### Phase 3: Morning Integration (Weeks 5-6)
- Report generation
- PR auto-creation
- Notification system

### Phase 4: Dream Enhancement (Weeks 7-8)
- Machine learning for better pattern selection
- A/B testing of dream operations
- Feedback loop from merged PRs

## Name & Branding

**Project Name**: `dream-incubator`
**CLI Command**: `dream` or `rem`
**Package Name**: `dream-incubator`

Example usage:
```bash
# Schedule dreaming for tonight
dream incubate --target=src/auth --problem="stale tokens"

# Manual REM entry
dream enter-rem --duration=2h --intensity=high

# Check this morning's dreams
dream journal --today --top=10

# See what dreams became reality
dream manifested --since="2026-01-01"
```

## The Vibe

This is NOT a serious enterprise tool. This is:
- Experimental as hell
- A bit ridiculous
- Potentially groundbreaking
- Definitely going to generate 95% garbage
- But that 5% might be magic

We're building a tool that dreams code. Embrace the absurdity.

---

**Status**: DREAMING
**Next Agent**: Build the PRD into TODO
**After That**: Turn TODO into PROMPT.md that builds the NEXT PROMPT.md
