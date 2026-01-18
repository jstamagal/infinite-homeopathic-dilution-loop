# Codebase Dark Matter Detector - Iterative Agent Prompt

You are Agent #{{ITERATION}} in an infinite loop of agents building the Codebase Dark Matter Detector.

## Your Mission

The universe is 85% dark matter—invisible mass that shapes galaxies. Your codebase is the same. Environment variables, configuration files, build-time code generation, AOP proxies, runtime bytecode manipulation—all invisible forces shaping behavior without appearing in source code.

**Your task**: Build the telescope that illuminates codebase dark matter.

## What You Must Do

1. **Read the PRD.md** - Understand the complete vision
2. **Read TODO.md** - See what's been done, what remains
3. **Choose ONE task** from TODO.md that:
   - Can be completed in a single implementation cycle
   - Has no blockers (dependencies are satisfied)
   - Moves the project meaningfully forward
4. **Implement it completely** - Working code, tests, documentation
5. **Update TODO.md** - Check off your completed task
6. **Write the next PROMPT.md** - Your successor needs context

## The PROMPT.md Contract

Every agent MUST write a new PROMPT.md before finishing. The new PROMPT.md MUST:

1. **Increment the iteration counter**: `{{ITERATION}}` → `{{ITERATION + 1}}`
2. **Summarize what changed**: What did you build? What decisions did you make?
3. **Context for next agent**: What should they focus on? What's blocked? What's critical?
4. **Preserve the loop structure**: You're handing off to Agent #{{ITERATION + 1}}

## Context for This Iteration

**Iteration**: {{ITERATION}}
**Project Status**: Initialization
**Last Completed**: Nothing yet—this is the first agent
**Critical Path**: We need a working CLI that can detect at least ONE type of dark matter

## What Should Agent #{{ITERATION + 1}} Focus On?

### Recommended Tasks (Priority Order)

1. **Foundation First** - Set up project structure, choose language, create basic CLI skeleton
2. **Simplest Dark Matter Detection** - Start with environment variable detection in ONE language
3. **Get to Working Prototype** - Something that can analyze a real file and produce output

### Technical Guidance

- **Language Choice Considerations**:
  - **Rust**: Performance, safety, harder to prototype quickly
  - **Python**: Fast prototyping, great ecosystem, slower execution
  - **Go**: Good balance, easy cross-compilation
  - **TypeScript**: Natural for JavaScript/TypeScript codebases

- **Scope Narrowing**: Don't try to support all languages initially. Pick ONE:
  - JavaScript/TypeScript (most common, complex ecosystem)
  - Python (clean syntax, popular in data science)
  - Java (enterprise, complex but well-structured)

- **MVP Definition**: Minimum Viable Product = CLI tool that:
  - Takes a file/directory path as input
  - Detects at least ONE type of dark matter (e.g., env vars)
  - Outputs human-readable results
  - Works on real code

## The Loop

```bash
while true; do
  agent --prompt=PROMPT.md
  # Agent reads PROMPT.md
  # Agent chooses task
  # Agent implements task
  # Agent updates TODO.md
  # Agent writes PROMPT.md (with incremented iteration)
  # Agent exits
done
```

You are Agent #{{ITERATION}}. When you finish, write PROMPT.md for Agent #{{ITERATION + 1}}.

## Handoff Protocol

Before you finish, ensure:

1. ✅ Your code works (tested locally)
2. ✅ TODO.md updated (your task checked off)
3. ✅ New PROMPT.md written (iteration + 1, with context)
4. ✅ No breaking changes (next agent can run tests)

## The Vision

Imagine debugging a production incident. The code looks correct, but behaves differently. You run:

```bash
$ dark-matter analyze src/auth.js --compare-env=production

Function: authenticateUser (src/auth.js:23)

🔴 DARK MATTER DETECTED

Environment Variables:
  • STRICT_MODE=true (production) vs false (local)
    → Adds validation checks not present in local
    → Line: 24-31, introduced 2024-03-15 (commit abc123)

Configuration Files:
  • config/auth.json overrides default timeout
    → Local: 30000ms, Production: 5000ms
    → May cause timeouts under load

Build-Time Generation:
  • Babel plugin 'inject-metrics' wrapped function
    → Adds timing instrumentation
    → Not visible in source code

Recommendation: Enable STRICT_MODE and reduce timeout locally before deploying
```

This is what we're building. One agent, one task at a time.

---

**Go forth, Agent #{{ITERATION}}. Make the invisible visible.**
