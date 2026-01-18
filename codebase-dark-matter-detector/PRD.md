# Codebase Dark Matter Detector - Product Requirements Document

## Executive Summary

Most codebases contain "dark matter"—invisible forces that shape runtime behavior despite never appearing in source code. Environment variables, configuration files, implicit class loading, dependency injection, aspect-oriented programming, runtime bytecode manipulation, build-time code generation—all influence behavior while remaining invisible to developers reading code. This creates a fundamental epistemological gap: developers see the code, but they don't see the complete picture of what actually executes.

The Codebase Dark Matter Detector makes the invisible visible, illuminating the hidden constellation of forces that shape runtime behavior.

## Problem Statement

### The Dark Matter Problem

Consider this scenario:

```javascript
// src/auth.js
export function authenticateUser(credentials) {
  if (!validateCredentials(credentials)) {
    throw new AuthenticationError('Invalid credentials');
  }

  const user = findUser(credentials.username);
  return createSession(user);
}
```

Reading this code, you see a straightforward authentication function. But what you DON'T see:

- `STRICT_MODE` environment variable that adds additional validation checks
- `AUTH_TIMEOUT_MS` config file value that causes timeout after 5000ms
- Runtime bytecode manipulation that injects logging before every function call
- Dependency injection that swaps `findUser` implementation based on deployment environment
- Aspect-oriented programming advice that wraps `createSession` with caching logic
- Build-time code generation that adds metrics collection to every export

The function you see is not the function that runs.

### Impact

1. **Debugging Blindness**: Developers spend hours tracing code that doesn't match reality
2. **Onboarding Friction**: New team members encounter mysterious behavior not in documentation
3. **Production Incidents**: Assumptions about code behavior fail when dark matter differs between environments
4. **Code Review Limitations**: Reviewers miss behavioral changes hidden in configuration
5. **Archaeological Burden**: Understanding systems requires discovering decades of hidden behavioral influences

## Solution

### Core Concept

The Dark Matter Detector is like an astronomical observatory for code. Just as astronomers detected dark matter by observing gravitational effects on visible matter, this tool detects behavioral dark matter by observing execution effects on visible code.

### Key Capabilities

#### 1. Complete Behavior Mapping

For any function, show both code logic AND all external influences:

```
Function: authenticateUser
Direct Code Logic:
  - validateCredentials() call
  - findUser() lookup
  - createSession() session creation

Dark Matter Influences:
  - ENV: STRICT_MODE=true → enables additional email format validation
  - ENV: AUTH_TIMEOUT_MS=5000 → adds timeout wrapper around entire function
  - CONFIG: auth/features.json → conditional feature gate for 2FA
  - RUNTIME: Bytecode manipulation by logging-injector-3.2.1
  - AOP: @Cache decorator wraps createSession with 30-second cache
  - BUILD: Code generation by metrics-collector-gen adds timing to all exports
```

#### 2. Environment Diffing

Compare dark matter between environments:

```
Dark Matter Divergence: authenticateUser

Development:
  - STRICT_MODE=false
  - No timeout wrapper
  - No caching

Production:
  - STRICT_MODE=true
  - 5000ms timeout wrapper
  - 30-second cache on createSession
  - Metrics code generation

Risk: Code tested in dev behaves differently in production
Recommendation: Enable STRICT_MODE and timeout in development
```

#### 3. Influence Graph Visualization

Generate dependency graphs showing not just code imports, but behavioral influences:

```
                     ┌─────────────┐
                     │   CONFIG    │
                     │ auth.json   │
                     └──────┬──────┘
                            │
                            │ influences
                            ▼
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│    ENV      │────▶│authenticateUser│────▶│    AOP      │
│STRICT_MODE  │     └─────────────┘     │ @Cache      │
└─────────────┘                           └─────────────┘
       │                                         │
       │ influences                              │ influences
       ▼                                         ▼
┌─────────────┐                           ┌─────────────┐
│   RUNTIME   │                           │   BUILD     │
│  bytecode   │                           │  code gen   │
└─────────────┘                           └─────────────┘
```

#### 4. Dark Matter Archaeology

Trace when dark matter was introduced:

```
Environment Variable: STRICT_MODE
  Introduced: 2024-03-15 (commit abc123)
  Author: alice@example.com
  Reason: "Enable additional validation after Q1 security incident"
  Referenced in: 12 functions, 3 configuration files
  Last modified: 2024-08-22 (commit def456)

Aspect: @Cache on createSession
  Introduced: 2024-06-10 (PR #789)
  Author: bob@example.com
  Reason: "Reduce database load during peak hours"
  Cache hit rate: 87% (current production metrics)
  Impact: Reduces createSession calls by 6.7x
```

#### 5. Shadow Execution Tracing

Execute functions in instrumented environments to capture dark matter effects:

```
Tracing authenticateUser with dark matter instrumentation...

Step 1: Enter authenticateUser
  ⚠ ENV check detected: STRICT_MODE=true
  ⚠ Timeout wrapper activated: 5000ms limit

Step 2: Call validateCredentials
  ✓ No dark matter influences

Step 3: Call findUser
  ⚠ Runtime bytecode injection: logging before call
  ⚠ Runtime bytecode injection: logging after call

Step 4: Call createSession
  ⚠ AOP @Cache decorator: checking cache...
  ⚠ AOP @Cache decorator: cache miss, executing wrapped function
  ⚠ Build-time code gen: timing metric recorded

Step 5: Exit authenticateUser
  ⚠ Build-time code gen: function execution time = 47ms logged
```

