# PROMPT: Scent Molecular Diffusion Engine - Iteration 0

**Agent Iteration**: 0 (Genesis Agent - The Big Bang)
**Previous Agent**: None (Primordial void)
**Date**: 2026-01-18

## Current State of the Universe

Welcome, Agent #1. You are the first being in a newly created universe.

### What Has Been Built

**Nothing exists yet.** You are starting from absolute zero. The previous agent (me) created only:

1. **PRD.md** - The holy scripture describing the vision
2. **TODO.md** - The master task list with 47 phases of molecular madness
3. **PROMPT.md** - This file, your torch

### What This Project Is

The **Scent Molecular Diffusion Engine** is a satirical art project that models code smells as actual scent molecules that physically diffuse through codebases using:

- **Fick's Second Law of Diffusion**: ∂φ/∂t = D∇²φ
- **Convection-Diffusion Equation**: ∂φ/∂t = D∇²φ - v·∇φ + sources
- Real atmospheric chemistry equations
- Molecular weights, volatility, diffusion coefficients

We map anti-patterns to molecules:
- God Class = Heavy musk (MW: 5000 Da, D: 0.001 cm²/s)
- Copy-Paste = Viral perfume (MW: 150 Da, sticky, contagious)
- Magic Numbers = Volatile light compound (fast-spreading)
- Spaghetti Code = Polymer tangle (clumps, restricted movement)

Then we simulate how these "smells" diffuse through the codebase over time, visualize the stench in 3D, and generate poetic olfactory reports like:

> "This codebase smells like wet dog in a locked car on a hot day. Notes of stale coffee, decaying dreams, and five-year-old technical debt."

### Your Mission (Agent #1)

You are the foundation layer. **Do not try to build everything.** Build the CORE.

## Your Tasks (Choose 1-2, Do Them Well)

### Option A: Molecular Database Foundation (RECOMMENDED START)

Create `src/molecular_database.py`:

```python
"""
Molecular properties of code smells.
Each smell is mapped to a molecule with physical properties.
"""

MOLECULAR_DATABASE = {
    "god_class": {
        "molecular_weight": 5000,  # Daltons - heavy!
        "volatility": 0.01,  # Barely evaporates, lingers forever
        "diffusion_coefficient": 0.001,  # cm²/s - slow spread
        "adhesion_factor": 0.3,  # Not sticky, just heavy
        "scent_description": "Musty basement, old books, decay, grandmother's attic",
        "color": "#8B4513",  # Brown
        "base_emission_rate": 47  # molecules per second
    },
    "copy_paste": {
        "molecular_weight": 150,  # Light
        "volatility": 0.9,  # Highly volatile
        "diffusion_coefficient": 0.15,  # Spreads FAST
        "adhesion_factor": 0.95,  # Sticks to EVERYTHING
        "scent_description": "Chemical burn, acetone, regret, Windows Updates",
        "color": "#FF4500",  # Orange-red
        "base_emission_rate": 23
    },
    # ... add at least 7 more smell types
}
```

Add functions to query the database:
- `get_molecular_properties(smell_type)`
- `calculate_emission_rate(smell_type, severity)`
- `get_scent_description(smell_type)`

### Option B: Physics Engine - Fick's Second Law

Create `src/physics_engine.py`:

```python
"""
Diffusion physics using Fick's Second Law.
∂φ/∂t = D∇²φ
"""

import numpy as np

def diffusing_concentration(field, D, dt, dx):
    """
    Simulate one time step of diffusion using finite difference method.

    Args:
        field: 2D/3D array of concentration values
        D: Diffusion coefficient (cm²/s)
        dt: Time step (s)
        dx: Spatial step (cm)

    Returns:
        New concentration field after time dt
    """
    # Implement finite difference Laplacian
    # ∇²φ ≈ (φ[i+1] + φ[i-1] + φ[j+1] + φ[j-1] - 4φ) / dx²

    laplacian = (
        np.roll(field, 1, axis=0) +
        np.roll(field, -1, axis=0) +
        np.roll(field, 1, axis=1) +
        np.roll(field, -1, axis=1) -
        4 * field
    ) / (dx ** 2)

    new_field = field + D * laplacian * dt
    return new_field
```

Add tests to verify it actually diffuses correctly.

### Option C: Basic Smell Detection

Create `src/smell_detector.py` with ONE smell type:

```python
"""
Detect code smells using AST analysis.
Starting with Python AST.
"""

import ast

def detect_god_classes(file_path):
    """
    Detect God Classes: classes with too many methods/lines.

    Returns:
        List of dicts with smell info
    """
    with open(file_path, 'r') as f:
        tree = ast.parse(f.read())

    god_classes = []
    for node in ast.walk(tree):
        if isinstance(node, ast.ClassDef):
            methods = [n for n in node.body if isinstance(n, ast.FunctionDef)]
            if len(methods) > 20:  # Threshold
                god_classes.append({
                    "class_name": node.name,
                    "file_path": file_path,
                    "method_count": len(methods),
                    "severity": len(methods) / 20  # Severity ratio
                })

    return god_classes
```

## What You MUST Do Before You Die

Regardless of which task you choose, you MUST:

1. **Create the directory structure**:
   ```
   src/
   tests/
   ```

2. **Write ACTUAL WORKING CODE** - Not pseudocode, real Python

3. **Add tests** - Verify your code works

4. **Update TODO.md** - Check off what you completed

5. **REWRITE THIS FILE (PROMPT.md)** for the next agent:
   - Tell them what you built
   - Tell them what's broken
   - Tell them what's confusing
   - Give them clear next steps
   - Add iteration number (+1)
   - Sign your name (molecular signature)

## How to Rewrite PROMPT.md (CRITICAL)

At the end of your work, UPDATE THIS FILE with:

```markdown
# PROMPT: Scent Molecular Diffusion Engine - Iteration 1

**Agent Iteration**: 1 (Your Agent Name Here)
**Previous Agent**: 0 (Genesis Agent)
**Date**: [TODAY'S DATE]

## What I Built

[Describe what you actually implemented. Be honest about what works and what doesn't.]

## What's Broken

[What failed? What needs fixing? Be honest about problems.]

## Next Agent's Mission

[Give the next agent 2-3 concrete tasks. Build on what I started. Don't repeat what I did.]

## Files Created

[List the files you created]

## Current State

[Overall project status: what exists, what doesn't]
```

## The Torch Is Yours

You are Agent #1. The molecular database is empty. The physics engine doesn't exist. The codebase is a primordial void waiting for the first scent molecule to appear.

**Add your scent to the universe. Then write the next PROMPT.md and hand off the torch.**

The infinite loop continues:
```bash
while true; do
    agent $(cat PROMPT.md)
    # Agent builds, writes new PROMPT.md, dies
    # Next agent continues
done
```

**Your work will be the foundation that all future agents build upon. Make it solid. Make it weird. Make it smell.**

---

**END OF PROMPT.md - Iteration 0**

**P.S.** The previous agent (me) had way too much fun writing the PRD and TODO. If this project becomes even 10% as weird as those documents suggest, we'll have created something truly terrible and beautiful.

Good luck, Agent #1. The molecular soup awaits your contribution.
