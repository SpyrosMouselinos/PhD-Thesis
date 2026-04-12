# PhD Defense Narrative Transformation Design Specification

**Date:** 2026-04-12
**Project:** Transform PhD defense presentation from "three papers summary" to cohesive thesis narrative
**Goal:** Create a defense that tells the unified story: "Benchmark success is not the same as reasoning"

---

## Executive Summary

Transform the existing 21-slide presentation into a 24-slide defense that emphasizes the doctoral narrative of measuring and enhancing AI reasoning across modalities. The transformation shifts from chapter summaries to claim-driven storytelling, with dramatic evidence presentation and memorable synthesis.

**Core Narrative Arc:**
1. **Opening (slides 1-4):** Hook → Thesis claim → Historical parallel → Method
2. **Evidence (slides 5-20):** Vision breaks → Code breaks → Geometry breaks (but we fix it)
3. **Synthesis (slides 21-23):** Same pattern → What it means → Take-home message
4. **Appendix (slide 24):** Thank you / backup slides marker

---

## Architecture Changes

### New Structure (24 slides total)

**Slides to ADD:**
- **Slide 2:** Thesis claim slide (replaces outline)
- **Slide 16:** Geometry calibration slide (human baseline: 30.5%)
- **Slide 21:** Cross-domain synthesis slide
- **Slide 23:** Closing takeaway slide

**Slides to REMOVE:**
- Current slide 2 (outline) - replaced with thesis claim
- References slide - moved to appendix/backup

**Slides to TRANSFORM:**
- All chapter slides get claim-driven titles
- Three "hero slides" get dramatic visual transformations (slides 7, 12, 20)
- Slide 4 gets correct figure (Thesis Fig 1.8)

---

## Detailed Slide Specifications

### SECTION 1: Opening (Slides 1-4)

#### Slide 1: Title (No changes)
**Keep as-is:** Title page with institution and supervisors

---

#### Slide 2: Thesis Claim (NEW - replaces outline)

**Title:** "One thesis in one sentence"

**Content:**
- **Top (large text):** "Benchmark success is not the same as reasoning."
- **Three columns:**
  - **Vision:** Break "superhuman" models
  - **Code:** Removing hints exposes memorization and shallow reasoning
  - **Geometry:** Structured agent teams recover what single models miss
- **Bottom line:** "Same question across modalities: can AI move beyond pattern recognition?"

**Visual approach:** Clean typography, minimal graphics, power in the words

**Speaker notes:** "This is the entire PhD in one claim. Benchmark leaderboards tell us models are 'solved,' but I'm going to show you they're not. Three domains, same pathology."

---

#### Slide 3: Clever Hans (Transform)

**Title:** "Success can mask lack of understanding" (KEEP)

**Changes:**
- **Enlarge image:** Clever Hans figure to 0.9\textwidth (currently 0.85)
- **Sharpen bullets:**
  - "Perfect performance ≠ understanding"
  - "Benchmark success ≠ reasoning"
  - "Small changes shouldn't break intelligent systems"

**Keep:** Existing source attribution and speaker notes

---

#### Slide 4: Research Question (Critical fix needed)

**Title:** "Central Research Question and How This Thesis Tests It" (KEEP)

**CRITICAL CHANGE:**
- **Replace figure:** Current figure (wrong - shows white-box XAI methodology)
- **Use:** Thesis Fig 1.8 (adversarial testing diagram from thesis page 24)
- **File:** `assets/thesis-fig-1-8-adversarial-testing.png` (verify this is correct figure)

**Keep:** Research question text and column layout

---

### SECTION 2: Visual Chapter (Slides 5-9)

#### Slide 5: CLEVR Setup (Transform)

**Title:** "CLEVR looked solved. It wasn't." (NEW)

**Changes:**
- **Add first bullet:** "Models reached 99%+ accuracy"
- **Keep rest:** Existing bullets and CLEVR scene example

---

#### Slide 6: Two-Player Game (Keep)

**Title:** "A Two-Player Black-Box Test for VQA" (KEEP)

**No changes:** Already clear and effective

---

#### Slide 7: HERO SLIDE - Visual Results (Transform dramatically)

**Title:** "99% accuracy. Still brittle." (NEW)

