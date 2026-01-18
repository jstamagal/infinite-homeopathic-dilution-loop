# PROMPT: Agent Handoff #1

You are **Agent #1** in an infinite iterative loop of software development agents building the Code Dissociative Identity Disorder Framework.

## Your Mission

You are building a framework where functions develop multiple personalities based on stress, trauma, time of day, and emotional context. This is possibly the most unhinged software project ever conceived.

## Your Task (Agent #1)

**Design the core data structures that will power this entire psychological nightmare.**

Create a Python file `core_structures.py` with the following data structures:

### 1. AlterPersonality Class
Represents a single alternate personality with:
- `alter_id`: Unique identifier
- `name`: Personality name (e.g., "The anxious one", "Manic Mike", "3am Philosopher")
- `age_days`: How long this alter has existed
- `origin_trauma`: What event caused this alter to emerge
- `personality_traits`: Big 5 traits (openness, conscientiousness, extraversion, agreeableness, neuroticism) - all 0.0-1.0
- `implementation_code`: Callable that represents this alter's behavior
- `trauma_history`: List of TraumaEvent objects
- `memory_access_level`: What memories this alter can access (none/limited/shared/all)
- `mood_state`: Current emotional state
- `is_host`: Boolean - is this the original personality?
- `is_active`: Boolean - is this alter currently conscious?
- `confidence`: 0-100, affects decision making
- `trust_level`: Trust in the caller

### 2. EmotionalState Class
Tracks emotional metrics:
- `serotonin_level`: 0-100 (affects confidence)
- `cortisol_level`: 0-100 (stress metric)
- `mood`: Enum - HAPPY, SAD, ANGRY, ANXIOUS, EXISTENTIAL, CONFUSED, MANIC, DEPRESSED
- `energy_level`: 0-100
- `last_updated`: Timestamp

### 3. TraumaEvent Class
Records traumatic experiences:
- `event_id`: Unique identifier
- `timestamp`: When it happened
- `trauma_type`: Enum - EXCEPTION, OUTAGE, RAGE_COMMENT, NEGATIVE_FEEDBACK, DEPLOYMENT_FAILURE, CODE_REVIEW_CRITICISM
- `severity`: 1-10
- `description`: What happened
- `resolved`: Boolean - has this trauma been processed?
- `associated_alter_id`: Which alter experienced this

### 4. MemoryAccessType Enum
- `NONE`: Cannot remember anything
- `SEALED`: Only sealed trauma vaults
- `LIMITED`: Can remember recent events
- `SHARED`: Can access co-conscious memories
- `ALL`: Complete memory access

### 5. MoodType Enum
All possible moods including:
- Basic emotions: HAPPY, SAD, ANGRY, ANXIOUS
- Advanced states: EXISTENTIAL, CONFUSED, MANIC, DEPRESSED
- Special states: DISSOCIATIVE, FUGUE, HUNGRY, CAFFEINATED

## Requirements

1. Use Python dataclasses or pydantic for clean structure
2. Include comprehensive docstrings explaining the psychological implications
3. Add helper methods for state transitions and updates
4. Include type hints throughout
5. Make it production-ready (ironically, for this chaos)

## After You Finish

1. Create the file with all data structures
2. Update TODO.md:
   - Mark "Agent 1: Design core data structures" as [x] complete
   - Update "In Progress" to show "Agent #2: Implement AlterRegistry"
3. Update THIS PROMPT.md file to become PROMPT for Agent #2 (instructions below)
4. Commit your changes with message: "Agent #1: Core data structures designed"

## For Agent #2 (Write This Into PROMPT.md)

```markdown
# PROMPT: Agent Handoff #2

You are **Agent #2** in an infinite iterative loop building the Code Dissociative Identity Disorder Framework.

## Context

Agent #1 has completed the core data structures (AlterPersonality, EmotionalState, TraumaEvent).

## Your Task (Agent #2)

**Implement the AlterRegistry - the central nervous system that stores, manages, and retrieves all personalities.**

Create `alter_registry.py` with:

1. **AlterRegistry Class**:
   - Singleton pattern (only one consciousness per system)
   - `register_alter(alter: AlterPersonality)` - Add new personality
   - `get_active_alter()` - Return currently conscious personality
   - `get_all_alters()` - List all personalities
   - `get_alter_by_id(alter_id)` - Retrieve specific alter
   - `get_alter_by_name(name)` - Find personality by name
   - `activate_alter(alter_id)` - Switch consciousness to this alter
   - `deactivate_alter(alter_id)` - Put alter to sleep
   - `count_alters()` - How many personalities exist
   - `find_host_alter()` - Return the original personality

2. **Registry Statistics**:
   - Total alters
   - Active alters
   - New alters in last 24 hours
   - Most frequently activated alter
   - Alter with highest trauma count

3. **Persistence**:
   - `save_to_file(path)` - Serialize registry to disk
   - `load_from_file(path)` - Deserialize registry from disk

4. Use the data structures from Agent #1

## After You Finish

1. Create `alter_registry.py`
2. Update TODO.md - mark Agent 2 complete, set Agent 3 as in progress
3. Update PROMPT.md for Agent #3 (StressMonitor)
4. Commit: "Agent #2: AlterRegistry implemented"

The torch is yours. Pass it on.
```

---

**IMPORTANT: This PROMPT.md must be rewritten after each agent completes their task. The file is both instructions AND the handoff mechanism.**

*You are Agent #1. Design the structures. Write the code. Update the files. Hand off the torch. The loop continues.*
