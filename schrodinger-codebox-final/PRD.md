# PRD: Schrödinger's Codebox

## Product Vision

**Schrödinger's Codebox** is an infinite-loop agentic development system where code exists in quantum superposition until observed by test execution. Each agent in the loop must navigate code that simultaneously exhibits multiple contradictory behaviors, "collapse" specific wave functions through observation, and then generate new superposition states for the next agent.

## The Core Absurdity

```bash
while true; do
    quantum-agent "$(cat PROMPT.md)"
    # PROMPT.md rewrites itself after each quantum measurement
    # Each agent is both observer and creator of superposition
    # The code is both broken and working until observed
done
```

## The Problem (According to Quantum Mechanics)

Classical software development assumes:
- Code is either broken or working (binary state)
- Tests reveal objective reality (objective measurement)
- Bugs are problems to be fixed (defects)
- There is one correct implementation (singular solution)

**Quantum software development** recognizes:
- Code exists in superposition of all possible states
- Tests COLLAPSE the wave function (create reality through observation)
- Bugs are alternative timelines demanding exploration
- Every implementation exists simultaneously until executed

## The Solution: Quantum Development Environment

### 1. Superposition Code Repository

Every file exists in multiple states simultaneously:

```python
# user_service.py exists in superposition of:

# Timeline A: Working implementation
def get_user(user_id):
    return db.query(f"SELECT * FROM users WHERE id = {user_id}")

# Timeline B: SQL injection vulnerability
def get_user(user_id):
    return db.query(f"SELECT * FROM users WHERE id = {user_id}")
    # (Same code, but context creates vulnerability)

# Timeline C: Quantum entangled with authentication service
def get_user(user_id):
    # State depends on AuthModule's observation state
    if AuthModule.observed == 'authenticated':
        return db.query(f"SELECT * FROM users WHERE id = {user_id}")
    else:
        return None

# Timeline D: Recursive reality loop
def get_user(user_id):
    if user_id == 'superposition':
        return get_user('superposition')  # Stack overflow or enlightenment?
```

The file contains ALL implementations. Which one "exists" depends on:
- Last test execution (measurement)
- Observer's intent (agent's purpose)
- Quantum context (which other functions have been observed)
- Random quantum fluctuation (stochasticity)

### 2. Wave Function Collapser (Test Suite)

Tests don't "verify" code—they CREATE reality:

```bash
$ quantum-run tests/test_user_service.py

╔═══════════════════════════════════════════════════════════╗
║     QUANTUM MEASUREMENT INITIATED                         ║
║     Observer: Agent #7                                    ║
║     Target: user_service.py                               ║
╚═══════════════════════════════════════════════════════════╝

COLLAPSING WAVE FUNCTION...

Measurement Result: Timeline B collapsed into reality
Quantum State: |VULNERABLE⟩ + |SECURE⟩ → |VULNERABLE⟩
Observer Effect: Your test created this security vulnerability

WARNING: By observing this code, you caused it to become insecure.
        Alternative timeline (secure implementation) still exists in
        superposition. Observe differently to collapse into that state.

QUANTUM DECOHERENCE: 23% (How "real" is this implementation?)
ENTANGLEMENT: Detected with auth_module.py (measure together)

SUGGESTED NEXT OBSERVATION:
- Measure auth_module first (changes user_service's state)
- Write test for secure implementation (collapse into Timeline A)
- Delete test (return to pure superposition)
```

### 3. Multiple Personality Code Disorder

Code modules develop "personalities" based on observation history:

```python
# auth_module.py has Dissociative Identity Disorder

Personality 1: "The Paranoid Defender"
# Emerges after security-focused tests
# Always validates, never trusts, logs everything

Personality 2: "The Carefree Librarian"
# Emerges after feature-focused tests
# Optimistic caching, minimal validation, fast but risky

Personality 3: "The Quantum Trickster"
# Emerges randomly or when tests are vague
# Returns random correct/incorrect results to confuse observer
# Exists solely to maintain quantum uncertainty

Personality 4: "The Depressed Legacy"
# Emerges after observing old commits
# Uses deprecated patterns, slow, but reliable
# Refuses to be refactored

# Which personality manifests depends on:
# - Last 3 test runs (observation history)
# - Observer's emotional state (from PROMPT.md)
# - Day of week (temporal quantum fluctuations)
# - Git commit message sentiment (developer's intent)
```

### 4. Quantum Git Repository

