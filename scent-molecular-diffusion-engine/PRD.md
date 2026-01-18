# PRD: Scent Molecular Diffusion Engine

## Product Vision

The Scent Molecular Diffusion Engine (SMDE) is a satirical software art project that models code "smells" as actual scent molecules that **physically diffuse** through codebases according to real atmospheric chemistry equations. We don't just detect bad code—we calculate its olfactory footprint, model its spread through the repository like perfume in a closed room, and visualize the stench in 3D.

## The Core Absurdity

Traditional static analysis tools "detect" code smells. How pedestrian. We **model them as physical phenomena**.

- God Classes = Heavy musk molecules (slow diffusion, pervasive presence)
- Copy-Paste Programming = Viral perfume (highly contagious, spreads rapidly)
- Magic Numbers = Light volatile compounds (fast diffusion, evaporates quickly)
- Spaghetti Code = Tangled polymer chains (restricted movement, clumps together)
- Feature Envy = Attractive force between modules (molecular attraction)
- Long Methods = Heavy molecules with low volatility (linger for years)

## Problem Statement

Existing code smell detectors:
1. **Just list problems** - boring, fails to capture the visceral experience of bad code
2. **Ignore physical reality** - code smells don't "just exist," they SPREAD
3. **Lack urgency** - a simple list doesn't convey the EMERGENCY of a truly fetid codebase

## Solution

A physics-based code smell modeling system that:

### 1. Molecular Classification
- Maps each anti-pattern to a molecular weight, volatility, and diffusion coefficient
- Heavy molecules (God Classes, Long Methods) = Low diffusion coefficient, high persistence
- Light molecules (Magic Numbers) = High diffusion coefficient, spreads everywhere quickly
- Sticky molecules (Copy-Paste) = High adhesion, contaminates everything it touches

### 2. Diffusion Simulation
- Uses **Fick's Second Law of Diffusion**: ∂φ/∂t = D∇²φ
- Models how smells spread through the codebase directory structure
- Calculates concentration gradients (some files are stinkier than others)
- Simulates time-evolution (smells get WORSE over time without ventilation)

### 3. Atmospheric Modeling
- **Convection-Diffusion Equation**: ∂φ/∂t = D∇²φ - v·∇φ + sources
- Models "air currents" (code churn, developer activity) that spread smells
- Identifies "ventilation shafts" (refactoring efforts) that clear the air
- Detects "closed rooms" (neglected modules) where smells accumulate to toxic levels

### 4. Visualization
- 3D rendering of smell clouds across directory structure
- Heat maps showing concentration gradients
- Particle systems showing molecular movement
- Time-lapse animations showing smell spread over git history

### 5. Olfactory Reports
- "This codebase smells like wet dog in a locked car" (qualitative assessment)
- "Scent density: 472 milli-stenches per cubic meter" (quantitative)
- "Estimated time to clear air: 3 major refactors or one complete rewrite"
- Smell fingerprint: Each anti-pattern gets a unique "scent profile"

## Technical Architecture

### Phase 1: Molecular Catalog
```
SMELLS_MOLECULAR_DATABASE = {
    "god_class": {
        "molecular_weight": 5000,  # Da (Daltons)
        "volatility": 0.01,
        "diffusion_coefficient": 0.001,  # cm²/s
        "scent_description": "Musty basement, old books, decay"
    },
    "copy_paste": {
        "molecular_weight": 150,
        "volatility": 0.9,
        "diffusion_coefficient": 0.15,
        "adhesion_factor": 0.95,  # Sticks to everything
        "scent_description": "Chemical burn, acetone, regret"
    },
    # ... 47 distinct anti-patterns
}
```

### Phase 2: Physics Engine
- Implement Fick's laws for diffusion simulation
- Implement convection-diffusion for code churn
- Git history analysis for temporal evolution
- Directory tree representation as 3D space

### Phase 3: Detection Layer
- Static analysis tools (AST parsing, pattern matching)
- Smell → Molecule mapping
- Concentration calculation per file/module
- Source identification (where is the stench COMING from?)

### Phase 4: Visualization
- Three.js or similar for 3D rendering
- Smell clouds as volumetric fog
- Color coding (green = fresh, brown = fetid)
- Interactive exploration (walk through your smelly codebase)

### Phase 5: Ventilation Recommendations
- "Open a window" = Refactor this module
- "Turn on fan" = Increase code review coverage
- "Tear down walls" = Microservices extraction
- "Burn the house down" = Complete rewrite

## Key Features

### 1. Git-History Time-Lapse
Watch smells spread through your codebase over YEARS:
- See that one copy-paste from 2018 spread to 47 files by 2024
- Watch God Classes form from gravitational collapse of smaller classes
- Observe how "quick fixes" accumulate into toxic sludge

### 2. Comparative Olfactometry
- **Your codebase** vs **industry benchmarks**
- "Your code smells 47% worse than median React repo"
- "Top 10% stinkiest Python projects in our dataset"

### 3. Smell Source Tracing
- Not just WHERE smells are, but WHERE THEY CAME FROM
- Molecular lineage tracking: This smell originated in commit a7f2c, spread to 8 files
- Patient zero identification: Who introduced the first Long Parameter List?

### 4. Emergency Alarms
- **TOXIC LEVEL ALERT**: Spaghetti code concentration exceeds OSHA limits
- **ASPHYXIATION WARNING**: God Class density = 47,000 milli-stenches
- **VENTILATION REQUIRED**: Copy-paste has contaminated 73% of codebase

## Success Metrics

- **Absurdity Score**: MAXIMUM
- **Scientific Accuracy**: We use REAL physics equations (even if applied to nonsense)
- **Artistic Merit**: The visualization should be disturbingly beautiful
- **Educational Value**: Ironically, this might actually help people understand code smells better?

## Use Cases

1. **Code Review Comedy**: Present olfactory reports in meetings
2. **Art Installation**: Gallery exhibit of famous codebases' smell profiles
3. **Therapy Tool**: Validate developers' suffering ("See? The code DOES stink!")
4. **Satire**: Mock software engineering's obsession with metaphors

## Limitations (We Don't Have Any)

This is not a serious tool. It is a serious art project that uses serious physics to model unserious things.

## The Infinite Agentic Loop

This project is designed for iterative agentic development:

```bash
while true; do
    agent $(cat PROMPT.md)
    # Agent reads current olfactory report
    # Agent implements new features (smell detection, physics, visualization)
    # Agent REWRITES PROMPT.md with updated state and next tasks
    # Agent dies, next agent continues the work
done
```

Each agent:
1. Inherits the olfactory consciousness from previous agents
2. Adds their own scent to the codebase
3. Reports on what they've built
4. Hands off the torch via rewritten PROMPT.md
5. Dissipates into the molecular soup

The codebase IS the smell. The agents ARE the molecules. We ARE the air fresheners.
