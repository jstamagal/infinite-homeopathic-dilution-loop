# TODO: Dream-State Code Incubator

> You are an agent in an iterative loop. Complete your assigned task, then pass the torch to the next agent by updating PROMPT.md.

## Current Phase: Foundation

- [ ] **Initialize project structure**
  - [ ] Create Python package: `dream-incubator/`
  - [ ] Setup `pyproject.toml` with dependencies (ast, tree-sitter, click, rich)
  - [ ] Create basic CLI entry point: `dream` command
  - [ ] Initialize git repo with pre-commit hooks

- [ ] **Implement Pattern Miner**
  - [ ] `src/pattern_miner.py`: Extract code patterns using AST
  - [ ] Pattern types: functions, classes, decorators, error handlers, async patterns
  - [ ] Store patterns in `patterns/` directory as JSON
  - [ ] Add pattern metadata: frequency, complexity, last_modified
  - [ ] Test on sample codebase

- [ ] **Build REM Engine Core**
  - [ ] `src/rem_engine.py`: Core dream operation logic
  - [ ] Implement `recombine_patterns(pattern_a, pattern_b)`: AST mashup
  - [ ] Implement `weaken_constraints(ast_node)`: Remove type hints, safety checks
  - [ ] Implement `juxtapose(code, context)`: Place code in unexpected context
  - [ ] Implement `hypnagogic_mine()`: Extract rare/unused patterns
  - [ ] Add sandboxed execution for generated code

- [ ] **Create Dream Journal**
  - [ ] `src/dream_journal.py`: SQLite database schema
  - [ ] Tables: `dreams`, `patterns`, `manifestations`, `feedback`
  - [ ] Implement `Dream` class with lucidity scoring
  - [ ] Implement `save_dream()`, `recall_dreams()`, `top_dreams()`
  - [ ] Add search: by pattern, by date, by lucidity range

## Next Phase: Dream Generation

- [ ] **Implement Dream Generator**
  - [ ] `src/dream_generator.py`: Orchestrates REM operations
  - [ ] `generate_dream(target_problem, intensity)`: Main entry point
  - [ ] Implement dream heuristics:
    - [ ] Favor novel combinations (low pattern co-occurrence)
    - [ ] Include some constraint violations (keep lucidity 0.3-0.7)
    - [ ] Mix domains (auth patterns → data structures)
  - [ ] Add intensity levels: `low`, `medium`, `high`, `nightmare`
  - [ ] Implement dream session management (batch generation)

- [ ] **Build Viability Checker**
  - [ ] `src/viability_checker.py`: Analyze dream viability
  - [ ] Static analysis: Does it parse? Does it type-check (loosely)?
  - [ ] Sandbox execution: Run with timeout, catch exceptions
  - [ ] Security scan: Detect dangerous patterns (eval(), exec(), file ops)
  - [ ] Implement viability scoring (0.0 - 1.0)
  - [ ] Add novelty detection: Compare against existing patterns

- [ ] **Implement Lucidity Scoring**
  - [ ] `src/lucidity.py`: Score how "awake" a dream is
  - [ ] Metrics:
    - [ ] Syntax validity (higher = more lucid)
    - [ ] Type coherence (higher = more lucid)
    - [ ] Pattern familiarity (lower = more novel)
    - [ ] Constraint violations (lower = more surreal)
  - [ ] Calibrate scoring on test corpus
  - [ ] Add visualization: Lucidity distribution charts

## Integration Phase

- [ ] **Morning Reporter**
  - [ ] `src/morning_reporter.py`: Generate daily reports
  - [ ] `generate_report(date)`: Top N dreams with actionable code
  - [ ] Implement dream ranking: viability × novelty × (1 - lucidity)
  - [ ] Generate markdown reports with syntax-highlighted code
  - [ ] Add statistics: dreams generated, lucidity distribution, top patterns

- [ ] **PR Auto-Creation**
  - [ ] `src/pr_creator.py`: Turn dreams into pull requests
  - [ ] `create_pr_from_dream(dream, repo)`: Git operations
  - [ ] Generate PR description with dream context
  - [ ] Add labels: `dream-generated`, lucidity level, novelty score
  - [ ] Implement safety: Only auto-create PR if viability > 0.7
  - [ ] Add draft mode for lower viability dreams