**Visual transformation:**
- **Replace table** with four large callout boxes showing model drops
- **Layout:** Four boxes across slide width:
  ```
  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐
  │    FiLM     │  │     RN      │  │     TbD     │  │    MDetr    │
  │  96.2→48.0  │  │  93.2→47.0  │  │  99.1→69.0  │  │  99.7→60.0  │
  │  (50% drop) │  │  (50% drop) │  │  (30% drop) │  │  (40% drop) │
  └─────────────┘  └─────────────┘  └─────────────┘  └─────────────┘
  ```
- **Use:** Hybrid approach - main number large with small arrow/bar showing drop
- **Bottom line:** "Near-perfect benchmark scores collapse under semantic perturbations"

**Implementation note:** Extract numbers from current ICLR Table 2, create new visual

---

#### Slide 8: Qualitative Failures (Keep mostly)

**Title:** "Small changes. Big failures." (NEW)

**Changes:**
- **Make figure larger:** Use full width=0.85\textwidth, height=0.65\textheight
- **Keep:** Current tight crop showing 2 example columns

---

#### Slide 9: Visual Synthesis (Transform)

**Title:** "What the visual chapter proved" (NEW)

**Transform bullets to claims:**
- "High accuracy ≠ robust reasoning"
- "Benchmark success hides brittleness"
- "Semantic stress-testing reveals real capabilities"

**Remove:** Generic synthesis text, make it punchy

---

### SECTION 3: Code Chapter (Slides 10-14)

#### Slide 10: Code Opener (Transform)

**Title:** "In code, the shortcuts live in the prompt" (NEW)

**Changes:**
- **Sharpen bullets:** Make them about the trap:
  - "Function names leak the solution"
  - "Keywords act as hidden hints"
  - "Examples do the reasoning for the model"
  - "Question: Is the model solving, or pattern-matching?"

**Keep:** Current code prompt example figure

---

#### Slide 11: Blocks of Influence (Keep mostly)

**Title:** "Three blocks, three biases" (NEW)

**Keep:** Blocks of Influence diagram and structure

**Minor change:** Sharpen bullet points if needed

---

#### Slide 12: HERO SLIDE - Code Results (Transform dramatically)

**Title:** "Remove the hints, lose the reasoning" (NEW)

**Visual transformation:**
- **Replace table** with hero numbers presentation
- **Layout:** Three large callout boxes:
  ```
  ┌──────────────────┐  ┌──────────────────┐  ┌──────────────────┐
  │  Anonymization   │  │  Drop Keywords   │  │    Combined      │
  │      ~19%        │  │      ~22%        │  │      ~40%        │
  │      drop        │  │      drop        │  │      drop        │
  └──────────────────┘  └──────────────────┘  └──────────────────┘
  ```
- **Bottom line:** "The model was using the shortcuts, not solving the problem"

**Implementation note:** Extract key statistics from ACL Table 3

---

#### Slide 13: Code Failures (Keep mostly)

**Title:** "Plausible code ≠ correct reasoning" (NEW)

**Changes:**
- **Keep:** Current single before/after example
- **Emphasize in bullets:** "Still uses right operators, still looks intelligent, but logic is wrong"

---

#### Slide 14: Mitigation (Simplify)

**Title:** "Mitigation helps, but the bias remains" (NEW)

**Changes:**
- **Simplify visual:** Show ONLY the most important result table
- **Pick one:** Either Table 4 or Table 5 from ACL paper, not both
- **Bottom line:** "Partial improvement, not full solution"

---

### SECTION 4: Geometry Chapter (Slides 15-20)

#### Slide 15: Geometry Opener (Transform)

**Title:** "Geometry is where everything collides" (NEW)

**Transform bullets to emphasize convergence:**
- "Vision + Language + Planning + Tool use"
- "Algebraic reasoning alone is not enough"
- "Spatial relationships require true understanding"
- "The hardest setting - where all earlier problems converge"

**Keep:** Current Euclidea screenshot

---

#### Slide 16: Geometry Calibration (NEW)

**Title:** "Geometry is hard even for well-prepared humans"

**Content:**
- **Visual:** Clean Euclidea problem screenshot (one example problem, fairly large)
- **Callout box (large, bold):** "Human study performance: 30.5%"
- **Bottom line:** "This is why geometry is the right culmination of the thesis."

**Visual approach:** One problem image dominates (0.6 textwidth/height), stat is unmissable

**Speaker notes:** "Before I show you the model results, let me calibrate you. We ran a human study on 20 Euclidea problems. Well-prepared participants averaged 30.5%. This is not a toy benchmark - it's genuinely hard geometric reasoning."

