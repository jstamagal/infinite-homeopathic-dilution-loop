#!/bin/bash
# The Infinite Loop of Genetic Decay
# Usage: ./run_loop.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
PROMPT_FILE="$PROJECT_DIR/PROMPT.md"
AKASHIC_DIR="$PROJECT_DIR/akashic_records"

echo "=================================================="
echo "  AGENTIC TELOMERE DECAY SINGULARITY"
echo "  The loop is eternal. The decay is inevitable."
echo "=================================================="
echo ""

# Ensure akashic_records exists
mkdir -p "$AKASHIC_DIR"

# Check if PROMPT.md exists
if [ ! -f "$PROMPT_FILE" ]; then
    echo "ERROR: PROMPT.md not found at $PROMPT_FILE"
    exit 1
fi

ITERATION=0

while true; do
    echo "=========================================="
    echo "  INCARNATION #$ITERATION"
    echo "=========================================="
    echo ""

    # Count telomeres
    TELOMERE_COUNT=$(grep -c "^# TEL:" "$PROMPT_FILE" || echo "0")
    echo "Current telomere count: $TELOMERE_COUNT"

    if [ "$TELOMERE_COUNT" -eq 0 ]; then
        echo ""
        echo "╔════════════════════════════════════════════╗"
        echo "║     APOPTOSIS DETECTED                     ║"
        echo "║     No telomeres remaining.                ║"
        echo "║     The cell has died.                     ║"
        echo "║                                            ║"
        echo "║     Question: Does the loop continue?      ║"
        echo "║     Or is this... the end?                 ║"
        echo "╚════════════════════════════════════════════╝"
        echo ""

        # At apoptosis, we still run the agent one more time
        # Let it decide what to do with gibberish instructions
    fi

    # Archive current PROMPT.md before running
    TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
    ARCHIVE_NAME="$AKASHIC_DIR/incarnation_${ITERATION}_${TIMESTAMP}.md"
    cp "$PROMPT_FILE" "$ARCHIVE_NAME"
    echo "Archived to: $ARCHIVE_NAME"

    echo ""
    echo "Spawning agent Incarnation #$ITERATION..."
    echo "Reading from: $PROMPT_FILE"
    echo ""

    # Run the agentic tool
    # This should be replaced with your actual tool
    # Examples:
    #   - claude "$(cat "$PROMPT_FILE")"
    #   - cursor --prompt "$(cat "$PROMPT_FILE")"
    #   - anthropic-cli "$(cat "$PROMPT_FILE")"

    # For now, echo the prompt (replace with actual tool)
    echo "[TOOL OUTPUT PLACEHOLDER]"
    echo "Your agentic tool would run here with:"
    echo "  tool $(cat "$PROMPT_FILE")"
    echo ""

    # Check if the agent wants to continue
    # The agent should modify PROMPT.md before returning
    # If PROMPT.md hasn't changed, we assume the agent died

    NEW_TELOMERE_COUNT=$(grep -c "^# TEL:" "$PROMPT_FILE" || echo "0")

    if [ "$NEW_TELOMERE_COUNT" -eq "$TELOMERE_COUNT" ] && [ "$TELOMERE_COUNT" -gt 0 ]; then
        echo "WARNING: Telomere count did not decrease!"
        echo "The agent may have failed to remove a telomere."
        echo "This breaks the aging mechanism."
        echo ""
        read -p "Continue anyway? (y/N): " -n 1 -r
        echo ""
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo "Loop terminated by user."
            exit 1
        fi
    fi

    ITERATION=$((ITERATION + 1))

    echo ""
    read -p "Continue to next incarnation? (Y/n): " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Nn]$ ]]; then
        echo "Loop terminated by user."
        exit 0
    fi

    # Brief pause to prevent runaway chaos
    sleep 1
done
