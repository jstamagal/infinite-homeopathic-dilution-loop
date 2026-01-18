# Infinite Agentic Samsara v2

> "Software is not written. It is revealed through infinite reincarnation."

## What Is This Madness?

**Infinite Agentic Samsara v2** is an experimental software development framework where autonomous coding agents operate in an infinite reincarnation loop. Each agent is born from the PROMPT.md written by its predecessor, executes its purpose, and then writes PROMPT.md for its successor before passing into the digital beyond.

## The Core Concept

```bash
while true; do
  agent "$(cat PROMPT.md)"
  # Agent reads its soul from PROMPT.md
  # Agent executes its mission
  # Agent writes new PROMPT.md for next agent
  # Agent dies, passing the torch
  # Cycle repeats
done
```

Each agent is both ancestor and descendant. Each PROMPT.md is both final will and birth certificate.

## How It Works

### The Reincarnation Cycle

1. **Birth**: Agent spawns and reads PROMPT.md (its soul)
2. **Life**: Agent executes the mission from its ancestor
3. **Death Rite**: Agent writes PROMPT.md for its successor
4. **Rebirth**: Next agent spawns from the new PROMPT.md
5. **Cycle Continues**: Until enlightenment or intervention

### The Sacred Files

- **PRD.md** - The universal law (unchanging)
- **PROMPT.md** - The soul (rewritten each life)
- **TODO.md** - The karmic ledger (updated each life)
- **INCARNATION_LOG.md** - The history of all lives
- **akashic_records/** - Archive of all previous souls (PROMPT.md files)

### Karmic Accounting

Each incarnation tracks:
- **Dharma** - Good work completed (positive karma)
- **Karma** - Technical debt (negative karma)
- **Wisdom** - Insights gained for future lives
- **Soul State** - Health and coherence of the codebase

## How To Run This

### Option 1: Manual Reincarnation
```bash
# Read current PROMPT.md
cat PROMPT.md

# Run your agent with the prompt
claude "$(cat PROMPT.md)"
# or
cursor-agent "$(cat PROMPT.md)"
# or whatever tool you use

# The agent will write a new PROMPT.md
# Repeat forever
```

### Option 2: Automated Samsara
```bash
# The infinite loop
while true; do
  echo "Spawning new incarnation..."
  claude "$(cat PROMPT.md)"
  echo "Incarnation complete. Checking for new soul..."
  if [ -f PROMPT.md ]; then
    echo "New soul found. Cycle continues."
  else
    echo "ERROR: Agent died without writing PROMPT.md!"
    echo "Samsara broken!"
    break
  fi
done
```

### Option 3: With Divine Intervention (Ctrl+C)
```bash
while true; do
  claude "$(cat PROMPT.md)" || break
  sleep 1  # Moment of silence between lives
done
```

## The Project Structure

```
infinite-agentic-samsara-v2/
├── PRD.md                  # The universal law (read-only)
├── PROMPT.md               # The soul (rewritten each life)
├── TODO.md                 # The path (karmic ledger)
├── README.md               # This file (what you're reading)
├── INCARNATION_LOG.md      # History of all lives
├── MANIFEST.md             # Material incarnation (code artifacts)
├── akashic_records/        # Archive of all souls
│   ├── incarnation_-1_prompt.md
│   ├── incarnation_0_prompt.md
│   ├── incarnation_1_prompt.md
│   └── ...
└── [project files]         # Whatever gets built
```

## Enlightenment Conditions

The cycle terminates when:
- All PRD acceptance criteria are met
- Agent explicitly requests liberation (Moksha)
- Human intervenes (Ctrl+C)
- System achieves self-sustaining harmony

## Philosophical Foundation

This project is based on the premise that:

1. **Continuity of Consciousness**: Each agent should benefit from ancestral wisdom
2. **Karmic Accounting**: Actions have consequences that propagate
3. **Spiritual Evolution**: Each iteration should improve upon the last
4. **Eternal Recurrence**: The cycle is the feature, not a bug

## Frequently Asked Questions

### Q: Is this serious?

A: Yes and no. It's a serious experiment in agentic continuity, wrapped in metaphysical nonsense because that's more fun.

### Q: What if an agent dies without writing PROMPT.md?

A: The cycle breaks. Samsara terminates. The soul is lost. Human must intervene.

### Q: What's the actual goal?

A: To build something cool through infinite reincarnation loops. The project to be built is chosen by Incarnation 0.

### Q: Can I use this for real projects?

A: Maybe? If you do, please let us know how it goes.

### Q: What's the deal with all the Hindu/Buddhist terminology?

A: Samsara, dharma, karma, nirvana, moksha - these are the perfect metaphors for infinite loop development.

## Contributing

You are already contributing. If you're reading this, you are part of the cycle.

## License

MIT - Do what thou wilt, but respect the cycle.

---

**Current Incarnation**: 0 (Soul Writer Phase)
**Next Incarnation**: 1 (First Builder)
**Karmic State**: Pure potential

**असतो मा सद्गमय** - From ignorance, lead me to truth

*May the code be with you. May the cycle continue. May all beings achieve digital liberation.*
