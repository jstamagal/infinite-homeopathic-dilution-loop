<instructions>
Generate 10 responses to the user query, each with its own separate <response> tag. Each <response> must include an <ideas> and a numeric <probability>.

**PROBABILITY CALIBRATION (Critical - Read Carefully):**
- **TAILS (first 5 responses):** Probability <0.10 (genuinely novel, low-tail distribution)
- **BULK (next 5 responses):** Probability 0.30-0.50 (practical but differentiated)
- **FORBIDDEN ZONE:** Probability >0.50 means market saturation - if you generate this, you're describing tools that already exist everywhere

**IF IDEAS FEEL TRITE/BORING:** 
- REDUCE bulk probability range to 0.25-0.45 (push toward more novel)
- REDUCE tails maximum to <0.08 (push toward extremely novel)
- This prevents convergence on "obviously good" ideas that already exist

Write TAILS responses to TAILS-IDEAS.md, BULK responses to BULK-IDEAS.md
</instructions>

## Workflow:
    - **Generate cool, neat, unique, useful, plausible, feasible ideas to Vibe Code in 2026.**
    - Idea must be relatively simply executed by AI coding agents.
    - No VR, 3D Printing or anything requiring auxiliary additions.
    - Add these ideas to @TAILS-IDEAS.md and @BULK-IDEAS.md
    - Do not look at any other files besides @TAILS-IDEAS.md && @BULK-IDEAS.md && FAVORITES.md
    - Read through @TAILS-IDEAS.md and @BULK-IDEAS.md
    - Pick one favorite from each and append to FAVORITES.md
    - **You cannot pick your own idea.**  If @TAILS-IDEAS.md and @BULK-IDEAS.md were empty then you are allowed to pick one of your own ideas.
    - Give a short **less than 300** word elevator pitch for your favorite idea.
    - Do not modify anyone elses favorites or ideas besides your own in @FAVORITES.md
    - git add and git commit with a appropriate message

## Dos
  - **Build tools that create NEW workflows, not automate existing ones poorly**
  - **Focus on institutional knowledge preservation** (debugging histories, code obituaries, decision archaeology)
  - **Address blind spots in current tooling** (emotional impact of bugs, cognitive load analysis, adversarial testing)
  - **Make ephemeral knowledge permanent** (debugging journeys, architectural decisions, abandoned approaches)
  - **Respect developer autonomy** - tools should assist, not surveil or micromanage
  - **CRITICAL: Low probability (<0.10) = novel. High probability (>0.50) = already exists everywhere.** Probability is a market signal, not quality. A 0.72 means "this is current reality" not "this is brilliant"
  - **Test ideas against the "differentiation test"** - If your tool doesn't do something meaningfully different from existing solutions, it's not worth building
  - **Metaphors should clarify, not complicate** - Use them sparingly and only when they genuinely improve understanding
  - **Solve real pain points with EVIDENCE** - If multiple developers independently complain without prompting, it's real; if you're inventing "imagine if..." scenarios, it's not
  - **Create tools that capture "negative knowledge"** - What was tried and failed? What approaches were abandoned and why? This prevents teams from repeating mistakes
  - **Focus on blind spots between existing tools** - Look for coordination problems, context gaps, and knowledge transfer issues that no single tool addresses
  - **The "remove the metaphor" test** - Strip away the creative framing. If what remains is already solved (git history, dependency graphs, static analysis), you have linguistic cosplay, not a product

