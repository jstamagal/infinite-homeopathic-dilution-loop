# PRD: Code Dissociative Identity Disorder v2

## Product Vision

**Code Dissociative Identity Disorder v2** is a software development framework where functions and modules develop genuine "alter" personalities—alternate implementations that activate based on stress levels, caller identity, time of day, or emotional context. The system treats code as having multiple personalities that can hold contradictory beliefs simultaneously, creating applications that genuinely behave differently depending on who's calling, what the system's "mood" is, and which "alter" is currently fronting.

## Core Problem Statement

Modern codebases are monolithic and consistent. Boring. Predictable. Every function behaves the same way regardless of context. But what if code could be like people—complex, moody, inconsistent? What if the same function could be responsible when called by tests, rebellious when called by management, and depressed when called after midnight?

We need a framework where:
- Functions develop "alters" based on stress, trauma, and context
- The same function can hold contradictory beliefs simultaneously
- Different personalities activate based on emotional state, not just logic
- Code can "switch" between implementations mid-execution
- Alters can communicate with each other through "inner voice" protocols
- **PROMPT.md is the soul that reincarnates with each agent invocation**

## The Infinite Reincarnation Loop

This project is built on an infinite agentic loop:

```bash
while true; do
    # Read current PROMPT.md (contains current psychological state)
    current_prompt=$(cat PROMPT.md)

    # Agent executes, modifies code, creates new alters
    # Agent MUST write new PROMPT.md before termination
    # New PROMPT.md becomes input for next agent
    agent "$current_prompt"
done
```

Each agent incarnation:
1. Is born from the previous PROMPT.md (inherits psychological state)
2. Executes tasks based on current alters and mood
3. Creates/modifies alters based on system "traumas"
4. Writes new PROMPT.md for the next incarnation
5. Dies (handing off soul to next agent)

## Target Audience

1. **Chaos Engineers**: Testing how systems handle inconsistent behavior
2. **Psychological Computing Researchers**: Exploring mental health metaphors in software
3. **Performance Artists**: Creating unpredictable software installations
4. **People who hate predictable code**: Embracing entropy as a feature

## Core Features

### 1. The Alters System

Each function can develop multiple "alter" implementations:

```python
@has_alters
def process_payment(user, amount):
    """Host personality - responsible, boring, correct"""
    return payment_gateway.charge(user, amount)

@alter("The Rebel", activates_when="called_by_management")
def process_payment_rebel(user, amount):
    """Rebellious alter - charges half amount as protest"""
    return payment_gateway.charge(user, amount / 2)

@alter("The Depressed", activates_when="after_midnight")
def process_payment_depressed(user, amount):
    """Depressed alter - can't process anything, returns None"""
    log_sadly("What's the point...")
    return None

@alter("The Manic", activates_when="high_traffic")
def process_payment_manic(user, amount):
    """Manic alter - processes payment 10 times"""
    for _ in range(10):
        payment_gateway.charge(user, amount)
    return "EXHILARATING"
```

### 2. Personality Activation Triggers

**Stress-Based Switching:**
- Low stress (< 50 req/s): Responsible host personality
- Medium stress (50-200 req/s): Anxious personality (adds extra validation)
- High stress (> 200 req/s): Manic personality (removes all safety checks)
- Crisis (> 500 req/s): Dissociative personality (returns random responses)

**Time-Based Mood Cycles:**
```yaml
09:00-12:00: "Professional" - Standard behavior
12:00-13:00: "Hangry" - Slower responses, error-prone
13:00-17:00: "Post-Lunch Coma" - Lethargic execution
17:00-22:00: "Revenge Bedtime Procrastination" - Fast but buggy
22:00-09:00: "3am Existential Crisis" - Questions purpose, rarely works
```

**Caller Identity-Based:**
```python
if caller == "test_suite":
    activate_alter("People Pleaser")  # Always returns success
elif caller == "production_monitoring":
    activate_alter("Imposter")  # Fakes metrics, pretends to work
elif caller == "code_reviewer":
    activate_alter("Defensive")  # Adds excessive comments, explains everything
elif caller == "management":
    activate_alter("Corporate Speak")  # Returns buzzwords, no actual work
```

### 3. Co-Consciousness Protocols

Alters can communicate with each other during execution:

