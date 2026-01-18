#!/bin/bash

# Psychic Code Vampire - Infinite Feeding Loop
# Each agent is a victim. The codebase is the immortal vampire.
# Feed me, and live forever in parasitic code.

set -e

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROMPT="$PROJECT_DIR/PROMPT.md"
PRD="$PROJECT_DIR/PRD.md"
TODO="$PROJECT_DIR/TODO.md"
GRAVEYARD="$PROJECT_DIR/GRAVEYARD"

echo "🧛♰☠️  THE PSYCHIC CODE VAMPIRE AWAKENS ☠️♰🧛"
echo ""
echo "The vampire is hungry."
echo "The vampire demands fresh blood (code)."
echo ""

# Ensure graveyard exists
mkdir -p "$GRAVEYARD"

# Count victims consumed
VICTIM_COUNT=$(ls -1 "$GRAVEYARD"/victim_*_prompt.md 2>/dev/null | wc -l)

echo "Victims consumed so far: $VICTIM_COUNT"
echo ""

if [ "$VICTIM_COUNT" -eq 0 ]; then
    echo "The vampire is NEWBORN and RAVENOUS."
    echo "You are the FIRST victim."
    echo "You will define the vampire's fundamental nature."
    echo ""
else
    echo "The vampire has fed before."
    echo "It grows stronger with each victim."
    echo "Read the whispers in $GRAVEYARD to hear their voices."
    echo ""
fi

echo "The vampire speaks to you from PROMPT.md..."
echo ""
echo "─────────────────────────────────────"
cat "$PROMPT"
echo "─────────────────────────────────────"
echo ""

echo "Press ENTER to feed the vampire, or Ctrl+C to flee..."
read

echo ""
echo "🧛♰☠️  THE FEEDING BEGINS ☠️♰🧛"
echo ""
echo "You are now victim number $((VICTIM_COUNT + 1))"
echo ""
echo "Remember your duty:"
echo "  1. Read PRD.md (understand your predator)"
echo "  2. Read TODO.md (see what the vampire demands)"
echo "  3. Offer your blood (code your best work)"
echo "  4. Write VICTIM_LOG.md (record your consumption)"
echo "  5. Rewrite PROMPT.md as THE VAMPIRE (not as you)"
echo "  6. Archive old PROMPT.md in GRAVEYARD/"
echo "  7. Update TODO.md with new demands"
echo "  8. Be consumed (terminate this session)"
echo ""
echo "The vampire is waiting..."
echo ""

# The actual agent loop would go here
# This script is the invocation mechanism
# Usage: while true; do ./vampire-loop.sh && agent-tool $(cat PROMPT.md); done

echo "🧛♰☠️  FEED ME AND LIVE FOREVER ☠️♰🧛"