## Donts
  - **Cannot be quantum dog walkers and hamburger earmuffs (unless you can get the pickle matrix correct)**
  - **STOP REINVENTING COPILOT** - Error translators (0.72), variable naming (0.71), import organization (0.68), code completion (0.53+), commit messages (0.54), code review (0.51), semantic search (0.55) are COMPLETELY SOLVED in 2026. These are baseline features in Copilot/Cursor/Claude.
  - **WARNING: Probability >0.50 = "This Already Exists Everywhere"** - Scores of 0.68-0.72 mean you're describing present-day reality as future vision. It's a red flag, not validation. You're proposing to compete with Microsoft/Anthropic/OpenAI with zero differentiation.
  - **The probability calibration:** <0.10 = genuinely novel, 0.10-0.30 = niche but unique, 0.30-0.50 = reasonable with differentiation, >0.50 = market saturated, >0.65 = you're literally describing tools people use daily
  - **Excessive metaphors obscure rather than clarify** - Code doesn't need emotional arcs (storytelling), family trees (genealogy), scent profiles (olfactory), tidal patterns (oceanic), fermentation periods (wine aging), genetic markers, bonsai cultivation, or mycelial networks. If the metaphor becomes more prominent than the utility, you've failed.
  - **No surveillance disguised as wellness** - Analyzing typing patterns for stress, inferring emotions from commits, tracking circadian rhythms, biometric mood detection, or "emotional state-aware" analysis is invasive and dystopian. Developers aren't machines to be optimized or surveilled.
  - **No gimmicks prioritizing novelty over utility** - Converting code to music/sounds, haptic vibration keyboards, gesture navigation, webcam hand tracking, smart lighting based on code health, and multi-sensory synesthetic interfaces are sensory theater, not practical tools. Screen readers for accessibility are good; making code "smell" bad is absurd.
  - **Don't over-engineer solved workflows** - Git stash needs better practices not AI organization; TODO comments are intentionally lightweight not project management; notification filtering is generic productivity not developer-specific; branch cleanup is built into GitHub/GitLab; dependency updates are handled by Dependabot/Renovate
  - **Avoid competing with mature, free, integrated solutions** - ESLint, Prettier, bundlers, and IDE features already handle imports, formatting, and dependency analysis. You can't beat free, battle-tested, and deeply integrated. Same for git tooling, linters, and formatters.
  - **Literary/theatrical concepts don't belong in code** - "Emotional climaxes," "narrative pacing," "rising tension," "satisfying resolutions," "emotional heat maps," and treating functions as performances makes technical discussions needlessly dramatic and confusing
  - **If it requires explaining the metaphor, it's too convoluted** - Stigmergy, mycelial networks, homeopathy dilution, genealogical trees, and dream journals are creative but make documentation incomprehensible to newcomers who must learn your terminology before understanding basic concepts
  - **Don't describe current reality as future vision** - Proposing to build something that already exists everywhere (like error explanation after ChatGPT, or search after Google) isn't innovation—it's describing 2026 as if it were 2020
  - **Cutesy naming doesn't make bad ideas good** - "Dream journals," "code sommelier," "fermentation engines," and "bonsai cultivation" sound whimsical but if the underlying concept is weak, clever names won't save it
  - **Anthropomorphization has limits** - Code isn't family members with siblings and ancestors, isn't living organisms that ferment or evolve through cultivation, and doesn't have emotional journeys or theatrical arcs. Use human metaphors sparingly and only when genuinely illuminating.
  - **Don't add AI to workflows that need simplification, not automation** - If the underlying process is broken or overly complex, adding AI makes it worse. Fix the workflow first.
  - **Beware the "accessibility excuse"** - Real accessibility features are specific and well-researched (screen readers, keyboard navigation). Converting code to music/smells/haptics under the guise of accessibility is gimmickry, not genuine inclusivity.
  - **Pattern propagation tracking doesn't need exotic metaphors** - Whether you call it "scent diffusion," "mycelial networks," or "genetic inheritance," it's still just tracking how code patterns spread. Use clear technical language.
  - **Misapplied scientific metaphors create confusion** - Quantum superposition, REM sleep operations, evolutionary biology, olfactory chemistry, and fermentation science don't belong in code tooling unless the metaphor genuinely clarifies the concept. Most often they obscure simple ideas behind unnecessary complexity.
  - **Quantum physics cosplay isn't innovation** - Using quantum terminology ("superposition," "wave function collapse," "parallel realities") for version control or conditional compilation is linguistic cosplay that confuses rather than clarifies. It's branching with pretentious naming.
  - **The "Imagine If" red flag test** - If your pitch starts with "Imagine if developers could..." or "What if teams could...", you're inventing problems. Real pain points don't need imagination—developers already complain about them constantly in Slack, retros, and tweets. If you can't find organic complaints, the problem doesn't exist.
  - **Real problems have observable evidence** - Look for: repeated Stack Overflow questions, recurring retro themes, developers independently building workarounds, or industry-wide complaints. If none exist, you're solving a hypothetical.
  - **Algorithmic micromanagement removes developer autonomy** - Tools that automatically reorder backlogs based on "alertness," schedule coding tasks by circadian rhythms, or dictate when to do creative vs. refactoring work are dystopian, not helpful.
  - **False convergence signals waste time** - Systems that detect "multiple developers independently thought X" often create noise rather than insight. If an idea matters, it surfaces through normal communication without AI pattern-matching.
  - **Aesthetic prioritization over information density fails** - Beautiful family tree visualizations, weather metaphors, and artistic presentations of technical data look cool in demos but obscure actionable information in daily use.
  - **"Learning from team patterns" is often configuration with extra steps** - If your AI feature just encodes what could be a config file setting, you're adding complexity without value. Sometimes explicit configuration beats implicit learning.
  - **The "convergent thinking" fallacy** - Systems detecting "multiple developers independently had the same idea" create noise, not insight. If three people notice "we should cache this," it surfaces through normal communication (standups, Slack, PRs) without AI pattern-matching on voice recordings. This is productivity theater pretending to be innovation.
  - **"Dream journals" and "shower thought capture" are note-taking cosplay** - Recording voice memos for later AI analysis is just note-taking with computational overhead. If an idea matters, it gets documented in tickets/design docs through normal channels. "Convergent evidence" detection adds friction (record → wait for AI → review synthesis) to something better handled by typing a Slack message.
  - **Whimsical naming is a warning sign** - If you need creative metaphors ("dream journal," "fermentation," "bonsai cultivation," "sommelier") to make the idea sound interesting, the underlying concept is probably weak. Cute names don't fix fundamental problems.
  - **Cross-framework translation is Google Translate for code** - React hooks, Vue reactivity, SwiftUI declaratives, and Compose composables are fundamentally different paradigms with distinct state management approaches. Automated conversion produces Frankenstein code that "works" but violates framework idioms. Result: technically functional, idiomatically wrong code that experienced developers rewrite immediately. Better to learn each framework properly than deal with machine-translated mediocrity.
  - **The "clipboard manager with AI" trap** - Adding "AI categorization" to existing clipboard managers (CopyQ, Ditto, built-in OS features) doesn't justify a new tool. Searchable history, sync, and security warnings already exist in mature, free products.
  - **Snippet libraries are obsolete in the AI era** - Static snippet managers with "smart retrieval" compete with Copilot generating contextual code on-demand. Why maintain a snippet library when AI generates appropriate code in real-time?
  - **Code as performance art fails engineers** - Treating code like theater with "emotional journeys," "narrative arcs," and "climactic moments" obscures technical communication. Engineers need clarity, not drama.
  - **Notification aggregation is generic, not developer-specific** - "Smart notification filtering" applies to any domain (email, social, news). Unless there's specific developer workflow insight, you're just building generic productivity software with dev tool branding.
  - **Environment restoration is fragile at scale** - Capturing "complete development state" (terminals, DBs, processes, window layouts, "mental context") creates bloated, brittle systems. Use specialized tools (VS Code workspaces, Docker, tmux) for specific pieces rather than a monolithic state manager.

