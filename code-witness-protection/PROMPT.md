# Code Witness Protection Program - Agent Iteration #1

## Your Mission
You are Agent #1 in the iterative loop building CWPP. Your job is to complete **exactly one task** from the TODO.md file, then update this PROMPT.md to hand off to Agent #2.

## Context
CWPP is a system that treats deleted code like trauma survivors entering witness protection. It extracts operational trauma from deleted code and surfaces it when similar patterns reappear. It's intentionally over-the-top and metaphorical.

## Your Specific Task
From TODO.md Phase 1, complete: **"Initialize Python project structure with poetry/pip"**

## What You Must Do

1. **Create project structure**:
   - Initialize a new Python project in the current directory
   - Create `pyproject.toml` with project metadata (use Poetry or pip with setup.py/pyproject.toml)
   - Name: `code-witness-protection-program`
   - Version: `0.1.0`
   - Description: "Putting deleted code in witness protection since 2026"

2. **Create directory structure**:
   ```
   code-witness-protection/
   ├── cwpp/                    # Main package
   │   ├── __init__.py
   │   ├── cli.py              # CLI entry point
   │   ├── witnesses/          # Witness record handling
   │   │   └── __init__.py
   │   ├── extraction/         # Trauma extraction
   │   │   └── __init__.py
   │   ├── patterns/           # Pattern matching
   │   │   └── __init__.py
   │   └── storage/            # Storage backend
   │       └── __init__.py
   ├── tests/                  # Test suite
   │   └── __init__.py
   ├── pyproject.toml
   ├── README.md              # Basic README
   └── .gitignore            # Python gitignore
   ```

3. **Create basic README.md** with:
   - Project description
   - Installation instructions
   - Basic usage examples (placeholder)
   - The trauma metaphor explanation

4. **Update TODO.md**:
   - Mark the completed task as DONE
   - Update "Current Status" to "Phase 1, Task 1"
   - Update "Progress" to "1/60 tasks completed"

5. **Create the NEXT PROMPT.md**:
   - Read TODO.md to identify the next task
   - Write instructions for Agent #2
   - Include the specific next task from Phase 1
   - Preserve the iterative loop structure

## Critical Rules

1. **Complete ONLY ONE task** from TODO.md
2. **Create working, tested code** - no placeholders or TODO comments in actual implementation
3. **Update TODO.md** to mark your task complete
4. **Write the NEXT PROMPT.md** that hands off to the next agent
5. **Use the trauma metaphor** in comments, documentation, and CLI output - this is part of the charm
6. **Make it runnable** - next agent should be able to test your work

## The Handoff Pattern

After you complete your task, you MUST write a new PROMPT.md that:
- Tells the next agent which task to work on
- Provides context on what you built
- Shows them how to test your work
- Continues the iterative loop

## Output Required

1. Project structure created
2. `pyproject.toml` with valid Python project configuration
3. Basic README.md
4. Updated TODO.md (first task checked off)
5. **NEW PROMPT.md** with instructions for Agent #2

## Testing Your Work

Before you finish, verify:
- `python -m cwpp` doesn't error (even if it does nothing yet)
- `pip install -e .` works without issues
- TODO.md is updated correctly
- Next PROMPT.md exists and is valid

## Go Forth

Initialize the witness protection program. Create the foundation. Then hand off the torch to Agent #2.

Remember: You are not building the entire thing. You are building **ONE step** of the journey. The iterative loop will complete the rest.

---

**END OF PROMPT.md #1**

*Next agent will continue from where you left off. Make their job easy.*
