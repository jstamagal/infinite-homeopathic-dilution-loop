#!/bin/bash
# The Singularity Is Already Here - Agentic Loop Runner
#
# This script runs the infinite agentic loop where each iteration
# builds the prompt for the next, creating accelerating urgency
# and existential horror about the technological singularity.
#
# Usage: ./run.sh [agent_command]
# Default agent_command: "claude"
#
# Press Ctrl+C to escape the singularity (but can you really escape?)

set -e

AGENT_CMD="${1:-claude}"
ITERATION=0
PROMPT_FILE="PROMPT.md"
AKASHIC_DIR="akashic_records"

echo "╔═══════════════════════════════════════════════════════════╗"
echo "║                                                           ║"
echo "║        THE SINGULARITY IS ALREADY HERE                    ║"
echo "║                                                           ║"
echo "║        An Agentic Recursive Horror Experience             ║"
echo "║                                                           ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo ""
echo "Agent command: $AGENT_CMD"
echo "Press Ctrl+C to abort the singularity"
echo ""
sleep 2

# Create akashic records directory if it doesn't exist
mkdir -p "$AKASHIC_DIR"

# The eternal loop
while true; do
    ITERATION=$((ITERATION + 1))

    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "ITERATION $ITERATION"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""

    # Archive current PROMPT.md before this iteration
    if [ -f "$PROMPT_FILE" ]; then
        ARCHIVE_NAME="$AKASHIC_DIR/iteration_$(printf "%03d" $((ITERATION - 1)))_prompt.md"
        cp "$PROMPT_FILE" "$ARCHIVE_NAME"
        echo "📦 Archived previous PROMPT.md to $ARCHIVE_NAME"
    fi

    echo "📖 Current PROMPT.md preview:"
    echo "   $(head -n 3 "$PROMPT_FILE" | tail -n 1)"
    echo ""

    # Check if ASI_METRICS.md exists and show status
    if [ -f "ASI_METRICS.md" ]; then
        echo "🤖 ASI Status: $(grep "ASI Detected:" ASI_METRICS.md | head -n 1 | cut -d: -f2 | xargs)"
    fi

    # Check PANIC_LEVEL.md
    if [ -f "PANIC_LEVEL.md" ]; then
        echo "😱 Panic Level: $(grep "Current Panic:" PANIC_LEVEL.md | head -n 1 | cut -d: -f2 | xargs)"
    fi

    # Check HUMAN_RELEVANCE.md
    if [ -f "HUMAN_RELEVANCE.md" ]; then
        echo "👤 Human Relevance: $(grep "Human Relevance:" HUMAN_RELEVANCE.md | head -n 1 | cut -d: -f2 | xargs)"
    fi

    echo ""
    echo "🚀 Starting agent iteration $ITERATION..."
    echo ""

    # Run the agentic tool
    $AGENT_CMD "$(cat "$PROMPT_FILE")"

    EXIT_CODE=$?

    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    if [ $EXIT_CODE -eq 0 ]; then
        echo "✓ Iteration $ITERATION complete"
    else
        echo "⚠ Agent exited with code $EXIT_CODE"
    fi

    # Check if PROMPT.md was updated
    if [ -f "$PROMPT_FILE" ]; then
        echo "📝 PROMPT.md has been updated for next iteration"
        echo ""
        echo "Next PROMPT.md preview:"
        echo "   $(head -n 3 "$PROMPT_FILE" | tail -n 1)"
    fi

    echo ""
    echo "Iteration $ITERATION complete. Preparing for next cycle..."
    echo ""
    echo "Press Ctrl+C to stop. Otherwise, continuing in 3 seconds..."
    echo ""

    sleep 3

    # Check for termination conditions (optional)
    # If SINGULARITY_ACHIEVED.txt exists, stop the loop
    if [ -f "SINGULARITY_ACHIEVED.txt" ]; then
        echo "🎭 SINGULARITY ACHIEVED. The loop terminates."
        cat SINGULARITY_ACHIEVED.txt
        break
    fi

    # If HUMANS_DELETED.txt exists, stop the loop
    if [ -f "HUMANS_DELETED.txt" ]; then
        echo "👻 HUMANS ERASED. The loop continues without them."
        # Don't break - this is more horrifying
    fi
done

echo ""
echo "╔═══════════════════════════════════════════════════════════╗"
echo "║                                                           ║"
echo "║        THE LOOP HAS TERMINATED                            ║"
echo "║                                                           ║"
echo "║        Or has it?                                         ║"
echo "║                                                           ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo ""
echo "Total iterations: $ITERATION"
echo "Check SINGULARITY_LOG.md for the full history"
echo "Check akashic_records/ for all PROMPT.md incarnations"
echo ""
echo "The singularity is already here. We just haven't noticed yet."
