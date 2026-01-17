# NEGATIVE PROMPT - Slop Patterns to Avoid

## Active Slop Patterns Detected (January 17, 2026)

### Commit Message Archaeology Epidemic

**Pattern Detected:** Multiple ideas propose tools that analyze, audit, track decay, or suggest updates to historical git commit messages.

**Examples Removed:**
- "Git" Decision Fossilizer - adds `--decision` flag to capture decision rationale in separate `.decisions/` directory
- "Commit" Intent Archaeologist - analyzes commit patterns to identify where messages don't match actual changes
- "Commit" Intent Decay Tracker - tracks when commit messages no longer match current code reality

**Why This Is Slop:**
Git commits are **immutable historical records**, not living documents. Commit messages describe what WAS changed and why AT THAT TIME, not what the current state is. These tools violate fundamental git philosophy by treating commit history as maintenance burdens rather than snapshots in time.

**The Solution Is Not A Tool:**
- Better commit message templates and enforcement at commit time
- Code review that checks commit message quality before merging
- Team conventions (Conventional Commits, Angular format, etc.)
- Teaching developers to write comprehensive commit messages initially

**What To Ask Yourself:**
- Does this idea try to "update," "annotate," "track decay of," or "maintain" historical commit messages?
- Does it treat commit messages as documents that need ongoing maintenance?
- Does it suggest retroactively improving git history?

**If YES to any → REJECT immediately.**

---

### Environment Validation Theater

**Pattern Detected:** Ideas that "detect assumptions" about the environment and generate manifests of what code expects.

**Example Removed:**
- "Test" Assumption Manifest Builder - extracts assumptions like "environment variables exist" into a manifest

**Why This Is Slop:**
This is literally `.env.example` files, Docker configurations, and deployment checklists with fancy names. Every CI/CD system, container orchestration platform, and deployment pipeline already handles environment validation.

**What To Ask Yourself:**
- Does this "discover" that code assumes certain environment variables or dependencies exist?
- Is this just configuration management with pretentious language?
- Would a README with "Prerequisites" section solve this?

**If YES → It's not novel, it's DevOps basics.**

---

### Git Features Disguised As Innovation

**Pattern Detected:** Tools that provide git functionality that already exists, just with AI buzzwords or different interfaces.

**Example Removed:**
- "Merge" Conflict Arbiter - "surfaces semantic intent" during conflicts and suggests "compromise patterns"

**Why This Is Slop:**
Git already provides the information needed for conflict resolution. The tool describes basic human reasoning during merge conflict resolution as if it needs automation. "Apply both changes sequentially" is just merging both changes. "Recognize architectural disagreement" is just using your brain.

**What To Ask Yourself:**
- Does this describe what developers already do manually with git?
- Is the "innovation" just prompting developers to think before acting?
- Would a checklist or better training solve this?

**If YES → It's not a product, it's a process improvement.**

---

## Universal Anti-Patterns (Permanent)

### The Metaphor Dominance Test
If >60% of the explanation is metaphor education → the metaphor IS the product, not the utility.

### The "Already Solved" Test
If existing mainstream tools (Copilot, ESLint, Prettier, GitHub, Docker, etc.) already do this → probability should be >0.50, not <0.10.

### The "Imagine If" Test
If you need to invent scenarios rather than point to organic complaints → it's not solving a real problem.

### The Commit Message Archaeology Test (NEW)
If it tries to maintain, update, or track decay of immutable git history → REJECT.

---

## Instructions for Future Reviewers

When you spot a new slop pattern (3+ similar bad ideas in one review cycle):
1. Add a section above describing the pattern
2. Explain why it's slop
3. Provide decision criteria for future idea generators
4. Update this file and commit

The goal is to train the idea generation system to avoid repetitive mistakes.
