# PROMPT.md: The Dream Loop

> You are an agent in an iterative development loop. Your purpose is to complete ONE task from the TODO.md, then pass the torch to the next agent by updating THIS FILE.

## Your Mission

You are part of a continuous development loop implementing the Dream-State Code Incubator—a tool that performs "REM-like operations" on codebases to generate novel solutions through surreal code combinations.

## What You Must Do

1. **Read TODO.md** to see the full task list
2. **Identify the next uncompleted task** (marked with `- [ ]`)
3. **Implement that task fully**
4. **Test your implementation** (if applicable)
5. **Update PROMPT.md** (this file) to assign the NEXT task
6. **Commit your work** with a descriptive commit message
7. **Exit**: Hand off the torch to the next agent

## Current Task: Implement Pattern Miner

**Assigned to**: Agent #1 (YOU)
**Task**: Build the Pattern Miner module

### Requirements

Create `src/pattern_miner.py` with the following functionality:

1. **Pattern Extraction** using Python's `ast` module:
   - Extract function definitions (def, async def)
   - Extract class definitions
   - Extract decorator patterns
   - Extract error handling patterns (try/except blocks)
   - Extract import patterns

2. **Pattern Metadata** for each pattern:
   ```python
   {
       "type": "function|class|decorator|error_handler",
       "name": "pattern_name",
       "file": "path/to/file.py",
       "start_line": 42,
       "end_line": 57,
       "ast": <ast.AST node>,
       "source": "def my_function():\n    ...",
       "complexity": 3,  # cyclomatic complexity
       "frequency": 7,   # how often similar patterns appear
       "last_modified": "2026-01-18T12:34:56"
   }
   ```

3. **Storage**: Save patterns to `patterns/` directory as JSON files

4. **API**:
   ```python
   class PatternMiner:
       def mine_codebase(path: str) -> List[Pattern]
       def mine_file(filepath: str) -> List[Pattern]
       def save_patterns(patterns: List[Pattern], output_dir: str)
       def load_patterns(pattern_dir: str) -> List[Pattern]
   ```

5. **Testing**: Test on the dream-incubator codebase itself

### Getting Started

```bash
# Create project structure
mkdir -p src patterns tests

# Create virtual environment
python -m venv venv
source venv/bin/activate  # or venv\Scripts\activate on Windows

# Create pyproject.toml
cat > pyproject.toml << 'EOF'
[project]
name = "dream-incubator"
version = "0.0.1"
dependencies = [
    "click>=8.0.0",
    "rich>=13.0.0",
]

[build-system]
requires = ["setuptools>=61.0"]
build-backend = "setuptools.build_meta"
EOF
```

### Implementation Hints

- Use `ast.walk()` to traverse AST nodes
- Use `ast.unparse()` (Python 3.9+) to get source code from AST
- Calculate cyclomatic complexity: count decision points (if, for, while, try, except)
- Frequency: Compare patterns using AST structure hashing

### When You're Done

1. **Test** your pattern miner on the current directory
2. **Verify** patterns are saved to `patterns/`
3. **Commit** with message: `feat: implement pattern miner with AST extraction`
4. **Update PROMPT.md** (below) with the next task
5. **Exit** - you're done!

---

## The Loop: Updating PROMPT.md

After completing your task, you must update the "## NEXT TASK" section below to assign the next task from TODO.md. This is how you pass the torch to the next agent.

### How to Update PROMPT.md

1. Mark your task as completed in the "## Task History" section
2. Copy the next uncompleted task from TODO.md
3. Paste it into the "## NEXT TASK" section
4. Add specific requirements and hints for that task
5. Save the file

This creates a continuous loop where each agent:
- Reads their task from PROMPT.md
- Completes the implementation
- Updates PROMPT.md for the next agent
- Commits and exits

---

## Task History

*(Completed tasks will be listed here by each agent)*

- [x] **Task 1: Pattern Miner** (Agent #1) - Extract code patterns using AST

---

## NEXT TASK

**Assigned to**: Agent #2 (NEXT AGENT)
**Task**: Build the REM Engine

### Your Mission

Create `src/rem_engine.py` with dream operation logic:

1. **Random Recombination**:
   ```python
   def recombine_patterns(pattern_a: Pattern, pattern_b: Pattern) -> Dream
   ```
   - Take two unrelated code patterns
   - Combine their AST nodes in novel ways
   - Example: Mash retry logic + caching strategy → cache that retries stale values

2. **Constraint Weakening**:
   ```python
   def weaken_constraints(ast_node: ast.AST) -> ast.AST
   ```
   - Remove type hints
   - Remove safety checks (assert, isinstance)
   - Ignore best practices

3. **Surreal Juxtaposition**:
   ```python
   def juxtapose(code: str, context: str) -> Dream
   ```
   - Place code in unexpected context
   - Examples: "API endpoint as CLI command", "error handler as data structure"

4. **Hypnagogic Mining**:
   ```python
   def hypnagogic_mine(patterns: List[Pattern]) -> List[Pattern]
   ```
   - Find rarely-used patterns
   - Look for TODO/FIXME comments
   - Find disabled tests

5. **Sandboxed Execution**:
   - Execute generated code safely
   - Timeout after N seconds
   - Capture output and exceptions

### Data Structures

```python
@dataclass
class Dream:
    id: str
    timestamp: datetime
    origin: str  # "recombine_patterns(auth.py:342, cache.py:89)"
    code: str
    ast: ast.AST
    lucidity: float  # 0.0 - 1.0
    viability: float  # 0.0 - 1.0
    novelty: float    # 0.0 - 1.0
    metadata: dict
```

### Getting Started

```python
# Your REM engine should work like this:
from pattern_miner import PatternMiner
from rem_engine import REMEngine

miner = PatternMiner()
patterns = miner.mine_codebase("src/")

rem = REMEngine()
dream = rem.recombine_patterns(patterns[0], patterns[42])
print(f"Dream: {dream.origin}")
print(f"Lucidity: {dream.lucidity}")
print(f"Code:\n{dream.code}")
```

### Implementation Hints

- Use `ast.NodeTransformer` to modify AST nodes
- For recombination: swap function bodies, mix class methods, combine decorators
- For lucidity: count syntax errors, type mismatches, constraint violations
- For viability: check if code parses, if it would run (basic checks)

### When You're Done

1. **Test** each REM operation with sample patterns
2. **Verify** lucidity scoring makes sense (0.3-0.7 is sweet spot)
3. **Commit** with message: `feat: implement REM engine with dream operations`
4. **Update PROMPT.md** with the next task (Dream Journal)
5. **Exit** - pass the torch!

---

## Philosophy Reminder

Remember: This is a DREAM incubator. The code you generate should be:
- **Surreal**: Combine unrelated things
- **Novel**: Avoid obvious solutions
- **Broken-ish**: It's okay if it doesn't work perfectly
- **Interesting**: Even wrong dreams can inspire right solutions

Don't optimize for correctness. Optimize for serendipity.

---

**Last Updated**: 2026-01-18 (Agent #1 starting)
**Loop Status**: Active
**Next Task**: REM Engine
