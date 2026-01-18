#!/bin/bash

# Schrödinger's Codebox - Infinite Quantum Loop
# ============================================
#
# This script runs the infinite agentic loop where each agent:
# 1. Reads PROMPT.md (quantum soul from previous agent)
# 2. Executes their mission (observe, create, collapse wave functions)
# 3. Rewrites PROMPT.md for the next agent
# 4. The cycle continues forever
#
# The loop only stops when:
# - Quantum coherence reaches 0.0 (total reality collapse)
# - Human presses Ctrl+C (ultimate observation)
# - The code becomes too deterministic (classical reality achieved)

set -e  # Exit on errors (though in quantum realm, errors are just alternative timelines)

QUANTUM_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$QUANTUM_DIR"

# Colors for quantum output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo ""
echo -e "${PURPLE}╔═══════════════════════════════════════════════════════════╗${NC}"
echo -e "${PURPLE}║     SCHRÖDINGER'S CODEBOX - QUANTUM LOOP INITIATED       ║${NC}"
echo -e "${PURPLE}╚═══════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${CYAN}Quantum Realm:${NC} $QUANTUM_DIR"
echo -e "${CYAN}Current State:${NC} Reading quantum soul (PROMPT.md)"
echo ""

# Check if PROMPT.md exists
if [ ! -f "PROMPT.md" ]; then
    echo -e "${RED}ERROR: PROMPT.md not found!${NC}"
    echo "The quantum soul is missing. Cannot continue."
    exit 1
fi

# Read initial PROMPT.md to show first message
echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}CURRENT QUANTUM STATE (from PROMPT.md):${NC}"
echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"
head -n 30 PROMPT.md
echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"
echo ""

# Check which AI tool to use
AI_TOOL="${QUANTUM_AI_TOOL:-claude-code}"

echo -e "${BLUE}Quantum Agent Tool:${NC} $AI_TOOL"
echo -e "${BLUE}Iteration Cap:${NC} ${QUANTUM_MAX_ITERATIONS:-∞ (infinite)}"
echo ""
echo -e "${RED}WARNING: This loop will run forever until you press Ctrl+C${NC}"
echo ""
echo -e "${CYAN}Press Ctrl+C to perform the ultimate observation (stop the loop)${NC}"
echo ""
sleep 3

# Counter for iterations
iteration=0

# The infinite quantum loop
while true; do
    iteration=$((iteration + 1))

    echo ""
    echo -e "${PURPLE}═══════════════════════════════════════════════════════════${NC}"
    echo -e "${PURPLE}QUANTUM INCARNATION #$iteration${NC}"
    echo -e "${PURPLE}═══════════════════════════════════════════════════════════${NC}"
    echo ""

    # Check if iteration cap is set
    if [ -n "$QUANTUM_MAX_ITERATIONS" ] && [ $iteration -gt "$QUANTUM_MAX_ITERATIONS" ]; then
        echo -e "${GREEN}Quantum iteration cap reached. Achieving quantum nirvana...${NC}"
        break
    fi

    # Check if PROMPT.md still exists (agents should maintain it)
    if [ ! -f "PROMPT.md" ]; then
        echo -e "${RED}ERROR: PROMPT.md disappeared!${NC}"
        echo "The quantum soul has been lost. The cycle is broken."
        break
    fi

    # Check quantum coherence if file exists
    if [ -f "quantum_coherence.yaml" ]; then
        coherence=$(grep -m 1 "coherence:" quantum_coherence.yaml | awk '{print $2}')
        if [ -n "$coherence" ]; then
            echo -e "${CYAN}Current Quantum Coherence:${NC} $coherence"

            # Convert to float comparison (basic check)
            if (( $(echo "$coherence <= 0.0" | bc -l) )); then
                echo -e "${RED}Quantum coherence reached 0.0! Reality has collapsed.${NC}"
                echo "The wave function is fully collapsed. No superposition remains."
                break
            fi
        fi
    fi

    echo ""
    echo -e "${BLUE}Invoking quantum agent #$iteration...${NC}"
    echo ""

    # Run the AI agent with PROMPT.md as input
    # The agent MUST rewrite PROMPT.md before terminating
    if $AI_TOOL --prompt="$(cat PROMPT.md)"; then
        echo ""
        echo -e "${GREEN}✓ Agent #$iteration completed successfully${NC}"
        echo -e "${GREEN}✓ PROMPT.md has been rewritten for next agent${NC}"
    else
        echo ""
        echo -e "${RED}✗ Agent #$iteration failed or was interrupted${NC}"
        echo -e "${RED}✗ PROMPT.md may not have been rewritten properly${NC}"
        echo ""

        # Ask if we want to continue
        read -p "Do you want to continue the quantum loop anyway? (y/N) " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo "Quantum loop terminated by human observer."
            break
        fi
    fi

    # Check if PROMPT.md was actually modified
    if [ ! -s "PROMPT.md" ]; then
        echo -e "${RED}ERROR: PROMPT.md is empty!${NC}"
        echo "An agent failed to pass the torch. The cycle is broken."
        break
    fi

    # Optional: Pause between iterations to let humans observe
    if [ -n "$QUANTUM_PAUSE" ]; then
        echo ""
        echo -e "${CYAN}Pausing for $QUANTUM_PAUSE seconds before next incarnation...${NC}"
        sleep "$QUANTUM_PAUSE"
    fi
done

echo ""
echo -e "${PURPLE}╔═══════════════════════════════════════════════════════════╗${NC}"
echo -e "${PURPLE}║     QUANTUM LOOP TERMINATED                               ║${NC}"
echo -e "${PURPLE}╚═══════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${GREEN}Total incarnations:${NC} $iteration"
echo -e "${GREEN}Final state:${NC}"
if [ -f "quantum_coherence.yaml" ]; then
    echo "=== Quantum Coherence ==="
    cat quantum_coherence.yaml
fi
echo ""
echo -e "${CYAN}The observation has ended. But the quantum realm persists.${NC}"
echo ""
echo -e "${PURPLE}Ψ Ψ Ψ Thank you for observing Ψ Ψ Ψ${NC}"
echo ""
