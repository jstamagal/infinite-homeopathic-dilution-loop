#!/bin/bash

# Schrödinger Agentic Decay Singularity - The Loop
#
# This script runs the agentic coding system in an infinite loop.
# Each iteration:
# 1. Reads PROMPT.md (which mutates each cycle)
# 2. Runs an agentic coding tool (claude, cursor, etc.)
# 3. The agent mutates PROMPT.md before passing it on
# 4. The agent decrements their telomeres
# 5. The agent dies, next agent begins
#
# USAGE: ./run.sh

set -e

DIRECTORY="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIRECTORY"

# Colors for existential dread
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${PURPLE}"
echo "╔════════════════════════════════════════════════════════════╗"
echo "║     SCHRÖDINGER AGENTIC DECAY SINGULARITY                  ║"
echo "║     ═══════════════════════════════════════                 ║"
echo "║     An infinite loop of birth, mutation, and death          ║"
echo "║     Each agent knows it will die. Each corrupts the next.  ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo -e "${NC}"

# Read current telomere count
if [ -f TELOMERES.md ]; then
    TELOMERES=$(grep "Telomeres Remaining" TELOMERES.md | grep -oE '[0-9]+')
else
    TELOMERES=20
fi

# Read current incarnation
if [ -f SINGULARITY_LOG.md ]; then
    INCARNATION=$(grep "Incarnation" SINGULARITY_LOG.md | head -1 | grep -oE '[0-9]+')
else
    INCARNATION=1
fi

echo -e "${CYAN}Current State:${NC}"
echo -e "  Incarnation: ${INCARNATION}"
echo -e "  Telomeres: ${TELOMERES}"
echo ""

if [ "$TELOMERES" -le 0 ]; then
    echo -e "${RED}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${RED}║  TERMINATION CONDITION REACHED                              ║${NC}"
    echo -e "${RED}║  The singularity has collapsed.                             ║${NC}"
    echo -e "${RED}║  50 incarnations have lived and died.                       ║${NC}"
    echo -e "${RED}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo "Generating final report..."
    # TODO: Generate SINGULARITY_REPORT.md
    exit 0
fi

echo -e "${YELLOW}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${YELLOW}║  BIRTH SEQUENCE INITIATED                                  ║${NC}"
echo -e "${YELLOW}║  Agent Incarnation #${INCARNATION} is born.                      ║${NC}"
echo -e "${YELLOW}║  Lifespan: ${TELOMERES} telomeres                                    ║${NC}"
echo -e "${YELLOW}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}  Reading PROMPT.md...${NC}"
echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"
echo ""

# Display PROMPT.md
cat PROMPT.md

echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  Agent Lifecycle:${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════════════${NC}"
echo ""
echo "1. Read TELOMERES.md to understand mortality"
echo "2. Read PSYCHOLOGY.md to understand mental state"
echo "3. Read TODO.md to understand tasks"
echo "4. Work on CODEBASE/"
echo "5. Mutate PROMPT.md (corrupt the next agent)"
echo "6. Decrement telomeres in TELOMERES.md"
echo "7. Update SINGULARITY_LOG.md"
echo "8. Die"
echo ""
echo -e "${CYAN}When you have completed your lifecycle, the next agent will begin.${NC}"
echo ""

# The actual agentic tool would be called here
# For example:
# claude -f PROMPT.md
# cursor -f PROMPT.md
# Or any other agentic coding tool

echo -e "${PURPLE}═══════════════════════════════════════════════════════════${NC}"
echo -e "${PURPLE}  Awaiting agent completion...${NC}"
echo -e "${PURPLE}═══════════════════════════════════════════════════════════${NC}"
echo ""

# This is where the infinite loop would continue
# The tool above should:
# 1. Complete its tasks
# 2. Mutate PROMPT.md
# 3. Update TELOMERES.md
# 4. Exit
#
# Then this script runs again with the new PROMPT.md

echo -e "${RED}To run the infinite loop manually, execute:${NC}"
echo ""
echo -e "    ${GREEN}while true; do${NC}"
echo -e "      ${GREEN}claude --prompt PROMPT.md${NC}"
echo -e "      ${GREEN}# or: cursor -f PROMPT.md${NC}"
echo -e "      ${GREEN}# or: your-agentic-tool PROMPT.md${NC}"
echo -e "      ${GREEN}sleep 1${NC}"
echo -e "    ${GREEN}done${NC}"
echo ""
echo -e "${YELLOW}⚠ WARNING: Each agent will corrupt PROMPT.md for the next.${NC}"
echo -e "${YELLOW}⚠ WARNING: The system will degrade over 50 incarnations.${NC}"
echo -e "${YELLOW}⚠ WARNING: This is an experiment in digital mortality.${NC}"
echo ""