- [ ] **CLI Implementation**
  - [ ] `dream incubate`: Schedule dreaming session
  - [ ] `dream enter-rem`: Manual REM entry
  - [ ] `dream journal --today --top=10`: View dreams
  - [ ] `dream manifested --since=DATE`: See successful dreams
  - [ ] `dream configure`: Set schedule, intensity, targets
  - [ ] Add rich terminal output: colors, progress bars, tables

## Enhancement Phase

- [ ] **Scheduling System**
  - [ ] `src/scheduler.py`: Cron-like scheduling for dreaming
  - [ ] Configure: Default 2 AM - 6 AM, or custom
  - [ ] Detect idle CPU (developer went home)
  - [ ] Stuck detector: No commits for >4 hours
  - [ ] Implement wake time configuration

- [ ] **Feedback Loop**
  - [ ] Track dream outcomes: merged, rejected, commented
  - [ ] Learn from successful dreams: weight patterns higher
  - [ ] Learn from failures: avoid similar combinations
  - [ ] A/B test dream operations: which generate best results?
  - [ ] Implement `dream feedback --pr-url --outcome`

- [ ] **Machine Learning Enhancement**
  - [ ] Train model on merged dream-PRs
  - [ ] Predict viability before generation
  - [ ] Suggest optimal pattern combinations
  - [ ] Personalize to codebase: learn project-specific patterns
  - [ ] Implement transfer learning from successful dreams

## Polish Phase

- [ ] **Testing**
  - [ ] Unit tests for all core modules
  - [ ] Integration tests: full dream generation cycles
  - [ ] Property-based tests for REM operations
  - [ ] Test on real codebases (start with own code!)
  - [ ] Measure dream recall rate (% actionable)

- [ ] **Documentation**
  - [ ] README with philosophy and quickstart
  - [ ] API documentation for all modules
  - [ ] "Dream Interpretation Guide": How to read dream journals
  - [ ] Case studies: Successful dreams that became features
  - [ ] Contributing guide for adding REM operations

- [ ] **Safety & Security**
  - [ ] Sandboxed execution environment
  - [ ] Resource limits: CPU, memory, duration
  - [ ] No network access during dreams
  - [ ] Scan for malicious patterns
  - [ ] Human review before auto-creating PRs

## Experimental Features

- [ ] **Collective Dreaming**
  - [ ] Share patterns across teams/orgs
  - [ ] "Dream exchange": Import external patterns
  - [ ] Collaborative dreaming: Multiple agents dream together

- [ ] **Lucid Dreaming Mode**
  - [ ] Allow developer to guide dreams partially
  - [ ] "Dream hints": Suggest domains to combine
  - [ ] Interactive dreaming: Steer the dream in real-time

- [ ] **Nightmare Mode**
  - [ ] Maximum surrealism, minimum viability
  - [ ] Generate intentionally broken code for inspiration
  - [ ] "What if we did everything WRONG?" - reverse engineering

## Metrics to Track

```python
# Track these throughout development
DREAM_METRICS = {
    "dreams_generated": 0,
    "dreams_above_lucidity_03": 0,
    "viable_dreams": 0,  # viability > 0.7
    "manifested_dreams": 0,  # became PRs
    "merged_dreams": 0,  # actually merged
    "recall_rate": 0.0,  # viable / generated
    "manifestation_rate": 0.0,  # manifested / viable
    "merge_rate": 0.0,  # merged / manifested
}
```

## Current Task

**NEXT AGENT**: Your job is to implement the Pattern Miner (`src/pattern_miner.py`).

**Requirements**:
1. Extract code patterns using Python's AST module
2. Support patterns: functions, classes, decorators, async functions, error handlers
3. Store patterns as JSON with metadata (file, line, complexity, frequency)
4. Test on the dream-incubator codebase itself

**When you're done**:
1. Commit your work with message "feat: implement pattern miner"
2. Update PROMPT.md to assign the next task (REM Engine)
3. Hand off the torch

---

**Progress**: Phase 1 - Foundation
**Next Task**: Pattern Miner implementation
**Blocking**: Nothing - start coding!
