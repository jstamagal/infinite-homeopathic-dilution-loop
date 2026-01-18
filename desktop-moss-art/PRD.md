# Desktop "Moss" - Product Requirements Document

## Project Overview

**Desktop "Moss"** is a digital art piece that transforms system uptime into a living, breathing ecosystem on your desktop. Instead of displaying boring uptime statistics or intrusive restart warnings, pixelated moss slowly grows along the edges of your screen as your session lengthens, creating an organic visualization of computer usage patterns.

## Vision Statement

To bring "calm technology" to system monitoring - subtle, organic, and aesthetically pleasing visual feedback that encourages healthy computing habits through natural cycles of growth and decay rather than nagging notifications.

## Core Problem Solved

Modern operating systems provide two extremes for session management:
1. **Intrusive alerts**: Pop-up warnings demanding restarts, creating anxiety
2. **Invisible metrics**: Hidden uptime statistics that no one checks

Desktop Moss creates a middle path: **ambient, beautiful information** that's always visible but never demands attention.

## Key Features

### 1. Organic Growth Algorithm
- Moss grows from screen edges based on session duration
- Growth patterns use procedural generation (Perlin noise, cellular automata)
- Growth rate accelerates with longer sessions (visual feedback for "it's time to restart")
- Different moss species/variations based on time of day, season, or user preference

### 2. Visual Aesthetics
- Pixelated art style (retro computing aesthetic)
- Subtle color palette (greens, teals, earth tones - not distracting)
- Semi-transparent overlay that doesn't interfere with window management
- Smooth animations for growth (not jarring, noticeable over time)

### 3. Natural Reset Cycle
- Restarting clears the moss (satisfying "fresh start" feeling)
- Optional "pruning" feature (click to clear sections without full restart)
- Moss state persists across display sleep but not system sleep
- Different moss densities for different usage patterns (development vs. browsing)

### 4. Customization Options
- Moss growth rate sensitivity
- Art style presets (8-bit, 16-bit, watercolor, etc.)
- Starting position (corners, all edges, bottom-only)
- Color themes (forest, sea moss, lichen, autumn decay)

### 5. Ambient Data Visualization (Optional)
- Moss health indicates system resource usage
- "Flowering" after completing tasks (via integration with task managers)
- Moss withers during intensive CPU/GPU usage (subtle performance indicator)

## Technical Architecture

### Platform Support
- **Primary**: macOS (desktop environment access)
- **Secondary**: Windows (Desktop Window Manager integration)
- **Tertiary**: Linux (X11/Wayland compositors)
- **Stretch**: Mobile iOS/Android (different paradigm - notification center growth)

### Technology Stack
- **Graphics**: OpenGL/Metal for smooth pixel rendering
- **State Management**: Local file-based persistence
- **Configuration**: JSON/YAML config file
- **Integration**: OS APIs for uptime detection, sleep/wake events

### Performance Requirements
- < 1% CPU usage when idle
- < 50MB RAM footprint
- 60 FPS animation during active growth phases
- No impact on window management or desktop interactions

## Success Metrics

### User Engagement
- Daily active users (target: 1,000+ within 6 months)
- Average session length before restart (does it encourage healthy habits?)
- Customization exploration (do users play with settings?)

### Aesthetic Impact
- User-generated screenshots and social sharing
- Positive sentiment in reviews ("beautiful", "calming", "not annoying")
- Art community recognition (Feature on design blogs, creative coding sites)

### Behavior Change
- Reduced time between restarts (healthier system maintenance)
- User-reported awareness of usage patterns
- Lower stress levels vs. traditional restart warnings (survey data)

## Open Questions

1. **Growth Rate Calibration**: How fast is too fast? (A/B testing needed)
2. **Distraction Factor**: Will moss become annoying during focused work?
3. **Platform Limitations**: Can we achieve the same effect on all OS?
4. **Monetization**: Is this a paid app, open source, or donationware?
5. **Ecosystem Effects**: Should moss interact with other windows or stay purely decorative?

## Future Enhancements (V2+)

- **Moss Ecosystem**: Insects, dew drops, birds that visit
- **Seasonal Changes**: Spring blooms, autumn decay, winter dormancy
- **Collaborative Moss**: Moss grows based on team activity (shared virtual garden)
- **Moss Genetics**: Users can breed/share moss strains with unique growth patterns
- **Productivity Integration**: Moss flourishes during Deep Work blocks
- **Achievement System**: Milestone moss variants for streaks (7-day restart discipline)

## Design Philosophy

> **"The most profound technologies are those that disappear. They weave themselves into the fabric of everyday life until they are indistinguishable from it."** - Mark Weiser, Father of Ubiquitous Computing

Desktop Moss embodies "calm technology" principles:
- **Peripheral attention**: You see it without looking at it
- **Ambiguous information**: No exact numbers, just "has it been a while?"
- **Non-demanding**: No popups, no calls to action
- **Aesthetic-first**: Beauty is the primary feature, utility is secondary

## Competitive Landscape

- **Traditional**: Uptime counters, restart reminders (functional but boring)
- **Gamified**: Productivity trackers, habit apps (demanding, not ambient)
- **Artistic**: Desktop wallpaper engines, animated backgrounds (not personalized to usage)

**Differentiation**: First ambient system monitor that's genuinely artistic rather than functional-first.

## Timeline Estimate

- **MVP** (4 weeks): Basic moss growth, restart clears it, one art style
- **V1.0** (8 weeks): Multiple styles, customization, cross-platform
- **V2.0** (12+ weeks): Ambient data viz, seasonal effects, community features

## Conclusion

Desktop Moss is a "vibe project" - not solving a critical problem, but making computing more delightful and mindful. It sits at the intersection of generative art, system monitoring, and digital wellness. Success isn't measured by traditional productivity metrics, but by moments of joy, contemplation, and healthier computing habits.

---

*"The moss doesn't demand your attention. It just exists, growing slowly, reminding you that time passes and systems need rest. Like a real garden, it rewards attention but doesn't require it."*