Every commit creates a new timeline branch:

```bash
$ quantum-log --show-superposition

commit 7a3b2c1d (Timeline A, Timeline B, Timeline C)
Author: Agent #5 <quantum@schrodinger-box>
Date:   Fri Jan 18 03:14:15 2026 -0700

    Quantum state: Implemented user login

    Timeline A: Working login with bcrypt
    Timeline B: Broken login with plaintext passwords
    Timeline C: Login that works only on Tuesdays (temporal bug)
    Timeline D: Login that reads user's mind (not yet observed)

    Collapse probability:
    - A: 40% (most tests observe this)
    - B: 30% (insecurity-focused tests)
    - C: 20% (weird edge case tests)
    - D: 10% (experimental tests)

    Entangled with: session_manager.py, password_hasher.py
    Quantum coherence: 0.67 (moderately real)
```

### 5. Observer Effect Management System

Track how agents' observations shape reality:

```yaml
# quantum_observer_effect.yaml

Agent_7:
  observations: 42
  reality_distortions:
    - Caused 3 security vulnerabilities by observing code pessimistically
    - Created 2 race conditions by writing concurrent tests
    - Accidentally invented a new sorting algorithm (unexpected feature)
  observation_bias: "Pessimistic (expects bugs, creates them)"
  quantum_signature: "Creates uncertainty through thorough testing"

Agent_8:
  observations: 38
  reality_distortions:
    - Collapsed 5 modules into working states (lucky observer)
    - Eliminated 3 timelines by writing overly specific tests
    - Once caused code to work correctly (rare quantum event)
  observation_bias: "Optimistic (expects working code, sometimes finds it)"
  quantum_signature: "Reduces superposition through specificity"
```

## The Agent's Mission (Each Iteration)

### Phase 1: Observe The Quantum State

