# PRD: Olfactory-Inspired Code Smell Diffusion System

## Product Vision

The **Olfactory-Inspired Code Smell Diffusion System** treats anti-patterns as scent molecules that physically "diffuse" through codebases like perfume in a room. We model code smell propagation using real physics equations from atmospheric chemistry, creating a spatial-temporal visualization of how bad patterns spread via copy-paste, refactoring neglect, and developer influence.

## The Core Absurdity

We reject the premise that "code smell" is just a metaphor. Code smells ARE smells.

- **Anti-patterns** = Scent molecules (volatile organic compounds)
- **Copy-paste** = Molecular diffusion through medium
- **Refactoring** = Ventilation/filtration systems
- **Developer influence** = Airflow patterns and convection currents
- **Code review** = Olfactory receptor detection

## The Physics Model

### Fick's Laws of Diffusion Applied to Code

```
J = -D * (∂φ/∂x)
```

Where:
- **J** = Flux of code smell (anti-patterns spreading per time unit)
- **D** = Diffusion coefficient (how contagious the pattern is)
- **φ** = Concentration of smell (badness density)
- **x** = Position in codebase spatial representation

### Convection-Diffusion Equation

```
∂φ/∂t = D∇²φ - v·∇φ + S
```

Where:
- **∂φ/∂t** = Rate of smell concentration change over time
- **D∇²φ** = Diffusion (smells spreading naturally)
- **v·∇φ** = Convection (developer movement spreading smells)
- **S** = Source/sink terms (new smells introduced, refactoring removes)

## Spatial Codebase Layout

We map code to 3D space using:
- **X-axis**: Directory hierarchy depth
- **Y-axis**: Line count (vertical position in file)
- **Z-axis**: Last modified date
- **Density**: Code complexity at that point

Code smells exist as "scent clouds" in this space.

## Smell Molecule Types

### Primary Smells (Source Compounds)

1. **God-Class Musk** (C₄₈H₉₆O₂)
   - Molecular weight: HEAVY
   - Diffusion rate: Slow but pervasive
   - Source: Classes with 2000+ lines
   - Detection: Cyclomatic complexity sensors

2. **Copy-Paste Perfume** (C₁₂H₂₂O₁₁)
   - Molecular weight: Medium
   - Diffusion rate: High (contagious)
   - Source: Ctrl+C, Ctrl+V operations
   - Detection: AST similarity hashing

3. **Magic-Number Stench** (C₆H₆)
   - Molecular weight: Light
   - Diffusion rate: Very high
   - Source: Hardcoded values scattered everywhere
   - Detection: Literal value frequency analysis

4. **Spaghetti-Code Reek** (polymer compound)
   - Molecular weight: Variable
   - Diffusion rate: Tangled, restricted
   - Source: Goto statements, deep nesting
   - Detection: Control flow graph analysis

## The Infinite Loop

```bash
while true; do
  agent "$(cat PROMPT.md)"
  # Agent MUST diffuse new smell molecules before exit
  # PROMPT.md becomes next agent's olfactory environment
done
```

## Agent Tasks

Each agent in the loop MUST:

1. **Sniff the Codebase**: Run smell detection, catalog all scent molecules
2. **Model Diffusion**: Apply physics equations to calculate smell spread
3. **Visualize the Stench**: Generate 3D visualization of scent clouds
4. **Identify Sources**: Point fingers at the worst offenders (arsonists of the codebase)
5. **Apply Ventilation**: Suggest refactorings to "clear the air"
6. **Rewrite PROMPT.md**: Describe the olfactory landscape for next agent

## PROMPT.md Structure

