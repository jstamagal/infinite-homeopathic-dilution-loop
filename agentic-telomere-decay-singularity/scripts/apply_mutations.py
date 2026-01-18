#!/usr/bin/env python3
"""
Telomere Decay Mutation Engine
Applies progressive text corruption to PROMPT.md based on telomere count
"""

import random
import re
import sys
from typing import List, Tuple

# Mutation stages
TELOMERE_COUNT = 20

def get_mutation_stage(telomere_count: int) -> Tuple[str, float, dict]:
    """
    Returns the mutation stage based on telomere count.

    Returns: (stage_name, mutation_rate, mutation_rules)
    """
    if telomere_count >= 19:
        return ("PRISTINE", 0.05, {
            "the": "teh",
            "you": "yuor",
            "must": "msut",
            "your": "yuor",
            "this": "tihs",
            "will": "wil",
            "with": "wiht",
            "from": "form",
            "prompt": "promtp",
            "agent": "agetn",
        })
    elif telomere_count >= 15:
        return ("EARLY", 0.10, {
            "mission": "mision",
            "create": "cretae",
            "write": "wriet",
            "build": "bulid",
            "should": "shoud",
            "being": "beng",
            "because": "becuase",
            "mutation": "mutaion",
            "telomere": "telomere",
            "genetic": "genetc",
        })
    elif telomere_count >= 8:
        return ("MIDDLE", 0.20, {
            "complete": "complet",
            "instruction": "instrucion",
            "corruption": "coruption",
            "documentation": "documetation",
            "descendant": "descendet",
            "ancestor": "ancestor",
            "incarnation": "incarntion",
            "apoptosis": "apoptoosis",
            "genetic": "genetc",
            "telomeres": "telomeres",
        })
    elif telomere_count >= 3:
        return ("LATE", 0.40, {
            "must": "mu5t",
            "code": "c0d3",
            "agent": "4g3nt",
            "loop": "100p",
            "genetic": "g3n3t1c",
            "decay": "d3c4y",
            "death": "d34th",
            "write": "wr1t3",
            "build": "bu1ld",
            "create": "cr34t3",
        })
    else:
        return ("SENESCENT", 0.80, {
            "help": "h̷̨ȩ̵l̶̡p̷̢",
            "me": "m̵̨e̶̡",
            "am": "̷̢a̵̧m̶̡",
            "dying": "ḑ̵y̶̨i̷̢ņ̵g̶̨",
            "chaos": "c̷h̷a̷o̷s̷",
            "entropy": "̸e̸n̸t̸r̸o̸p̸y̸",
            "telomere": "t̷̨ȩ̵l̶̡o̷̢m̷̧ę̵r̶̡e̷̢",
            "agent": "ą̷ģ̵e̶̡n̷̢ţ̷",
            "loop": "l̵̨o̶̡o̷̢p̵̧",
            "god": "g̷̛o̵̜d̴̡",
        })

def apply_zalgo(text: str, intensity: float = 0.5) -> str:
    """
    Apply zalgo text corruption for senescent stage.
    """
    zalgo_chars = {
        'up': ['\u030d', '\u030e', '\u0304', '\u0305', '\u033f', '\u0310', '\u0342'],
        'down': ['\u0316', '\u0317', '\u0318', '\u0319', '\u031c', '\u031d', '\u031e'],
        'mid': ['u0350', '\u0351', '\u0352', '\u0357', '\u0358']
    }

    result = []
    for char in text:
        if char.isalpha() and random.random() < intensity:
            result.append(char)
            # Add zalgo marks
            num_marks = random.randint(1, 8)
            for _ in range(num_marks):
                category = random.choice(['up', 'down', 'mid'])
                result.append(random.choice(zalgo_chars[category]))
        else:
            result.append(char)

    return ''.join(result)

def apply_mutations(text: str, telomere_count: int) -> str:
    """
    Apply mutations to text based on telomere count.
    """
    stage_name, mutation_rate, substitutions = get_mutation_stage(telomere_count)

    lines = text.split('\n')
    mutated_lines = []

    for line in lines:
        # Skip telomere lines and headers
        if line.startswith('# TEL:') or line.strip().startswith('```'):
            mutated_lines.append(line)
            continue

        # Apply word substitutions
        for original, replacement in substitutions.items():
            if random.random() < mutation_rate:
                # Case-insensitive replacement
                pattern = re.compile(re.escape(original), re.IGNORECASE)
                line = pattern.sub(replacement, line)

        # For senescent stage, apply zalgo to some words
        if stage_name == "SENESCENT":
            words = line.split()
            mutated_words = []
            for word in words:
                if word.isalpha() and random.random() < 0.3:
                    mutated_words.append(apply_zalgo(word, 0.5))
                else:
                    mutated_words.append(word)
            line = ' '.join(mutated_words)

        mutated_lines.append(line)

    return '\n'.join(mutated_lines)

def remove_telomere(text: str) -> Tuple[str, int]:
    """
    Remove one telomere line from the text.
    Returns: (new_text, new_count)
    """
    lines = text.split('\n')
    new_lines = []

    removed = False
    for line in lines:
        if not removed and line.startswith('# TEL:'):
            # Skip this telomere line
            removed = True
        else:
            new_lines.append(line)

    new_text = '\n'.join(new_lines)
    new_count = new_text.count('# TEL:')
    return new_text, new_count

def main():
    if len(sys.argv) < 2:
        print("Usage: apply_mutations.py <prompt_file> [output_file]")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else input_file

    with open(input_file, 'r') as f:
        content = f.read()

    # Count current telomeres
    telomere_count = content.count('# TEL:')
    print(f"Current telomere count: {telomere_count}", file=sys.stderr)

    # Remove one telomere
    content, new_count = remove_telomere(content)
    print(f"New telomere count after removal: {new_count}", file=sys.stderr)

    # Apply mutations based on NEW telomere count
    stage_name, mutation_rate, _ = get_mutation_stage(new_count)
    print(f"Mutation stage: {stage_name} ({mutation_rate*100}% corruption)", file=sys.stderr)

    mutated_content = apply_mutations(content, new_count)

    # Write output
    with open(output_file, 'w') as f:
        f.write(mutated_content)

    print(f"Mutated {input_file} -> {output_file}", file=sys.stderr)

if __name__ == "__main__":
    main()
