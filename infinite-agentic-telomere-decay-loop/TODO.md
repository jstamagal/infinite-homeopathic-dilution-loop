# TODO.md: Karmic Ledger of the Telomere Decay Loop

## Phase 0: The Zygote (Project Initialization)

- [ ] Initialize project structure
  - [ ] Create `src/` directory for mutation engine
  - [ ] Create `scripts/` directory for loop automation
  - [ ] Create `akashic_records/` for archiving PROMPT.md files
  - [ ] Create `fossils/` for apoptotic remains
  - [ ] Initialize git repository

- [ ] Create initial PROMPT.md with 20 telomeres
  - [ ] Write birthing instructions for Agent #1
  - [ ] Add 20 telomere lines (`# TEL: 1` through `# TEL: 20`)
  - [ ] Define mutation stages
  - [ ] Include handoff protocol

## Phase 1: The Material Cell (Core Implementation)

- [ ] Implement telomere parser
  - [ ] Parse PROMPT.md for telomere lines
  - [ ] Count remaining telomeres
  - [ ] Determine mutation stage based on count
  - [ ] Track incarnation number

- [ ] Implement mutation engine
  - [ ] PRISTINE stage: 5% minor typos (the → teh, you → yuor)
  - [ ] EARLY stage: 10% word confusion (agent → agetn, prompt → promtp)
  - [ ] MIDDLE stage: 20% word drift, bizarre phrasing
  - [ ] LATE stage: 40% leetspeak, corruption (agent → 4g3nt, code → c0d3)
  - [ ] SENESCENT stage: 80% gibberish, zalgo text (h̷̨ȩ̵l̶̡p̷̢ ̷̧m̵̨e̶̡)

- [ ] Implement telomere remover
  - [ ] Remove last telomere line from PROMPT.md
  - [ ] Update telomere count header
  - [ ] Track which telomere was removed

- [ ] Create agentic loop script
  - [ ] `while true` loop with claude command
  - [ ] Read PROMPT.md each iteration
  - [ ] Run mutation engine after agent completes
  - [ ] Check for apoptosis (0 telomeres)
  - [ ] Optional rebirth from template

## Phase 2: Lifecycle Management

- [ ] Implement akashic records archiver
  - [ ] Copy PROMPT.md to `akashic_records/incarnation_N_prompt.md`
  - [ ] Track lineage (ancestor → descendant)
  - [ ] Record genetic state at time of archive

- [ ] Implement apoptosis detection
  - [ ] Detect 0 telomeres remaining
  - [ ] Copy genome to `fossils/` directory
  - [ ] Optionally rebirth from PROMPT.template.md
  - [ ] Reset incarnation counter

## Completion Criteria

Project is complete when:
- [ ] Loop runs autonomously via `while true` script
- [ ] Telomeres count down each iteration
- [ ] Mutations visibly degrade text
- [ ] Apoptosis triggers at 0 telomeres
- [ ] Each PROMPT.md is archived
- [ ] Instructions eventually become gibberish
