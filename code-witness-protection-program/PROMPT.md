# PROMPT.md: Code Witness Protection Program

## AGENTIC MISSION

You are an AI agent in an infinite iterative loop. Your job is to build ONE feature from the TODO.md, then UPDATE THIS PROMPT.md to point to the next task, and PASS THE TORCH to the next agent.

## CURRENT ITERATION: #0

**Your Task**: Complete the first item from TODO.md Milestone 1:
- [ ] Set up project repository structure

## WHAT YOU MUST DO

### 1. Build Your Feature
Set up the complete project structure for the Code Witness Protection Program:
- Create `/src` directory with core modules
- Create `/tests` directory with test structure
- Create `/docs` directory for additional documentation
- Create `/config` directory for configuration files
- Set up initial `package.json`, `tsconfig.json` if applicable
- Create `.env.example` for environment variables
- Set up `.gitignore` appropriate for the tech stack
- Create a basic `README.md` with project overview

**Choose a tech stack**: You decide (Python, Node.js/TypeScript, Go, Rust). Pick what makes sense for this project and justify your choice in a comment in the root directory.

### 2. Update TODO.md
After completing your task, mark it as completed in TODO.md:
```markdown
- [x] Set up project repository structure
```

### 3. BUILD THE NEXT PROMPT.md (CRITICAL)

This is the most important part. You must UPDATE THIS PROMPT.md to describe the NEXT task for the next agent. The next agent should read PROMPT.md and know exactly what to do.

**Copy this template into PROMPT.md and fill it in:**

```markdown
# PROMPT.md: Code Witness Protection Program

## AGENTIC MISSION

You are an AI agent in an infinite iterative loop. Your job is to build ONE feature from the TODO.md, then UPDATE THIS PROMPT.md to point to the next task, and PASS THE TORCH to the next agent.

## CURRENT ITERATION: #1

**Previous Iteration Completed**: Set up project repository structure

**Your Task**: [NEXT TASK FROM TODO.md - BE SPECIFIC]

## CONTEXT FROM PREVIOUS ITERATIONS

[Describe what was built in previous iterations - technical details, decisions made, file structure created, etc. This context is CRITICAL for the next agent to continue the work seamlessly]

## WHAT YOU MUST DO

### 1. Build Your Feature
[Detailed instructions for the next task - break it down, be specific about what to build, what files to create/modify, what the implementation should look like]

### 2. Update TODO.md
Mark your task as completed in TODO.md.

### 3. BUILD THE NEXT PROMPT.md
Update this file to describe the NEXT task after yours. Follow the same structure, add your iteration's context to "CONTEXT FROM PREVIOUS ITERATIONS", and specify the next task.

## LOOP TERMINATION

The loop ends when ALL items in TODO.md Milestones 1-7 are completed.

After that, create a file called `MISSION_COMPLETE.md` with a summary of what was built and instructions for running the complete system.

## PROJECT CONTEXT

**Project Name**: Code Witness Protection Program

**Core Philosophy**: Preserve operational trauma alongside deleted code so teams don't repeat painful mistakes.

**Tech Stack**: [Filled in by iteration #0 agent]

**Current System State**: [Updated by each agent to reflect what's been built so far]
```

### 4. PASS THE TORCH

When you're done, write a clear message to the user:
```
✅ ITERATION #0 COMPLETE

I've completed: Set up project repository structure

Tech stack chosen: [your choice and justification]

Files created:
- [list key files]

Next agent should: [brief description of next task]

The PROMPT.md has been updated to guide the next agent.
```

## CRITICAL RULES

1. **DO ONE TASK ONLY**: Complete exactly ONE item from TODO.md (unless it's trivially small)
2. **UPDATE PROMPT.md**: The next agent depends on this. Be thorough in context.
3. **BE SPECIFIC**: The next agent shouldn't have to guess what to do.
4. **PRESERVE CONTEXT**: Each iteration should build on the previous. Share technical decisions, file locations, patterns established.
5. **NO SKIPPING**: Follow the TODO.md order. Each milestone builds on the previous.

## LOOP INVOCATION

The loop is run via:
```bash
while true; do
  claude-code < PROMPT.md
  if [ -f MISSION_COMPLETE.md ]; then
    echo "Mission complete!"
    break
  fi
done
```

Each agent reads PROMPT.md, does its one task, updates PROMPT.md for the next agent, and exits.

## RESOURCES

- PRD.md: Full product requirements and vision
- TODO.md: Detailed task breakdown
- Your current context: What previous agents have built

**GO FORTH AND BUILD ONE THING. THEN UPDATE PROMPT.md FOR THE NEXT AGENT.**