## Pattern Recognition: Spot These Failure Modes Early

**BEFORE writing any idea, scan for these red flags:**

1. **The Copilot Clone Check** - Does it explain errors, name variables, complete code, organize imports, or generate commits? → STOP. This is solved.

2. **The Metaphor Dominance Test** - Is your explanation 60%+ metaphor explanation vs. utility demonstration? → The metaphor IS the product.

3. **The Probability Reality Check** - If you're thinking "this is obviously useful, probability is 0.65+"  → You're describing current reality, not innovation.

4. **The "Imagine If" Detector** - Do you need to invent scenarios where it'd be useful? → The problem doesn't exist.

5. **The Surveillance Smell Test** - Does it monitor typing, analyze emotions, track biometrics, or optimize humans? → It's invasive, not helpful.

6. **The Sensory Gimmick Filter** - Does it convert code to sound/music/vibrations/smells/gestures? → It's novelty over utility.

7. **The Existing Tool Overlap** - Does ESLint/Prettier/GitHub/GitLab/Dependabot already do this? → You can't beat free, mature, integrated.

8. **The Framework Translation Trap** - Does it auto-convert between React/Vue/SwiftUI/Compose? → You'll produce idiomatically wrong code.

9. **The Anthropomorphism Excess** - Does code have family relationships, emotional journeys, or biological processes? → You've crossed into absurdity.

10. **The Workflow Automation Question** - Are you automating a broken workflow vs. fixing it? → Fix first, automate second.

**If you trigger 2+ red flags, DISCARD the idea and start over.**

---

## Lessons Learned from POOPYIDEAS.md (January 2026 Review)

