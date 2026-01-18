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

### The Genealogy/Evolutionary Metaphor Epidemic

**Pattern Detected:** Multiple ideas applying genealogy/evolutionary biology metaphors to technical correlation analysis.

**Examples Removed:**
- Exception Genealogy Tracer - errors have "family trees," "descendants," "evolutionary ancestry"
- Build Failure Genealogy Tracer - identical metaphor applied to CI/CD failures

**Why This Is Slop:**
These ideas describe basic error correlation, root cause analysis, and pattern recognition using elaborate biology metaphors. Strip away "genealogy," "descendants," "ancestry," "lineage," "spawned," and "evolutionary," and what remains is standard error aggregation that every APM tool (Sentry, Datadog, New Relic) and CI/CD system (Jenkins, CircleCI, GitHub Actions) already provides. The metaphor dominates >80% of the concept while the underlying functionality is commodity infrastructure from 2015.

**What These Actually Describe:**
- Error grouping and correlation analysis (available in every APM since 2015)
- Build failure pattern recognition (standard in all CI/CD platforms)
- Root cause analysis (basic troubleshooting methodology)

**The Real Solution:**
Use Sentry's issue grouping, Datadog's error tracking, or any modern observability platform. These tools already correlate related errors, track recurrence patterns, and identify root causes without pretending errors reproduce sexually.

**What To Ask Yourself:**
- Does this idea use biology/genealogy metaphors (ancestry, descendants, lineage, evolution, family trees)?
- Strip the metaphor - is it just correlation analysis or pattern matching?
- Could you describe this in one sentence without metaphor?
- Does an existing APM or monitoring tool already do this?

**If YES to metaphor + existing tools → REJECT immediately.**

**Special Warning:**
Submitting the SAME metaphor applied to slightly different domains (runtime errors vs build errors, exceptions vs failures) makes it WORSE, not better. It proves the idea is metaphor cosplay, not genuine innovation.

---

### The CLI Utility Epidemic (Probability >0.85)

**Pattern Detected:** Multiple ideas proposing trivial command-line utilities with probabilities between 0.88-0.92, describing existing mature tools or built-in platform features as if they're novel.

**Examples Removed:**
- "Lorem" Code Generator (0.92) - placeholder code generation
- "Repo" Health Check (0.91) - checking for README/LICENSE files
- "SVG" Cleaner CLI (0.92) - SVGO, which has existed since 2012
- "Env" Validator (0.92) - dotenv-safe, existing since 2016
- "CURL" Builder TUI (0.90) - Postman's "Generate Code" button
- "Hex" Calc (0.91) - number base conversion in every programming language
- Multiple more with 0.88-0.91 probabilities

**Why This Is Slop:**
When probability exceeds 0.85, the idea is describing HISTORICAL reality—tools that already exist as mature, widely-used products or are built into platforms. These submissions demonstrate complete failure to research existing solutions. PROMPT.md explicitly warns (line 87-91): "If the tool has 0.85+ probability, it's describing existing ubiquitous infrastructure."

**The Pattern's Root Cause:**
Authors answered "What CLI tool would be useful?" with "Things I use every day" without realizing THE REASON THEY USE THEM EVERY DAY IS BECAUSE THEY ALREADY EXIST. High probability (>0.85) is not validation—it's a warning that you're describing commodity infrastructure.

**What Already Exists:**
- SVG optimization: SVGO (20K+ stars, industry standard since 2012)
- Env validation: dotenv-safe, envsafe, dotenv-vault (mature ecosystem)
- HTTP request building: Postman, Insomnia, Hoppscotch, Browser DevTools
- Repository health: GitHub Community tab (built-in since 2017)
- Hex conversion: Every programming language's stdlib, calculator apps
- Lorem generation: faker.js, every templating system

**What To Ask Yourself:**
- Is my probability >0.85? Then I'm describing existing infrastructure, not proposing innovation
- Does this tool already exist with 1000+ GitHub stars?
- Is this built into a major platform (GitHub, browser, IDE)?
- Is this a math operation or trivial file check?
- Would Googling "[idea name] tool" return 10+ existing implementations?

**If YES to any → STOP. Research what exists before proposing.**

**The Probability Honesty Principle:**
- 0.85+ = Describing historical reality (mature products)
- 0.65-0.72 = Describing current reality (daily-use tools)
- 0.50-0.65 = Market saturation (widespread adoption)
- <0.50 = Potentially novel if differentiated

**Special Note:**
Probability >0.85 means **85%+ of the market already has this**. You're not in a race where 15% market share is success—you're proposing to rebuild GitHub's built-in features or SVGO with a 14-year head start. That's not competition; that's tilting at windmills.

---

### The ">0.50 Copilot Clone" Epidemic

**Pattern Detected:** Ideas with probability 0.50-0.55 describing AI-powered code assistance tools that replicate GitHub Copilot, Cursor, or mainstream AI coding assistants.

**Examples Removed:**
- Real-Time Code Review AI Assistant (0.51) - describes Copilot's core functionality
- Team-Specific Code Style Enforcer (0.52) - Prettier + ESLint with "AI-powered" prefix

**Why This Is Slop:**
Probability >0.50 means market saturation. These ideas describe features that GitHub Copilot, Cursor, Codeium, Tabnine, and every major AI coding assistant already provides. Adding "AI-powered" to existing tools (Prettier, ESLint) doesn't create differentiation—it describes the expected evolution of those tools.

**What These Actually Describe:**
- "Real-time code feedback as you type" = GitHub Copilot (2021-present)
- "Understands business logic and context" = Copilot's differentiator from linters
- "Learns from team's PR feedback" = Copilot for Business feature
- "AI-powered code formatting" = Next obvious evolution of Prettier (not a separate product)

**The Market Reality:**
In 2026, AI code assistance is not innovative—it's baseline. Proposing "AI that helps you code" is like proposing "search engine that indexes websites" after Google has dominated for 20 years.

**What To Ask Yourself:**
- Is my probability >0.50? Then I'm competing with 50%+ of the market
- Does GitHub Copilot, Cursor, or any major AI assistant already do this?
- Am I just adding "AI-powered" to an existing tool (ESLint, Prettier, etc.)?
- Would this be a FEATURE of existing products, not a standalone product?

**If YES → Don't compete with Microsoft, Anthropic, Google, and Amazon in their core market.**

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