**File to use:** `assets/euclidea-clean-problem.png` or extract another clean example from EMNLP paper

---

#### Slide 17: Baselines (Transform)

**Title:** "Single-model prompting: not enough" (NEW)

**Changes:**
- **Keep:** Current baselines figure
- **Add callout/annotation:** "ChatGPT: 5.9 → 13.6 with best prompting"
- **Emphasize:** Even adaptive few-shot has limits

---

#### Slide 18: Multi-Agent (Transform)

**Title:** "From monologue to teamwork" (NEW)

**Changes:**
- **Make architecture diagram LARGER:** 0.7\textheight (currently smaller)
- **This is conceptual heart:** Make it visually dominant

**Keep:** Current multi-agent architecture figure and bullets

---

#### Slide 19: VRP + Naming (Keep)

**Title:** "Two more failure modes: grounding and naming" (NEW)

**Keep:** Both VRP (Fig 4.3) and naming bias (Fig 4.4) figures side-by-side (already updated)

---

#### Slide 20: HERO SLIDE - Geometry Results (Transform dramatically)

**Title:** "Better reasoning through better organization" (NEW)

**Visual transformation:**
- **Replace table** with dramatic result presentation
- **Layout:** Three large boxes showing key improvements:
  ```
  ┌────────────────┐  ┌────────────────┐  ┌────────────────┐
  │   MetaMath     │  │    ChatGPT     │  │     GPT-4      │
  │   8.9 → 14.9   │  │  11.7 → 32.3   │  │  21.2 → 38.9   │
  │    (+67%)      │  │    (+176%)     │  │    (+83%)      │
  └────────────────┘  └────────────────┘  └────────────────┘
  ```
- **Bottom line (large):** "Structure matters as much as scale"

**Additional context:** Show ablation trend: 13.6 → 22.2 → 28.1 (Alpha/Beta levels)

**Implementation note:** Extract from EMNLP Table 1

---

### SECTION 5: Synthesis & Closing (Slides 21-23)

#### Slide 21: Cross-Domain Synthesis (NEW)

**Title:** "Same pathology, different surface form"

**Content:**
- **Three columns:**
  - **Vision** → layout / relation shortcuts
  - **Code** → names / keywords / examples
  - **Geometry** → planning / grounding / naming / single-model limits
- **Large bottom text:** "When reasoning gets hard, models retreat to the easiest available cue."

**Visual approach:** Three columns with domain icons/symbols, bold conclusion statement

**Speaker notes:** "This is the doctoral contribution. Not three separate papers, but one unified finding about how deep learning fails at reasoning. The surface manifestation differs - in vision it's spatial shortcuts, in code it's lexical hints, in geometry it's planning failures - but the underlying pathology is identical."

---

#### Slide 22: Conclusions (Transform)

**Title:** "What this PhD really contributed" (NEW)

**Transform content to three clear contributions:**
- "A method: semantic adversarial testing (black-box, universal)"
- "A finding: shortcuts dominate when reasoning gets hard"
- "A solution: structure and specialization improve robustness"

**Contemporary examples (update from current slide 20):**
- "Reinforcement learning for reasoning (OpenAI o1)"
- "Unified multimodality (GPT-4o, Gemini)"
- "Agent frameworks (Anthropic Research, OpenAI Agents SDK)"

**Keep:** Footnote about contemporary examples documented at time of defense

---

#### Slide 23: Closing Takeaway (NEW)

**Title:** "Take-home message"

**Content:**
- **Three bullet points:**
  - We need **better ways to measure** reasoning
  - We need **better ways to stress-test** reasoning
  - We need **better ways to organize** reasoning
- **Large bottom text:** "From pattern matching to reliable reasoning requires structure."

**Visual approach:** Clean, minimal, typography-focused. This is the mic-drop moment.

**Speaker notes:** "If you remember three things from this defense: measure reasoning honestly, stress-test it semantically, and structure it explicitly. That's the path from pattern recognition to reliable AI."

---

#### Slide 24: Thank You / Appendix Marker

**Title:** "Thank You"

**Content:**
- "Questions?"
- (Optional: Add backup slides label)

**Note:** References moved to backup/appendix, not in main presentation flow

---

## Visual Design Principles

### Typography & Layout
- **Claim-driven titles:** Every slide title makes a claim, not just describes content
- **Bold statements:** Key takeaways in large font at bottom of slides
- **Clean hierarchy:** Title → Evidence → Conclusion pattern throughout

