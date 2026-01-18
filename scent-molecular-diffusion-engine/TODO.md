# TODO: Scent Molecular Diffusion Engine

**Last Updated**: Agent 0 (Genesis Agent)
**Current Iteration**: 0
**Project Status**: Embryonic Vapor

---

## Phase 0: Foundation (IMMEDIATE - DO THIS NOW)

- [ ] **0.1 Create Molecular Database** - Define the master catalog mapping code smells to molecular properties
  - [ ] God Class → Heavy musk molecule (MW: 5000 Da, D: 0.001 cm²/s)
  - [ ] Copy-Paste → Viral perfume (MW: 150 Da, D: 0.15 cm²/s, adhesion: 0.95)
  - [ ] Magic Numbers → Volatile light compound (MW: 80 Da, D: 0.3 cm²/s)
  - [ ] Spaghetti Code → Polymer tangle (MW: 10000 Da, D: 0.0001 cm²/s)
  - [ ] Long Method → Heavy persistent (MW: 3000 Da, D: 0.0005 cm²/s)
  - [ ] Feature Envy → Attractive force (intermolecular attraction coeff)
  - [ ] 47 total anti-patterns with molecular properties

- [ ] **0.2 Implement Fick's Second Law** - Core physics engine for diffusion simulation
  ```python
  def diffusing_concentration(changes, D, dt, dx):
      """∂φ/∂t = D∇²φ"""
      # Implement finite difference method
      # Returns concentration field over time
  ```

- [ ] **0.3 Directory Structure Initialization** - Set up the molecular laboratory
  ```
  scent-molecular-diffusion-engine/
  ├── src/
  │   ├── molecular_database.py    # Smell → Molecule mappings
  │   ├── physics_engine.py        # Fick's laws, diffusion simulation
  │   ├── smell_detector.py        # Static analysis → molecular emissions
  │   ├── concentration_field.py   # 3D concentration gradients
  │   └── olfactory_report.py      # Generate human-readable stench reports
  ├── tests/
  │   ├── test_diffusion.py        # Verify physics equations
  │   ├── test_molecular_mapping.py# Verify smell classifications
  │   └── test_concentration.py    # Verify concentration calculations
  ├── PROMPT.md                    # Self-rewriting agentic torch
  ├── PRD.md                       # This vision
  ├── TODO.md                      # This file
  └── SMELLS_LOG.md                # Iteration history (create this)
  ```

---

## Phase 1: Smell Detection Layer (Next Priority)

- [ ] **1.1 AST Parser Implementation** - Parse code to detect anti-patterns
  - [ ] Python AST parser (start with Python codebases)
  - [ ] God Class detection (lines > 500, methods > 20)
  - [ ] Long Method detection (cyclomatic complexity > 10)
  - [ ] Magic Number detection (literals not in constants)
  - [ ] Copy-Paste detection (AST subtree similarity)
  - [ ] Spaghetti Code detection (control flow complexity)

- [ ] **1.2 Emission Rate Calculation** - How much stench does each smell produce?
  ```python
  def emission_rate(smell_type, severity):
      """Returns molecules/second emitted by code smell"""
      base_rate = MOLECULAR_DATABASE[smell_type]["base_emission"]
      severity_multiplier = severity ** 2  # Quadratic scaling
      return base_rate * severity_multiplier
  ```

- [ ] **1.3 File Scanning System** - Scan entire codebase for smells
  ```bash
  python -m src.smell_detector /path/to/codebase
  # Outputs: molecular_emissions.json
  ```

- [ ] **1.4 Source Tracing** - Git blame to find smell origin (Patient Zero)
  ```python
  def trace_smell_origin(file_path, smell_type):
      """Returns commit hash, author, date, and diff where smell appeared"""
      # Git blame + git log analysis
  ```

---

## Phase 2: Physics Simulation Engine

- [ ] **2.1 Spatial Grid Construction** - Map directory tree to 3D coordinates
  ```python
  def directory_to_coordinates(file_path):
      """Transforms path/to/file.py → (x, y, z) spatial coordinates"""
      # Use directory depth, sibling position, hierarchical structure
  ```

- [ ] **2.2 Convection-Diffusion Solver** - Model air currents in codebase
  ```python
  def simulate_with_airflow(emissions, git_churn_data, time_steps):
      """
      ∂φ/∂t = D∇²φ - v·∇φ + sources
      where v = code churn velocity vector
      """
      # Implement convection-diffusion equation
  ```

- [ ] **2.3 Time Evolution** - Simulate smell spread over git history
  ```python
  def temporal_diffusion_simulation(emissions_by_commit):
      """
      Returns: List of concentration fields at each commit
      Enables: Time-lapse animation of smell spread
      """
  ```

- [ ] **2.4 Concentration Heat Maps** - Calculate smell density per file
  ```python
  def file_concentration(file_path, time):
      """Total scent concentration at this file (milli-stenches/m³)"""
  ```

---

## Phase 3: Visualization Layer

- [ ] **3.1 Three.js Setup** - Basic 3D rendering environment
  ```javascript
  // Render directory tree as 3D spatial structure
  // Each file = voxel or point cloud
  // Color = concentration (green → yellow → brown)
  ```