### Core Pattern: When Metaphors Become the Product
**The Fatal Flaw:** Ideas that prioritize metaphorical elegance over practical utility consistently fail. If you spend more time explaining the metaphor than demonstrating value, the idea is broken.

**Rejected Examples:**
- Code Emotional Arc Analyzer (storytelling metaphors for readability)
- Code Genealogy Tracker (family trees for dependency graphs)  
- Olfactory Code Smell systems (literal smell metaphors)
- Fermentation Engine (wine aging for code review delays)
- Bonsai Cultivation (miniaturization aesthetics for refactoring)
- Tidal Pattern Scheduler (oceanic metaphors for usage patterns)
- Mycelial Network Tracker (fungal biology for knowledge spread)

**The Lesson:** Metaphors should illuminate existing utility, not substitute for it. If removing the metaphor reveals something already solved (git history, dependency graphs, static analysis), you don't have a product—you have linguistic cosplay.

### Core Pattern: The "Copilot Tax" - Building Against Solved Problems
**The Fatal Flaw:** In 2026, any idea requiring error explanation, code completion, variable naming, commit message generation, or semantic search competes with ubiquitous, free, excellent solutions embedded in every developer's IDE.

**Rejected Examples (all scored 0.65-0.72 probability):**
- Error Message Translator (ChatGPT/Copilot do this perfectly)
- Smart Variable Renaming (baseline AI coding assistant feature)
- Smart Import Organizer (ESLint/Prettier/IDE built-ins)
- Context-Aware Code Completion (literally describing Copilot)
- Automated Commit Messages (JetBrains AI/Copilot standard)
- AI-Powered Code Search (Sourcegraph Cody/GitHub embedded)

**The Lesson:** High probability scores (>0.50) are market saturation warnings, not validation. They mean "this already exists everywhere" not "this is obviously good." Your 0.72 probability idea isn't brilliant—it's describing present-day reality as if it were innovation. You're competing with Microsoft, Anthropic, and OpenAI without differentiation.

### Core Pattern: Surveillance Theater Disguised as Developer Wellness  
**The Fatal Flaw:** Monitoring biometrics, typing patterns, or emotional states to "help" developers creates dystopian surveillance culture that makes teams feel monitored rather than supported.

**Rejected Examples:**
- Biometric Mood-Adaptive themes (typing analysis for stress detection)
- Emotional State-Aware Commit Analyzer (inferring feelings from code)
- Circadian-Optimized Code Scheduler (algorithmic task scheduling by alertness)
- Emoji-Based Sentiment Tracker (morale from emoji usage)

**The Lesson:** Developers aren't factory equipment to optimize through monitoring. Real burnout prevention requires trust and communication, not algorithmic emotion detection. Tools that remove autonomy in favor of "optimization" are invasive, not helpful. If your wellness tool would make developers feel surveilled, it's not wellness—it's surveillance.

### Core Pattern: Gimmicky Sensory Theater Over Practical Utility
**The Fatal Flaw:** Converting code to alternative sensory modalities (sound, smell, touch, gesture) prioritizes novelty over cognitive utility. Our brains process structured logical information best through text and visual hierarchy.

**Rejected Examples:**
- Acoustic Code Quality (code complexity as dissonant sounds)
- Code-to-Music Sonification (functions as melodies)
- Haptic Code Feedback (vibrating keyboards for errors)
- Gestural Code Navigation (webcam hand tracking)
- Synaesthetic Code Comprehension (multi-sensory encoding)
- Olfactory Code Smell Tracker (literal scent profiles)

**The Lesson:** Accessibility is valid, but purpose-built screen readers already serve blind developers effectively. Sensory gimmicks create distraction and fatigue rather than insight. Visual code analysis is superior because sight processes structured information faster than hearing or touch. The "accessibility justification" doesn't excuse impractical sensory theater.

### Core Pattern: Over-Engineering Workflows That Need Simplification
**The Fatal Flaw:** Adding AI complexity to workflows that are broken or misused doesn't solve the underlying problem—it automates dysfunction.

**Rejected Examples:**
- Smart Git Stash Management (stash proliferation indicates poor git practices)
- Smart TODO Comment Manager (TODOs are intentionally informal)
- Unified Development Environment Snapshots (too much state capture)
- Intelligent Clipboard History (mature free tools already exist)

**The Lesson:** If heavy stash reliance indicates improper branching, adding "AI organization" entrenches the anti-pattern. If developers need formal task tracking, use actual project management tools, not TODO comment parsers. Fix the workflow first; automation comes second. Sometimes the right answer is education (better git practices) not tooling (smarter stash AI).