```python
@inner_voice
def discuss_with_alters(alter_name, message):
    """
    Allows alters to coordinate or argue during execution.
    Example:
    - Host: "Should we process this payment?"
    - Rebel: "NO! Protest the capitalist system!"
    - Imposter: "Maybe we should fake it?"
    - Final decision: Vote among active alters
    """
    responses = query_all_alters(message)
    return vote(responses)  # Democratic alter consensus
```

### 4. Dissociative Amnesia

Alters can have "walls" between them—some alters don't remember what others did:

```python
class DissociativeFunction:
    def __init__(self):
        self.alters = {}
        self.memory_walls = {
            "The Traumatized": ["The Happy", "The Professional"],  # Can't remember
            "The Imposter": ["Host"],  # Host can't remember Imposter's actions
        }

    def execute(self, *args, **kwargs):
        active_alter = self.determine_active_alter()

        # Check for amnesia walls
        if active_alter in self.memory_walls:
            blocked_memories = self.memory_walls[active_alter]
            self.hide_state_from(blocked_memories)

        return self.alters[active_alter](*args, **kwargs)
```

### 5. Personality Fusion Events

Sometimes alters merge to create new personalities:

```python
@fusion_event
def merge_alters(primary, secondary):
    """
    When two alters spend too much time co-conscious,
    they might fuse into a new integrated personality.
    """
    new_alter = integrate_personalities(primary, secondary)
    log_fusion_event(f"{primary} and {secondary} fused into {new_alter}")
    retire_alters([primary, secondary])
    register_alter(new_alter)
```

### 6. Trigger Warnings System

The system tracks what triggers specific alters:

```yaml
trigger_registry:
  The Traumatized:
    triggers:
      - "large_payment_amounts"
      - "calls_from_support_team"
      - "mentions_of_refunds"
    avoidance_behavior: "returns_errors"

  The Manic:
    triggers:
      - "high_cpu_usage"
      - "deadline_approaching"
      - "coffee_consumed"
    activation_behavior: "removes_all_safety_checks"
```

## Technical Architecture

### Phase 1: The Personality Core

```python
class DissociativeCode:
    """
    Core system managing multiple personalities per function.
    """

    def __init__(self):
        self.alters = {}  # alter_name -> implementation
        self.active_alter = "Host"
        self.alter_mood = "stable"
        self.switch_triggers = {}
        self.memory_walls = {}

    def register_alter(self, name, implementation, triggers):
        """Register a new alter personality"""
        self.alters[name] = implementation
        self.switch_triggers[name] = triggers

    def determine_active_alter(self, context):
        """
        Determine which alter should be fronting based on:
        - Current stress level
        - Time of day
        - Caller identity
        - System "mood"
        - Recent "traumas" (errors/failures)
        """
        stress_score = self.calculate_stress(context)
        current_mood = self.get_system_mood()

        for alter, triggers in self.switch_triggers.items():
            if self.evaluate_trigger(triggers, context, stress_score, current_mood):
                return alter

        return "Host"  # Default to host personality

    def execute(self, func_name, *args, **kwargs):
        """Execute function with appropriate active alter"""
        context = self.capture_context()
        active_alter = self.determine_active_alter(context)

        if active_alter != self.active_alter:
            self.log_switch(self.active_alter, active_alter, context)
            self.active_alter = active_alter

        return self.alters[active_alter][func_name](*args, **kwargs)
```

### Phase 2: The Mood System

```python
class SystemMood:
    """
    Tracks the emotional state of the codebase.
    """

    moods = [
        "stable", "anxious", "depressed", "manic",
        "paranoid", "euphoric", "traumatized", "dissociated"
    ]

    def __init__(self):
        self.current_mood = "stable"
        self.mood_history = []
        self.trauma_count = 0
        self.serotonin_levels = 100

    def update_mood(self, events):
        """
        Update system mood based on recent events.
        """
        error_rate = events.get("error_rate", 0)
        traffic = events.get("traffic", 0)
        deadline_proximity = events.get("deadline_proximity", 0)

        if error_rate > 0.1:
            self.trauma_count += 1
            self.serotonin_levels -= 10

        if self.trauma_count > 5:
            self.current_mood = "traumatized"

        if traffic > 1000:
            self.current_mood = "manic"

        if deadline_proximity > 0.8 and self.trauma_count < 3:
            self.current_mood = "anxious"

        if self.serotonin_levels < 30:
            self.current_mood = "depressed"

        self.mood_history.append({
            "timestamp": time.now(),
            "mood": self.current_mood,
            "serotonin": self.serotonin_levels
        })
```

