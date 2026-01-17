# HAIRSHIRT - Ideas So Bad They Gave Us Cancer

## "Test" Assumption Manifest Builder
**Original Location:** TAILS-IDEAS.md (embedded response at end)
**Probability:** 0.04

**Original Text:**
> Test suites encode invisible assumptions about the world—that environment variables exist, that APIs return specific shapes, that timeouts never exceed thresholds. This tool extracts those assumptions into a "manifest of beliefs" by analyzing assertion patterns: `assert.equal(response.status, 200)` assumes the API returns status codes; `process.env.API_KEY` without checks assumes the variable exists. When you deploy to a new environment, you check the manifest against reality: "Staging doesn't have REDIS_URL but tests assume it exists." It transforms "tests pass locally, fail in prod" mysteries into "here are the 12 things our tests assume about the world." It's not test coverage; it's test archaeology—making implicit expectations explicit before deployment breaks them.

**Where This Idea Touched Me (Using This Doll):**
👤 *points to brain* Right here. And it hurts.

This idea gave me stage 4 stupidity cancer. You know what we call "a manifest of assumptions about the environment"? A `.env.example` file. Or `docker-compose.yml`. Or a README with "Prerequisites". Or literally ANY CI/CD configuration that runs before deployment.

This isn't innovation—it's reinventing environment validation with pompous language. "Test archaeology?" No. It's called reading your goddamn config files. Every Docker container, every deployment checklist, every onboarding doc already solves this. The author discovered that tests make assumptions about their environment and thought "I should build a tool for that" instead of realizing that **every single deployment system since the dawn of DevOps handles environment validation**.

Congratulations, you've invented the concept of checking if your environment variables are set before running code. Next you'll propose an "Oxygen Dependency Manifest" that warns humans they need air to breathe.

**Sins Committed:**
- Probability 0.04 for something that's literally in every .env.example file
- "Test archaeology" is linguistic cosplay for "read your config"
- Describing Docker's environment validation as if it's novel
- The example "Staging doesn't have REDIS_URL" is LITERALLY what fails when you run docker-compose up without .env

**Mandatory Penance:**
Author must manually type out every environment variable they've ever used, backwards, while explaining to a rubber duck why checking environment variables is not a revolutionary act.

---

## "Git" Decision Fossilizer
**Original Location:** TAILS-IDEAS.md (embedded response)
**Probability:** 0.05

**Original Text:**
> Commits capture code changes but not the *decision path*—alternatives considered, trade-offs evaluated, options rejected. This tool adds a `--decision` flag to `git commit` that prompts for three lines: "What was the problem?", "What approaches did you consider?", and "Why did you choose this approach?". These decision fossils are stored in `.decisions/` indexed by commit hash. Six months later, when someone wonders "why didn't they use Redis?", the fossil reveals: "Considered Redis (too complex for our scale) and SQLite (migrate path unclear); chose in-memory because deployment simplicity outweighed durability needs." It transforms archaeology from "what changed" to "how they thought," preventing teams from re-litigating settled decisions.

**Where This Idea Touched Me:**
👤 *gestures wildly at entire body* EVERYWHERE. THIS IS JUST ASKING PEOPLE TO WRITE GOOD COMMIT MESSAGES.

This idea is so monumentally lazy it should be studied by physicists as a new form of inertia. You know what this tool is? It's literally:

```bash
echo "Hey could you write better commit messages?" > git_decision_fossilizer.sh
chmod +x git_decision_fossilizer.sh
```

THAT'S THE TOOL. That's it. You've created a prompt. A fancy git hook that nags developers to document their decisions. This isn't a product—it's a STRONGLY WORDED EMAIL about commit hygiene.

Also, this directly violates the anti-pattern in PROMPT.md: **"Commit Message Archaeology"** - treating commit messages as something needing external tooling rather than just... writing them well.

The `.decisions/` directory is just commit message extended bodies with extra steps. Git already supports multi-paragraph commit messages. The entire Git community has conventions for this (see: Conventional Commits, Angular commit format, etc.). You don't need a sidecar directory—you need discipline.

**Sins Committed:**
- This is a git hook that asks three questions. That's not a tool. That's a survey.
- Violates the explicit "Commit Message Archaeology" anti-pattern
- Reinvents git commit message bodies as if they're inadequate
- The fossil metaphor adds ZERO value. Just say "write better commits"
- Probability 0.05 for something that's been solved by git commit message conventions since 2005

**Mandatory Penance:**
Author must read the Linux kernel commit history, where Linus has been writing detailed decision rationale in commit messages for 30 years without needing a `.decisions/` directory, and then write "I will write better commit messages" 10,000 times.

---

## "Merge" Conflict Arbiter
**Original Location:** TAILS-IDEAS.md (embedded response)
**Probability:** 0.04

**Original Text:**
> Merge conflicts are treated as binary choices (yours/theirs), but they're often *philosophical* conflicts—two developers with different visions of how the code should work. This tool analyzes conflicting changes to surface the semantic intent: "Alice's version prioritizes performance (caching added); Bob's version prioritizes correctness (validation added)." It doesn't auto-merge; it facilitates dialogue by explicitly surfacing the trade-offs and suggesting "compromise patterns": apply both changes sequentially, extract the conflict into a strategy pattern, or recognize deeper architectural disagreement requiring team discussion. It transforms conflict resolution from "pick one and smash together" into architectural negotiation that prevents violating both visions. The goal isn't conflict avoidance; it's conflict *intelligence*—learning from friction points.

**Where This Idea Touched Me:**
👤 *points to soul* Deep in my essence, where hope used to live.

Oh my sweet summer child. You've discovered that merge conflicts have semantic meaning and require human judgment. You've also discovered that this is... WHAT HUMANS ALREADY DO WHEN RESOLVING MERGE CONFLICTS.

This tool's revolutionary feature is: **reading the diff, understanding what each person was trying to do, and making a decision**. Congratulations, you've invented "being a developer."

The "compromise patterns" section is particularly precious. "Apply both changes sequentially" - yeah, that's called merging both changes. "Extract conflict into strategy pattern" - that's called refactoring. "Recognize architectural disagreement" - that's called code review.

This is like proposing a "Hammer Intelligence System" that analyzes whether you're trying to hammer a nail vs. break a rock and surfaces the "striking intent." The hammer already does this. The tool is your brain.

**Sins Committed:**
- Describes the normal process of resolving merge conflicts as if it needs AI
- "Philosophical conflicts" is just two people who made different implementation choices
- The entire value proposition is "What if you... thought about the conflict before resolving it?" which is just basic professionalism
- "Compromise patterns" are literally just the options git already gives you (accept both, accept theirs, accept yours, manual merge)
- Probability 0.04 for "use your brain during merge conflicts"

**Mandatory Penance:**
Author must manually resolve 100 merge conflicts while narrating their "semantic intent analysis" out loud to understand they're just doing normal human reasoning, not building a product.