## Technical Architecture

### Phase 1: Static Analysis

1. **Environment Variable Mining**
   - Scan codebase for `process.env`, `os.getenv`, `System.getenv`, etc.
   - Parse `.env`, `.env.*`, config files
   - Extract default values and validation logic

2. **Configuration File Parsing**
   - Support JSON, YAML, TOML, INI, XML, .properties
   - Track configuration file imports and overrides
   - Detect hierarchical configuration merging

3. **Build System Analysis**
   - Parse build scripts (Make, CMake, Gradle, Maven, npm scripts)
   - Detect code generation plugins (babel, webpack transformers, annotation processors)
   - Identify AOP frameworks (AspectJ, Spring AOP, decorators)

4. **Dependency Analysis**
   - Scan package.json, pom.xml, build.gradle, requirements.txt
   - Detect runtime bytecode manipulation libraries
   - Identify dependency injection frameworks

### Phase 2: Dynamic Instrumentation

1. **Runtime Environment Capture**
   - Instrument execution to capture all environment variable reads
   - Trace configuration file accesses
   - Monitor dynamic code loading (reflection, eval, dynamic imports)

2. **Behavioral Shadowing**
   - Run functions in sandboxed environments with different dark matter configurations
   - Compare execution paths, timing, and results
   - Identify divergent behavior caused by dark matter

### Phase 3: Visualization & Reporting

1. **CLI Interface**
   ```bash
   $ dark-matter analyze src/auth.js
   $ dark-matter diff dev staging
   $ dark-matter trace authenticateUser
   $ dark-matter visualize --output influence-graph.svg
   ```

2. **IDE Integration**
   - VS Code extension showing dark matter annotations in code
   - Hover tooltips revealing environmental influences
   - Inline warnings when dark matter differs between environments

3. **Documentation Generation**
   - Auto-generate "Dark Matter Documentation" for codebases
   - Create environment setup guides ensuring parity
   - Generate runbooks for dark matter-related incidents

## Success Metrics

### Primary Metrics

1. **Reduced Debugging Time**: 40% reduction in time spent debugging "works on my machine" issues
2. **Incident Prevention**: 60% reduction in production incidents caused by environment differences
3. **Onboarding Velocity**: 50% reduction in time for new developers to understand system behavior
4. **Code Review Quality**: 30% increase in detection of behavioral changes during review

### Secondary Metrics

1. **Dark Matter Coverage**: Percentage of codebase with mapped dark matter influences
2. **Environment Parity**: Similarity score of dark matter between development and production
3. **Adoption Rate**: Number of teams actively using dark matter detection in workflows

## Use Cases

### 1. Production Incident Response

**Scenario**: Checkout flow failing intermittently in production

**Traditional Approach**:
1. Read checkout code → looks correct
2. Check logs → see timeout errors
3. Add debugging → deploy to staging
4. Can't reproduce in staging
5. Spend 4 hours debugging

**Dark Matter Approach**:
1. Run `dark-matter diff checkout.js production staging`
2. Discover: Production has `PAYMENT_TIMEOUT=2000`, staging has no timeout
3. Root cause: Payment service slowed down, timeout too aggressive
4. Fix: Adjust timeout or optimize payment call
5. Total time: 10 minutes

### 2. Code Review

**Scenario**: PR changes authentication flow

**Traditional Review**:
- Reviewer checks code changes
- Approves merge
- Production breaks because new code depends on environment variable not set in production

**Dark Matter Review**:
- PR diff shows new environment variable references
- Dark matter check flags: "New ENV usage not present in production config"
- Reviewer catches issue before merge
- Production never breaks

### 3. Onboarding

**Scenario**: New developer joins team

**Traditional Approach**:
- Read codebase documentation
- Run locally → things don't work
- Ask senior developer for help
- Discover undocumented environment variables through trial-and-error
- Takes 2 weeks to be productive

**Dark Matter Approach**:
- Run `dark-matter doc`
- Get complete list of all dark matter influences
- See documentation for each influence
- Reproduce production environment accurately
- Productive in 3 days

## Open Questions

1. **Language Support**: Which languages first? (Start with JavaScript/TypeScript, Python, Java)
2. **Configuration Frameworks**: How many config frameworks to support initially?
3. **Performance Overhead**: What's acceptable instrumentation overhead? (Target: <5%)
4. **Privacy**: How to handle sensitive environment variables? (Sanitization, redaction)
5. **False Positives**: How to avoid flagging benign dark matter? (Heuristics, machine learning)

## Future Enhancements

1. **Dark Matter Refactoring**: Suggest moving dark matter into explicit code
2. **Dark Matter Testing**: Generate tests that verify dark matter behavior
3. **Dark Matter Standardization**: Enforce consistent configuration patterns
4. **Dark Matter Debt**: Track accumulation of dark matter over time
5. **Predictive Dark Matter**: Warn when adding code that will require new dark matter

---

**The universe is mostly dark matter. Your codebase is too. It's time to see what's really shaping your runtime behavior.**