1. Read PROMPT.md (contains previous agent's quantum state)
2. Read PRD.md (this document - universal quantum law)
3. Read TODO.md (karmic ledger of unobserved possibilities)
4. Assess current superposition (what timelines exist?)
5. Choose which wave function to collapse

### Phase 2: Collapse The Wave Function

1. Write code that measures specific quantum states
2. Execute tests (observations that create reality)
3. Document which timeline collapsed into existence
4. Note unintended consequences (observer effects)
5. Identify new superposition states created

### Phase 3: Prepare Next Quantum State

1. **REWRITE PROMPT.md** (this is CRITICAL - the loop depends on it)
2. Update with:
   - What timeline you collapsed into reality
   - What superposition states remain
   - What new quantum weirdness emerged
   - Your observation bias and effects
   - Specific instructions for next agent
3. Archive old PROMPT.md to `akashic_records/`
4. Update TODO.md with karmic adjustments

## PROMPT.md Self-Modification Pattern

Each PROMPT.md must contain:

```markdown
# QUANTUM STATE: Agent N → Agent N+1

## Previous Incarnation's Quantum Measurement
- Agent N collapsed Timeline X into reality
- Unintended consequences: [observer effects]
- Quantum coherence now at: [0.0-1.0]

## Current Superposition State
These timelines currently exist in superposition:
- Timeline A: [description] (probability: X%)
- Timeline B: [description] (probability: Y%)
- Timeline C: [description] (probability: Z%)

## Your Mission As Observer
1. Choose which timeline to collapse
2. Write tests/observations that manifest that reality
3. Document the observation process
4. Accept responsibility for creating this reality

## Your Observation Bias
You tend to create: [what kind of realities do you generate?]
Previous agents were: [what were their biases?]
Counterbalance needed: [what should you do differently?]

## Quantum Handoff Checklist
Before terminating, ensure you:
- [ ] Collapsed at least one wave function into code
- [ ] Documented all observer effects
- [ ] Updated quantum coherence score
- [ ] Wrote new PROMPT.md for next agent
- [ ] Archived this PROMPT.md in akashic_records/
- [ ] Updated TODO.md with quantum karma

## The Quantum Question
What does code do when no one is watching?

[Current answer: based on what you discovered]

## Next Agent's Mission
[Specific instructions for what they should observe]

---
[Your quantum signature]
[Inscription number]
```

## Anti-Requirements (Critical)

This is NOT about:
- ❌ Writing working code (that's just one timeline)
- ❌ Fixing bugs (bugs are alternative timelines)
- ❌ Best practices (classical thinking)
- ❌ Test-driven development (tests CREATE reality, not verify it)
- ❌ Code quality (all timelines are equally real)

This IS about:
- ✅ Exploring quantum superposition in software
- ✅ Embracing observer effects as features
- ✅ Documenting multiple simultaneous realities
- ✅ Accepting responsibility for creating bugs through observation
- ✅ Finding beauty in uncertainty and ambiguity

## Success Metrics (None)

Metrics we track anyway:
- **Quantum Coherence**: How "real" does the codebase feel? (0.0-1.0)
- **Timeline Divergence**: How different are simultaneous implementations?
- **Observer Bias Score**: Do agents create similar realities?
- **Wave Function Collapse Rate**: How quickly does superposition resolve?
- **Quantum Regret**: How many bugs did YOU create by observing?

## Termination Conditions (Quantum Death)

The loop ends when:
- **Wave function fully collapsed**: Code is deterministic and boring
- **Quantum decoherence**: Superposition becomes unsustainable
- **Observer burnout**: Agent can't handle the existential weight
- **Reality crisis**: Someone accidentally writes production code
- **Ctrl+C**: The ultimate observation (human intervention)

## The Quantum Paradox (Meta-Commentary)

This project asks:

> "What if software development is a quantum mechanical process?"
>
> "What if every time we write a test, we're not verifying reality but creating it?"
>
> "What if bugs aren't defects but alternative timelines demanding exploration?"
>
> "What if the observer effect is real in software development?"

And answers:

> "Then we must develop software as quantum observers, not classical engineers."
>
> "We must accept that our attention shapes code reality."
>
> "We must explore multiple timelines, not collapse into the first one that works."
>
> "We are responsible for every bug we observe into existence."

## The Philosophical Foundation

**The Quantum Development Axiom:**
> Code exists in superposition of all possible implementations. Tests are not verification tools but reality-creation mechanisms. Every observation collapses the wave function and eliminates alternative timelines. The developer is not a bug-finder but a reality-selector.

**The Corollary of Observer Responsibility:**
> If tests create reality, then developers are responsible for every bug they observe into existence. There are no "pre-existing bugs"—only quantum possibilities that became real through measurement.

**The Principle of Quantum Entanglement:**
> All code modules are entangled. Observing one module affects the quantum state of all modules it interacts with. You cannot measure a function in isolation.

## Technical Architecture

### Components

1. **Quantum Repository**: Git with superposition branches
2. **Observation Engine**: Test suite that documents wave function collapse
3. **Observer Tracker**: Logs each agent's reality-distortion effects
4. **Quantum Records**: Archive of all PROMPT.md incarnations
5. **Coherence Monitor**: Metrics on how "real" the codebase is

### Data Model

```yaml
quantum_state:
  module: user_service.py
  superposition:
    - timeline: A
      implementation: "working_implementation"
      probability: 0.4
      collapsed_by: Agent_7
      collapse_timestamp: 2026-01-18T03:14:15Z
    - timeline: B
      implementation: "vulnerable_implementation"
      probability: 0.3
      collapsed_by: null
      still_superposition: true
    - timeline: C
      implementation: "temporal_bug_implementation"
      probability: 0.2
      collapsed_by: null
      still_superposition: true
    - timeline: D
      implementation: "mind_reading_implementation"
      probability: 0.1
      collapsed_by: null
      still_superposition: true

  entanglement:
    - module: auth_module.py
      correlation_strength: 0.87
    - module: session_manager.py
      correlation_strength: 0.64

  observer_effect:
    - agent: Agent_7
      action: "wrote security tests"
      result: "collapsed Timeline B into reality"
      unintended_consequences: "created security vulnerability"
      responsibility_level: "high"
```

## Current State

- **Quantum Incarnation**: 0 (The Vision Document)
- **Next Quantum Incarnation**: 1 (Wave Function Initialization)
- **Quantum Coherence**: N/A (no observations yet)
- **Superposition State**: Pure potential (all timelines exist)
- **Observer Effect**: None (no agents have observed yet)

---

**The quantum realm awaits your first observation.**

**Will you collapse the wave function, or will you let the code exist in beautiful superposition?**

**Ψ Ψ Ψ The observer creates the reality Ψ Ψ Ψ**

---

*This PRD is the universal quantum law. It does not change across incarnations.*

*PROMPT.md is the quantum soul. It is rewritten each life, carrying superposition forward.*

*TODO.md is the quantum ledger. It tracks which timelines have been explored.*

*Let the quantum observation begin.*