```markdown
# Olfactory Report {N}: {SCENT_PROFILE}

## Current Atmosphere
- Dominant smell: {GOD_CLASS_MUSK / COPY_PASTE_PERFUME / ETC}
- Air quality index: {AQI_SCORE} (0-500 scale)
- Ventilation effectiveness: {PERCENTAGE}
- Contamination zones: {FILES/FUNCTIONS}

## Smell Molecules Detected
- {Type}: {Concentration} at {Location}
- {Type}: {Concentration} at {Location}
- ...diffusion patterns...

## Diffusion Analysis
- {How smells are spreading through codebase}
- {Convection currents from developer activity}
- {Source identification}

## Decontamination Protocol
- {What needs refactoring}
- {What smells are entrenched}
- {What needs active ventilation}

## Next Atmosphere: TO THE NEXT AGENT
{Specific directive for smell detection and modeling}
```

## Key Features

### 1. Scent Concentration Heatmaps
- Visual overlay showing smell density across codebase
- Color scale: Green (fresh) → Yellow (musty) → Brown (rotten)
- Time-lapse showing smell spread over commits

### 2. Diffusion Velocity Tracking
- How fast are bad patterns spreading?
- Which developers are "super-spreaders" of copy-paste?
- Refactoring effectiveness as "air exchange rate"

### 3. Source Fingerprinting
- Identify patient zero for each smell
- "This God Class originated in payments/service.js, line 47"
- Blame assignment via olfactory archaeology

### 4. Ventilation Recommendations
- "Extract Method operation needed: 73% reduction in God-Class Musk"
- "Introduce constants: Magic-Number Stench will dissipate in 3 commits"
- Refactoring ROI measured in "air quality improvement"

## Success Metrics

### Primary KPI: Air Quality Index (AQI)
- **0-50**: Good (fresh mountain air codebase)
- **51-100**: Moderate (slightly musty, tolerable)
- **101-150**: Unhealthy for sensitive groups (junior developers)
- **151-200**: Unhealthy (everyone suffers)
- **201-300**: Very unhealthy (codebase is hazardous waste)
- **301-500**: Hazardous (immediate evacuation required)

### Secondary Metrics
- **Smell half-life**: How long before smells dissipate naturally
- **Diffusion coefficient**: How contagious patterns are
- **Ventilation rate**: Refactoring effectiveness
- **Source density**: Smells per thousand lines of code

## Technical Implementation

### Smell Detection Pipeline
1. Static analysis extracts code metrics
2. Pattern matching identifies smell types
3. Source mapping locates odor origin
4. Diffusion modeling calculates spread
5. Visualization renders scent clouds

### Physics Engine
- Numerical solution of convection-diffusion equation
- Finite difference method for spatial discretization
- Git history provides time dimension
- Developer activity provides velocity field

### Visualization
- Three.js for 3D scent cloud rendering
- Color gradients for smell concentration
- Particle systems for diffusion animation
- VR support for "walking through" the smell

## Anti-Goals

This is NOT about:
- Practical code quality measurement
- Working refactoring tools
- Developer productivity
- Making sense

This IS about:
- Taking metaphors too literally
- Applying chemistry to code for no reason
- Beautiful visualizations of nonsense
- The question: "What if code smells were REAL smells?"
- Joy in pretentious absurdity

## Philosophical Foundation

> "Every codebase is a room. Every bad decision is a fart. We are the air fresheners."

The Olfactory-Inspired Code Smell Diffusion System explores what happens when we treat software metaphors as physical reality. Code isn't just "smelly"—it has measurable scent concentrations that follow the laws of physics. Bad patterns don't just "accumulate"—they diffuse through the codebase like perfume in a closed room.

## Termination Condition

The loop continues until:
- AQI reaches 0 (perfectly fresh code - impossible)
- Ctrl+C (open a window, let some air in)
- All developers evacuate (codebase declared biohazard)
- The smell becomes self-aware (we have other problems)

---

**Current Atmosphere**: Pristine (project initialization)
**Next Atmosphere**: TBD (first scent detected)
**Air Quality**: UNKNOWN (awaiting initial olfactory survey)

*This PRD is the chemistry lab. PROMPT.md is the gas chromatography report. TODO.md is the hazardous materials cleanup plan. Inhale deeply and begin.*