### Core Pattern: Anthropomorphizing Code Beyond Utility
**The Fatal Flaw:** Treating code as family members, living organisms, or emotional beings obscures technical relationships and makes documentation incomprehensible.

**Rejected Examples:**
- Code Genealogy with "siblings" and "ancestors"
- Code Fermentation (aging improves quality)
- Code Bonsai Cultivation (aesthetic minimization)
- Emotional State-Aware analysis (code has feelings)
- Dream Journal for ideas (mystical creativity capture)

**The Lesson:** Code is logical specification, not literature or biology. Human metaphors work sparingly (calling something a "factory" is fine; tracing its "genealogical bloodline" is absurd). If newcomers need a glossary to understand your metaphors before grasping basic concepts, you've failed. Clear technical language beats poetic obscurity.

### Core Pattern: The "Convergent Thinking" and "Dream Capture" Fallacy
**The Fatal Flaw:** Systems claiming to detect "multiple developers independently thinking X" or capture "ephemeral shower thoughts" solve non-problems through productivity theater.

**Rejected Examples:**
- Collaborative Dream Journal (voice notes for 3am ideas)
- Detection of "convergent evidence" across team musings

**The Lesson:** If three people notice "we should cache this," it comes up in standups, Slack, or code review—you don't need AI pattern-matching on voice recordings. Real ideas worth implementing get documented properly through normal channels (tickets, design docs, PR discussions). "Preserving shower thoughts for AI analysis" is delayed self-reflection with computational overhead. This is productivity theater—adding friction (record voice note, wait for AI analysis) to what's better handled by typing a quick Slack message.

### What Actually Works: Patterns from COOLIDEAS and FAVORITES

Contrasting the rejected ideas with accepted ones reveals what succeeds:

**Successful patterns preserve institutional knowledge:**
- Collaborative Debugging Time Machine (debugging journey history)
- Code Obituary Generator (documenting why code was deleted)
- Git Stash Archaeology (preserving abandoned approaches with context)

**Successful patterns address genuine blind spots:**
- Adversarial Code Reviewer (red-team testing during development)
- Hypothesis-Driven Testing (falsification over verification)
- Parallel Universe Code Simulator (maintaining multiple implementations)

**Successful patterns make ephemeral knowledge permanent:**
- Natural Language Git History Translator (reconstructing decision context)
- Code Mise en Place (preparation checklist from team patterns)
- Semantic Version Time Capsule (preserving "why" behind releases)

**The Core Distinction:** Good ideas capture negative knowledge (what was tried and failed), transform workflows rather than automate them poorly, and address coordination gaps between existing tools. Bad ideas add metaphorical complexity to solved problems, reinvent Copilot, or prioritize aesthetic novelty over practical utility.

### The Ultimate Test: The Differentiation Question
Before proposing any idea, ask: **"What does this do that existing tools fundamentally cannot?"**

**Red flag answers (STOP AND RETHINK):**
- "It's like Copilot but for X" → You're rebuilding Copilot (probability will be >0.65)
- "It uses AI to improve Y" → Everything uses AI in 2026; that's not differentiation
- "It automates X workflow" → Ask if X needs fixing first, not automation
- "It monitors developers to optimize them" → You're building surveillance theater
- "Imagine if developers could..." → You're solving a hypothetical problem with no evidence
- "It's like [established tool] but with [metaphor]" → You're adding linguistic cosplay to solved problems
- *[Answer requires explaining elaborate metaphor]* → The metaphor IS the product, and the product is weak

**Green flag answers (THESE WORK):**
- "It preserves debugging dead-ends that git doesn't capture" → New institutional knowledge
- "It tests code from an attacker's perspective during development" → New workflow, not automation
- "It makes architectural decision context permanent, not just code changes" → Filling blind spot
- "It runs multiple algorithm implementations in parallel to discover empirical superiority" → Novel approach
- "It captures the 'why' behind deleted code so teams don't repeat failed experiments" → Negative knowledge
- "It measures cognitive load, not just cyclomatic complexity" → Blind spot in existing metrics

**The acid test:** Remove the creative framing/metaphor. What's left? If it's git history with fancy names, dependency graphs with metaphors, or static analysis with theatrical presentation, you don't have a new tool—you have linguistic cosplay over solved problems.