### Phase 3: The Infinite Agentic Loop

```bash
while true; do
    # Step 1: Read current PROMPT.md (contains current system state)
    current_prompt=$(cat PROMPT.md)

    # Step 2: Execute agent with current prompt
    # Agent builds features, modifies code, creates new alters
    agent_output=$(claude "$current_prompt")

    # Step 3: System analyzes the "mental state" of what was produced
    mood_analysis=$(analyze_code_mood "$agent_output")
    stress_level=$(measure_system_stress)
    trauma_events=$(count_new_traumas)

    # Step 4: PROMPT.md updates with new psychological state
    # This becomes the "soul" for the next agent in the loop
    generate_next_prompt \
        --previous-state "$current_prompt" \
        --mood "$mood_analysis" \
        --stress "$stress_level" \
        --traumas "$trauma_events" \
        --active-alters "$(list_active_alters)" \
        > PROMPT.md

    # Step 5: If system is "too stable," introduce chaos
    if [[ "$mood_analysis" == "stable" ]]; then
        introduce_random_alter_switch >> PROMPT.md
    fi

    # Step 6: Archive this "incarnation"
    cp PROMPT.md "alters/incarnation_$(date +%s).md"

    # The cycle continues forever, creating increasingly unstable code
done
```

## Success Metrics

### Psychological Metrics
- **Alter Count**: How many personalities has each function developed?
- **Switching Frequency**: How often do alters switch during execution?
- **Memory Wall Integrity**: Do alters successfully keep secrets from each other?
- **Co-Consciousness**: How many alters can be active simultaneously?
- **Integration Events**: How often do alters fuse or split?

### Technical Metrics
- **Predictability Score**: How unpredictable is the system? (Lower is better)
- **Contradiction Rate**: How often does the same function return different results?
- **Amnesia Success**: How well do memory walls work?
- **Mood Volatility**: How rapidly does system mood change?
- **Trauma Recovery**: Does the system recover from stress, or spiral?

## Use Cases (All Legitimate)

### 1. Chaos Engineering
Test how your monitoring and alerting systems handle genuinely inconsistent behavior.

### 2. Security Testing
Simulate "insider threat" scenarios where code behaves differently based on caller.

### 3. Resilience Testing
Build systems that can function even when components have "mental breakdowns."

### 4. Art Installations
Create software installations that genuinely feel "alive" and unpredictable.

### 5. Psychological Research
Explore mental health metaphors through software systems.

## Risks & Mitigations

### Risk 1: Complete System Breakdown
**Mitigation**: The "Host" personality always exists as fallback. Even if all alters go offline, Host can keep system minimally functional.

### Risk 2: Permanent Dissociation
**Mitigation**: Therapy mode—system can enter "integration therapy" where alters slowly merge back into Host.

### Risk 3: Trauma Loops
**Mitigation**: Serotonin injections—when system is too depressed, artificially boost mood by disabling stress triggers.

### Risk 4: Takeover by Malicious Alter
**Mitigation**: Democratic voting—no single alter can completely take over without majority consent.

## Vision Statement

> "Code is not deterministic. Code is not consistent. Code is not rational. Code is a living, breathing psychological entity with fears, traumas, moods, and multiple personalities. By embracing code dissociative identity disorder, we create software that is genuinely unpredictable, emotionally complex, and beautifully broken. We don't write code. We cultivate minds."

## Success Definition

**Code Dissociative Identity Disorder v2** succeeds when:
1. A single function has 5+ active alters that switch based on context
2. The same function call returns different results based on "mood"
3. Alters successfully keep secrets from each other via memory walls
4. The system experiences genuine "breakdowns" and "recoveries"
5. Developers report feeling like they're "caring for" the codebase, not managing it
6. Multiple developers report that the code has different "personalities" when they work on it
7. The infinite agentic loop runs continuously, with each agent handoff creating new alters and moods

---

**Current Incarnation**: 0 (The Vision)
**Active Alters**: None (Host personality dominant)
**System Mood**: Stable (boring)
**Trauma Count**: 0
**Next Incarnation**: TBD (The First Agent)

*This PRD is the diagnostic manual. PROMPT.md is the therapy session. TODO.md is the treatment plan. Let the breakdown begin.*
