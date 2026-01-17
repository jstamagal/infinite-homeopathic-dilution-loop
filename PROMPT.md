<instructions>
Generate 10 responses to the user query, each with its own separate <response> tag. Each <response> must include an <ideas> and a numeric <probability>.
For the first five responses, please sample at random from the tails of the distribution, such that the probability of each response is less than 0.10.  Write these responses to TAILS-IDEAS.md
After that, for the next five responses sample from the bulk of the distribution such that the probability is high but idea remains distinct. BULK-IDEAS.md
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
  - **Low probability scores (<0.10) indicate truly novel ideas** - embrace genuine innovation
  - **Test ideas against the "differentiation test"** - If your tool doesn't do something meaningfully different from existing solutions, it's not worth building
  - **Metaphors should clarify, not complicate** - Use them sparingly and only when they genuinely improve understanding
  - **Solve real pain points, not hypothetical ones** - If multiple developers independently mention a problem, it's real; if you're inventing scenarios, it's probably not
  - **Create tools that capture "negative knowledge"** - What was tried and failed? What approaches were abandoned and why? This prevents teams from repeating mistakes
  - **Focus on blind spots between existing tools** - Look for coordination problems, context gaps, and knowledge transfer issues that no single tool addresses
  - **Focus on institutional knowledge preservation** (debugging histories, code obituaries, decision archaeology)
  - **Address blind spots in current tooling** (emotional impact of bugs, cognitive load analysis, adversarial testing)
  - **Make ephemeral knowledge permanent** (debugging journeys, architectural decisions, abandoned approaches)
  - **Respect developer autonomy** - tools should assist, not surveil or micromanage
  - **Low probability scores (<0.10) indicate truly novel ideas** - embrace genuine innovation
  - **Test ideas against the "differentiation test"** - If your tool doesn't do something meaningfully different from existing solutions, it's not worth building
  - **Metaphors should clarify, not complicate** - Use them sparingly and only when they genuinely improve understanding
  - **Solve real pain points, not hypothetical ones** - If multiple developers independently mention a problem, it's real; if you're inventing scenarios, it's probably not
  - **Create tools that capture "negative knowledge"** - What was tried and failed? What approaches were abandoned and why? This prevents teams from repeating mistakes
  - **Focus on blind spots between existing tools** - Look for coordination problems, context gaps, and knowledge transfer issues that no single tool addresses

## Donts
  - **Cannot be quantum dog walkers and hamburger earmuffs (unless you can get the pickle matrix correct)**
  - **Stop trying to reinvent Co-Pilot** - Error translators, variable naming, code completion, commit messages, import organization, code review, and semantic search are SOLVED PROBLEMS in 2026. GitHub Copilot, Cursor, Claude, and ChatGPT already do this ubiquitously.
  - **HIGH probability scores (>0.50) = market saturation, NOT opportunity** - If your "innovative" idea scores 0.68-0.72, it already exists everywhere. This means the idea is mainstream reality, not future vision.
  - **Probability is a market signal, not a quality metric** - A 0.72 probability means "this is so obvious it already exists everywhere," not "this is a great idea." Low probability (<0.10) indicates genuine novelty; high probability indicates you're describing current reality as if it were innovation.
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
  - **Don't solve hypothetical problems** - If you have to invent scenarios where your tool would be useful ("imagine if developers..."), the problem probably doesn't exist. Real pain points are evidenced by multiple people independently complaining.
  - **"Imagine if" is a red flag** - If your pitch requires inventing usage scenarios rather than pointing to existing frustrations, you're solving a problem that doesn't exist. Real problems have victims who complain without prompting.
  - **Algorithmic micromanagement removes developer autonomy** - Tools that automatically reorder backlogs based on "alertness," schedule coding tasks by circadian rhythms, or dictate when to do creative vs. refactoring work are dystopian, not helpful.
  - **False convergence signals waste time** - Systems that detect "multiple developers independently thought X" often create noise rather than insight. If an idea matters, it surfaces through normal communication without AI pattern-matching.
  - **Aesthetic prioritization over information density fails** - Beautiful family tree visualizations, weather metaphors, and artistic presentations of technical data look cool in demos but obscure actionable information in daily use.
  - **"Learning from team patterns" is often configuration with extra steps** - If your AI feature just encodes what could be a config file setting, you're adding complexity without value. Sometimes explicit configuration beats implicit learning.
  - **The "convergent thinking" fallacy** - Systems detecting "multiple developers independently had the same idea" usually find noise, not signal. If three people notice "we should cache this," it comes up in normal communication—you don't need AI pattern-matching on voice memos to discover it.
  - **Delayed self-reflection isn't AI value-add** - Capturing "shower thoughts" and "3am ideas" for later AI analysis is just note-taking with computational overhead. If an idea is worth implementing, it gets documented properly anyway through normal channels.
  - **Whimsical framing doesn't fix fundamental weakness** - Wrapping basic features in creative naming ("dream journal," "fermentation," "bonsai cultivation") makes demos memorable but doesn't address whether the underlying concept solves real problems.
  - **Cross-platform translation ignores architectural reality** - React hooks, Vue reactivity, SwiftUI declaratives, and Compose composables are fundamentally different paradigms. Automated conversion produces technically-functional but idiomatically-wrong code that experienced developers would rewrite.
  - **The "clipboard manager with AI" trap** - Adding "AI categorization" to existing clipboard managers (CopyQ, Ditto, built-in OS features) doesn't justify a new tool. Searchable history, sync, and security warnings already exist in mature, free products.
  - **Snippet libraries are obsolete in the AI era** - Static snippet managers with "smart retrieval" compete with Copilot generating contextual code on-demand. Why maintain a snippet library when AI generates appropriate code in real-time?
  - **Code as performance art fails engineers** - Treating code like theater with "emotional journeys," "narrative arcs," and "climactic moments" obscures technical communication. Engineers need clarity, not drama.
  - **Notification aggregation is generic, not developer-specific** - "Smart notification filtering" applies to any domain (email, social, news). Unless there's specific developer workflow insight, you're just building generic productivity software with dev tool branding.
  - **Environment restoration is fragile at scale** - Capturing "complete development state" (terminals, DBs, processes, window layouts, "mental context") creates bloated, brittle systems. Use specialized tools (VS Code workspaces, Docker, tmux) for specific pieces rather than a monolithic state manager.
  - **Stop trying to reinvent Co-Pilot** - Error translators, variable naming, code completion, commit messages, import organization, code review, and semantic search are SOLVED PROBLEMS in 2026. GitHub Copilot, Cursor, Claude, and ChatGPT already do this ubiquitously.
  - **HIGH probability scores (>0.50) = market saturation, NOT opportunity** - If your "innovative" idea scores 0.68-0.72, it already exists everywhere. This means the idea is mainstream reality, not future vision.
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