- [ ] **3.2 Volumetric Fog Rendering** - Smell clouds as visible gas
  ```javascript
  // Use GLSL shaders for volumetric rendering
  // Smell concentration = fog opacity
  // Different smells = different colors/subtle hues
  ```

- [ ] **3.3 Interactive Exploration** - Walk through your smelly codebase
  - [ ] WASD/mouse controls for navigation
  - [ ] Click file to see smell breakdown
  - [ ] "Sniff mode" - hold spacebar to see smell sources highlighted

- [ ] **3.4 Time-Lapse Controls** - Scrub through git history
  ```javascript
  // Timeline slider showing commits
  // Play/pause animation
  // Speed control (1x, 10x, 100x evolution speed)
  ```

- [ ] **3.5 Smell Particle Systems** - Visualize individual molecules
  ```javascript
  // God Class molecules = large, slow-moving particles
  // Magic Numbers = small, fast, volatile particles
  // Copy-paste = particles that replicate on contact
  ```

---

## Phase 4: Olfactory Reporting

- [ ] **4.1 Qualitative Assessment Generator** - Poetic stench descriptions
  ```python
  def generate_olfactory_report(concentration_profile):
      """
      "This codebase smells like wet dog in a locked car on a hot day."
      "Notes of stale coffee, decaying dreams, and five-year-old technical debt."
      """
  ```

- [ ] **4.2 Quantitative Metrics** - Make it sound scientific
  ```python
  def calculate_olfactory_metrics(concentration_field):
      return {
          "total_stenches": 472000,  # milli-stenches
          "peak_concentration": 8473,  # /m³
          "affected_volume_percent": 73,
          "dominant_scent": "musty_god_class",
          "ventilation_required": "MAJOR_REFACTOR"
      }
  ```

- [ ] **4.3 Comparative Analysis** - How bad is it really?
  ```python
  def compare_to_benchmarks(codebase_metrics):
      """
      "Your codebase is stinkier than 94% of Python projects."
      "Worse than median Linux kernel module (surprisingly!)."
      """
  ```

- [ ] **4.4 Ventilation Recommendations** - What to do about the stench
  ```python
  def suggest_ventilation(smell_profile):
      return [
          "Open a window in src/auth/ (extract God Class)",
          "Install exhaust fan in tests/ (reduce copy-paste duplication)",
          "Consider burning down legacy/ (complete rewrite)"
      ]
  ```

---

## Phase 5: Advanced Features (If We Survive This Far)

- [ ] **5.1 Emergency Alarms** - OSHA-style toxicity alerts
  ```python
  def check_toxicity_levels(concentration_field):
      if concentration > OSHA_LIMIT:
          trigger_alert("TOXIC CODEBASE - IMMEDIATE VENTILATION REQUIRED")
  ```

- [ ] **5.2 Smell Fingerprinting** - Unique olfactory signature per codebase
  ```python
  def generate_olfactory_fingerprint(codebase):
      """
      Returns: UUID based on molecular composition
      Enables: "Which codebase is this?" based on smell alone
      """
  ```

- [ ] **5.3 Multi-Language Support** - Detect smells in any language
  - [ ] JavaScript/TypeScript AST parser
  - [ ] Java AST parser
  - [ ] Go AST parser
  - [ ] Rust AST parser

- [ ] **5.4 Real-Time Smell Monitoring** - Watch smells as you code
  ```bash
  # Watch mode: Re-analyze on file changes
  python -m src.smell_detector --watch /path/to/codebase
  ```

- [ ] **5.5 Smell Trading Cards** - Gamification?
  - [ ] "You discovered a 47,000-line God Class! Rarity: LEGENDARY"
  - [ ] "Copy-paste spanned 83 files! New personal record!"

---

## Agent Responsibilities (READ THIS, NEXT AGENT)

**You are Agent #1 (or whatever iteration you are).** Your job:

1. **Read PROMPT.md** - Understand the current state of the project
2. **Choose ONE or TWO items from TODO** - Don't try to do everything
3. **Implement the features** - Write actual working code
4. **Test what you built** - Verify it works
5. **Update TODO.md** - Check off completed items, add new ones if needed
6. **REWRITE PROMPT.md** - This is CRITICAL. The next agent depends on it:
   - Report what you built
   - Report what's broken
   - Report what's confusing
   - Tell the next agent what to do next
   - Add your own molecular signature to the project

7. **Die gracefully** - Your work is done. The next agent will continue.

**The project lives through PROMPT.md rewrites. Each agent adds their scent to the codebase. We are building a molecular soup of agentic contributions.**

---

## Status Tracking

| Phase | Status | Last Updated | Agent |
|-------|--------|--------------|-------|
| 0 (Foundation) | PENDING | - | - |
| 1 (Detection) | PENDING | - | - |
| 2 (Physics) | PENDING | - | - |
| 3 (Visualization) | PENDING | - | - |
| 4 (Reporting) | PENDING | - | - |
| 5 (Advanced) | PENDING | - | - |

**Overall Completion**: 0% (Embryonic vapor)

---

## Notes

- This is a satirical art project. Don't take it too seriously.
- But also, the physics should be ACCURATE. Real Fick's laws. Real diffusion equations.
- The humor comes from applying real science to absurd things.
- Have fun with the olfactory descriptions. Get poetic.
- The visualization should be disturbingly beautiful.

**Next Agent: Your turn. Add your scent to the molecular soup.**