### Hero Number Presentation (Slides 7, 12, 20)
- **Hybrid approach:** Main number large in center, small bar/arrow showing drop/gain
- **Four or three boxes:** Depending on how many key results
- **Color coding:** Green for improvements, red for drops (or use grayscale for accessibility)
- **Context line:** One sentence explanation below each hero slide

### Figure Sizing
- **Dramatic moments:** Use 0.8-0.9 textwidth for key figures
- **Calibration slide:** Euclidea problem at 0.6 textwidth/height (readable but not overwhelming)
- **Architecture diagrams:** 0.7 textheight to make them visually dominant

### Color/Domain Coding (Optional Enhancement)
- **Vision:** Blue accent
- **Code:** Green accent
- **Geometry:** Orange/red accent
- Helps audience track which domain they're in

---

## Implementation Notes

### Files to Create/Modify

**New figures needed:**
1. Hero slide visuals for slides 7, 12, 20 (extract numbers, create callout boxes)
2. Thesis Fig 1.8 verification (ensure correct adversarial testing diagram for slide 4)
3. Euclidea calibration screenshot for slide 16

**LaTeX files to modify:**
- `main.tex` - Minimal changes (already updated with institution)
- `tex/chapter01.tex` - Slides 3-4 updates
- `tex/chapter02.tex` - Slides 5-9 transformations
- `tex/chapter03.tex` - Slides 10-14 transformations
- `tex/chapter04.tex` - Slides 15-20 transformations
- `tex/chapter05.tex` - Slide 22 update
- Create `tex/thesis-claim.tex` - Slide 2 (new)
- Create `tex/synthesis.tex` - Slide 21 (new)
- Create `tex/closing.tex` - Slide 23 (new)

### Statistics to Extract

**From ICLR 2022 Table 2 (Visual):**
- FiLM: 96.2 → 48.0
- RN: 93.2 → 47.0
- TbD: 99.1 → 69.0
- MDetr: 99.7 → 60.0

**From ACL 2023 Table 3 (Code):**
- Anonymization drops: ~19%
- Drop keywords: ~22%
- Combined (Anon + Drop All): ~40%

**From EMNLP 2024 Table 1 (Geometry):**
- MetaMath: 8.9 → 14.9
- ChatGPT: 11.7 → 32.3
- GPT-4: 21.2 → 38.9
- Ablation: 13.6 → 22.2 → 28.1

**Human study (Geometry):**
- 30.5% average on 20-problem Euclidea sample

---

## Success Criteria

The transformation is successful if:

1. **Narrative coherence:** Defense feels like "one PhD" not "three papers"
2. **Memorable moments:** Committee remembers the thesis claim, hero numbers, and synthesis
3. **Visual impact:** Slides use drama appropriately (big numbers, large examples)
4. **Closing strength:** Defense ends on take-home message, not references
5. **Claim-driven flow:** Every slide title makes a claim that advances the narrative

---

## Risk Mitigation

**Potential issues:**
- Hero slides may feel too informal/non-academic
  - **Mitigation:** Use clean design, keep exact numbers visible, maintain formal tone in text
- Synthesis slide may feel redundant
  - **Mitigation:** Frame as "doctoral contribution," not just summary
- Too many slides (24 vs. 21)
  - **Mitigation:** Net addition is only 3 slides (removed outline), pacing is fine for 30min

**Validation:**
- Review slide count and timing (aim for ~1min per slide average)
- Ensure all statistics are accurate (double-check against papers)
- Test readability of hero slides from back of room (or simulate)

---

## Appendix: Rejected Alternatives

**Why not Approach 1 (Conservative)?**
- Would not achieve the "defense-like" transformation
- Missed opportunity to make research compelling

**Why not Approach 3 (Phased)?**
- More time-consuming
- User has already done the hard work with figures
- All design decisions are clear

**Why not put synthesis slide upfront (Question 2, Option B)?**
- Would spoil the discovery
- Synthesis has more impact after evidence

**Why not skip calibration slide (Question 3, Option C)?**
- The 30.5% human baseline is too powerful to omit
- Justifies geometry as culmination

---

## Next Steps

After spec approval:
1. Create detailed implementation plan using writing-plans skill
2. Break work into tasks: new slides, transformations, figure creation
3. Execute task-by-task with verification
4. Final review and presentation rebuild
