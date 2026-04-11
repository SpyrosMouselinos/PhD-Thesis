# PhD Defense Presentation Design Specification

**Date**: 2026-04-11
**Topic**: 30-Minute PhD Defense Presentation on Reasoning in AI Systems
**Audience**: Academic PhD committee + broader academic audience
**Format**: LaTeX Beamer (Madrid theme)
**Style**: Minimal-clean slides with detailed speaker notes

## Overview

This specification defines the structure, content, and speaker notes for a 30-minute PhD defense presentation titled "Measuring and Enhancing Reasoning in AI Systems: From Visual Question Answering to Multi-Agent Geometric Problem Solving."

The presentation follows a thematic arc that mirrors the thesis narrative, progressing from discovering reasoning failures in visual models, to finding the pattern persists in code generation, to ultimately solving the problem through multi-agent collaboration.

## Design Principles

1. **Minimal-Clean Aesthetic**: Slides contain only essential visuals and bullet points. The narrative is carried primarily through speaker notes and verbal delivery.
2. **Thematic Continuity**: Each section builds on the previous, showing how insights transfer across domains.
3. **Time-Bounded**: 27 minutes of core content with 3 minutes of buffer for pacing adjustments.
4. **Bridge to Today**: Light connection to current AI trends (multimodal models, RL post-training, agents) to maintain relevance without claiming prophecy.

## Presentation Structure

### Timing Breakdown
- **Introduction**: 3 minutes (Slides 1-3)
- **Act 1 - Visual Reasoning**: 6 minutes (Slides 4-7)
- **Act 2 - Code Generation**: 6 minutes (Slides 8-11)
- **Act 3 - Geometric Agents**: 8 minutes (Slides 12-17)
- **Bridge to Today**: 3 minutes (Slides 18-19)
- **Conclusion**: 1 minute (Slide 20)
- **Buffer**: 3 minutes distributed across sections

**Total**: 20 slides, 30 minutes

## Detailed Slide Specifications

### Introduction Section (3 minutes)

#### Slide 1: Title Slide
**Content**:
- Title: "Measuring and Enhancing Reasoning in AI Systems"
- Subtitle: "From Visual Question Answering to Multi-Agent Geometric Problem Solving"
- Your name, institution, committee members
- Date

**Visual Elements**:
- Clean Madrid theme title page
- No graphics needed

**Speaker Notes** (30 seconds):
- Brief greeting and thank committee
- State the central theme: understanding the difference between pattern matching and true reasoning in AI systems
- Preview the journey across three domains

#### Slide 2: The Clever Hans Problem
**Content**:
- Title: "The Clever Hans Phenomenon in Modern AI"
- Visual: Split image showing historical Clever Hans horse (left) and modern AI model icon (right)
- Key text: "Superhuman performance ≠ True reasoning"

**Visual Elements**:
- Historical photo or illustration of Clever Hans
- Modern neural network or AI icon
- Arrow or comparison symbol between them

**Speaker Notes** (90 seconds):
- Explain the historical Clever Hans story: horse appeared to do math but was reading trainer's micro-expressions
- Draw parallel to modern AI: models achieving superhuman benchmark scores
- Question: Are they reasoning or exploiting dataset patterns?
- This question drives the entire thesis

#### Slide 3: Research Question & Roadmap
**Content**:
- Title: "Central Question: How Do We Measure True Reasoning?"
- Three domain icons with labels:
  - Eye icon: "Visual QA"
  - Code brackets icon: "Code Generation"
  - Compass/geometric tool icon: "Geometric Problem Solving"
- Subtitle: "A journey of discovery across domains"

**Visual Elements**:
- Three clear icons arranged horizontally
- Subtle arrow connecting them (left to right)
- Minimal color (Madrid theme palette)

**Speaker Notes** (60 seconds):
- State the core research question explicitly
- Introduce the three-domain exploration
- Explain why this progression: visual → code → geometry represents increasing complexity
- Set expectation: we'll discover a pattern, then solve it

---

### Act 1: Visual Reasoning (6 minutes)

#### Slide 4: The Problem - Superhuman Visual QA
**Content**:
- Title: "CLEVR: 96-99% Accuracy, But Is It Reasoning?"
- Visual: Sample CLEVR image (colored geometric objects scene)
- Example question: "What is the color of the sphere to the left of the cube?"
- Accuracy numbers: "State-of-the-art: 96-99%"

**Visual Elements**:
- One representative CLEVR scene image
- Question text below or beside image
- Accuracy metric prominently displayed

**Speaker Notes** (90 seconds):
- Introduce CLEVR dataset: benchmark for visual reasoning
- Models achieved superhuman performance (96-99% accuracy)
- Question appears solved by the community
- But: these models never saw real-world deployment
- Hypothesis: they're not actually reasoning, they're pattern matching
- Transition: How do we test this?

**Source Reference**: ICLR 2022 paper, thesis Chapter 2

#### Slide 5: Black-Box Adversarial Testing
**Content**:
- Title: "A Two-Player Game to Expose Weaknesses"
- Visual: Diagram showing two agents:
  - VQA Player (defending model)
  - Adversarial Player (attacking with perturbations)
- Key elements labeled:
  - "Semantic scene perturbations"
  - "Reinforcement Learning (A2C)"
  - "Zero-sum game"

**Visual Elements**:
- Simple flow diagram or game tree
- Two opposing agents/boxes
- Arrows showing interaction
- No need for technical detail on slide

**Speaker Notes** (90 seconds):
- Propose two-player adversarial game framework
- VQA player tries to answer questions correctly
- Adversarial player learns to perturb scenes (semantically) to break the VQA model
- Key innovation: semantic perturbations (change object colors, positions) not just noise
- Use RL (A2C algorithm) to discover hard examples automatically
- Black-box: no access to model internals, just input/output
- Transition: What did we find?

**Source Reference**: ICLR 2022 paper methodology

#### Slide 6: Results - The Illusion Breaks
**Content**:
- Title: "Superhuman → Sub-Human Under Perturbation"
- Visual: Bar chart or before/after comparison
  - Before: 96-99% accuracy
  - After adversarial: 47-69% accuracy
- Key finding: "Question complexity > Visual complexity"

**Visual Elements**:
- Clear performance comparison chart
- Dramatic drop visualization
- Highlight the key finding text

**Speaker Notes** (90 seconds):
- Present results: accuracy drops to 47-69% under adversarial perturbations
- This is worse than random guessing on many questions
- Key insight: question perturbations were more effective than visual perturbations
- Models rely on linguistic patterns more than visual reasoning
- They memorized question-answer correlations, not true reasoning
- This confirms the Clever Hans hypothesis for visual QA
- Transition: Can we fix this?

**Source Reference**: ICLR 2022 results section, thesis Chapter 2

#### Slide 7: Solution Direction
**Content**:
- Title: "Adversarial Training as Mitigation"
- Visual: Diagram showing feedback loop:
  - RL discovers hard examples → Add to training → Model improves robustness
- Key result: "RL-discovered examples improve model robustness"

**Visual Elements**:
- Simple cycle diagram
- Arrow showing improvement direction
- One metric showing improvement (optional)

**Speaker Notes** (90 seconds):
- The adversarial examples themselves become training data
- RL-discovered examples expose model weaknesses
- Retraining with these examples improves robustness
- This is early work on adversarial training for robustness (2022)
- But key question emerges: Is this problem specific to visual reasoning?
- Transition: Let's look at a completely different domain - code generation

**Source Reference**: ICLR 2022 mitigation section

---

### Act 2: Code Generation (6 minutes)

#### Slide 8: Transferring Insights to Code
**Content**:
- Title: "The Same Pattern in Code Generation Models"
- Visual: Timeline or list showing early code models:
  - CodeParrot
  - InCoder
  - Bloom
  - CodeGen
  - Codex
- Text: "Conquering benchmarks: HumanEval, MBPP"
- Key question: "Do they reason or memorize?"

**Visual Elements**:
- Model names with logos or icons
- Benchmark names mentioned
- Question text emphasized

**Speaker Notes** (90 seconds):
- Context: 2023, early code generation models emerging
- These models achieving impressive benchmark results
- Codex powering GitHub Copilot
- Community excited: "coding is solved"
- But the visual reasoning experience suggests skepticism
- Hypothesis: same Clever Hans pattern might exist
- Can we transfer the adversarial testing approach to code?
- Transition: How do code models actually work?

**Source Reference**: ACL 2023 introduction, thesis Chapter 3

#### Slide 9: Blocks of Influence Framework
**Content**:
- Title: "Anatomy of Code Generation Bias"
- Visual: Code snippet example broken into three highlighted blocks:
  - Name Block (function name highlighted)
  - Description Block (docstring highlighted)
  - Example Block (usage example highlighted)
- Minimal code example showing all three

**Visual Elements**:
- Actual code snippet (Python preferred for clarity)
- Color-coded or boxed regions showing the three blocks
- Labels clearly pointing to each block

**Speaker Notes** (90 seconds):
- Introduce "Blocks of Influence" framework
- Name Block: function/variable names carry semantic information
- Description Block: docstrings and comments guide the model
- Example Block: usage demonstrations in the prompt
- Hypothesis: models rely heavily on keywords in these blocks
- Not on actual algorithmic understanding
- Simple perturbations: change keywords, reorder, modify descriptions
- Transition: What happens when we perturb these blocks?

**Source Reference**: ACL 2023 methodology, thesis Chapter 3

#### Slide 10: Simple Perturbations, Dramatic Failures
**Content**:
- Title: "Breaking Code Models with Keyword Changes"
- Visual: Performance drop chart showing 15-40% degradation across models
- Optional: Side-by-side code example showing:
  - Left: original description with key words
  - Right: perturbed description (synonyms, reordering)
  - Same expected function, different model performance

**Visual Elements**:
- Bar chart or comparison table of performance drops
- If including code example: minimal, clear highlighting of changes
- Key metric: 15-40% drop prominently displayed

**Speaker Notes** (90 seconds):
- Results: 15-40% performance drops from simple perturbations
- Example: changing "sort in ascending order" to "arrange from smallest to largest"
- Same semantic meaning, different keywords
- Models show strong keyword preference
- They're pattern matching on training data, not understanding requirements
- Same Clever Hans phenomenon as visual models
- Broader implication: the problem is domain-independent
- It's fundamental to how these models learn
- Transition: Can we mitigate this too?

**Source Reference**: ACL 2023 results section, thesis Chapter 3

#### Slide 11: Mitigation Strategies
**Content**:
- Title: "Improving Robustness"
- Two approaches listed:
  1. Adversarial fine-tuning (similar to visual domain)
  2. Long-context training (reduce reliance on keywords)
- Result: "Improved robustness across benchmarks"
- Transition text: "But single models still have fundamental limits..."

**Visual Elements**:
- Two numbered bullet points
- Optional: small bar chart showing improvement
- Transition statement visually separated

**Speaker Notes** (90 seconds):
- Applied similar adversarial training approach from visual work
- Added long-context training: expose models to varied phrasing
- Both methods improve robustness
- But performance ceiling remains
- Single models have inherent limitations in reasoning
- They struggle with complex multi-step problems
- This leads to the third chapter: what if instead of one model, we use multiple?
- What if we specialize agents for different reasoning tasks?
- Transition: This brings us to geometric reasoning and multi-agent systems

**Source Reference**: ACL 2023 mitigation section, thesis Chapter 3

---

### Act 3: Geometric Reasoning & Multi-Agent Solution (8 minutes)

#### Slide 12: The Ultimate Challenge
**Content**:
- Title: "Geometric Reasoning: Vision + Language + Logic"
- Visual: Sample Euclidea problem image (constructive geometry)
- Text: "Combining all previous challenges:"
  - Visual understanding (scene comprehension)
  - Procedural reasoning (step-by-step construction)
  - Tool use (compass, straightedge)

**Visual Elements**:
- One clear Euclidea problem screenshot
- Three bullet points listing combined challenges
- Clean layout

**Speaker Notes** (90 seconds):
- Introduce constructive geometry: classical compass-and-straightedge problems
- Euclidea dataset: 98 problems across 10 difficulty levels
- This combines everything: visual reasoning, procedural thinking, tool use
- Requires multi-step planning
- Requires spatial understanding
- Requires following geometric constraints
- Perfect testbed for reasoning capabilities
- Transition: How well do existing LLMs perform?

**Source Reference**: EMNLP 2024 introduction, thesis Chapter 4

#### Slide 13: Single Models Hit a Wall
**Content**:
- Title: "LLMs Struggle with Geometric Construction"
- Visual: Performance chart showing baseline results:
  - GPT-4 baseline
  - Claude baseline
  - Other LLMs
  - All showing limited success
- Key findings listed:
  - "Naming biases (alphabetical point ordering)"
  - "Spatial reasoning failures"

**Visual Elements**:
- Bar chart or table of model performance
- Low accuracy numbers visible
- Two key failure modes listed

**Speaker Notes** (90 seconds):
- Tested state-of-the-art LLMs on Euclidea
- Even GPT-4 struggles significantly
- Discovered systematic failures:
  - Naming bias: models prefer alphabetical point ordering (A, B, C)
  - Spatial reasoning: struggle to maintain geometric relationships
  - Tool use: difficulty translating natural language to geometric operations
- Single models cannot hold all required reasoning simultaneously
- Visual understanding + procedural reasoning + tool proficiency is too much
- Hypothesis: What if we split the work?
- Transition: Enter multi-agent systems

**Source Reference**: EMNLP 2024 baseline results, thesis Chapter 4

#### Slide 14: The Multi-Agent Solution
**Content**:
- Title: "Role Specialization & Domain Differentiation"
- Visual: Architecture diagram showing:
  - Natural Language Solver (SNL) box
  - Geometric Tool Solver (SGT) box
  - Validator boxes
  - Arrows showing collaboration flow
- Key concept: "Teams of specialists > Individual generalists"

**Visual Elements**:
- Clean architecture diagram
- Three distinct agent types clearly labeled
- Arrows indicating communication/collaboration
- Minimal technical detail

**Speaker Notes** (2 minutes):
- Propose multi-agent framework with role specialization
- SNL (Natural Language Solver): reasons in natural language, plans high-level strategy
- SGT (Geometric Tool Solver): executes precise geometric operations
- Validators: check solutions, provide feedback
- Key insight: domain differentiation
  - SNL operates in language domain (where LLMs excel)
  - SGT operates in geometric tool domain (precise, rule-based)
- Agents collaborate, share information, validate each other
- This is early work on agent teams (2024, before current agent boom)
- Transition: But how do agents understand the visual geometry?

**Source Reference**: EMNLP 2024 methodology, thesis Chapter 4

#### Slide 15: Visual Relations Prompt (VRP)
**Content**:
- Title: "Bridging Vision and Language"
- Visual: Diagram showing:
  - Euclidea image → GPT-4V → Spatial relations text
- Example spatial relation: "Point A is northwest of Point B"
- Key innovation: "Multimodal understanding enables precise geometric reasoning"

**Visual Elements**:
- Flow diagram showing image-to-text extraction
- Sample geometric image
- Sample extracted relation text
- Arrow connecting visual to language

**Speaker Notes** (90 seconds):
- Problem: How do language-based agents understand geometric diagrams?
- Solution: Visual Relations Prompt (VRP) using GPT-4V
- Extract spatial relationships from images: "Point A is left of Point B," "Circle C intersects Line L"
- Convert visual information into language that agents can process
- This enables language-based agents to reason about spatial relationships
- Early application of multimodal models to geometric reasoning
- Connects back to visual reasoning from Chapter 2, but now as a tool
- Transition: One more innovation - learning from previous problems

**Source Reference**: EMNLP 2024 VRP section, thesis Chapter 4

#### Slide 16: Adaptive Few-Shot Learning
**Content**:
- Title: "Learning from Previous Solutions"
- Visual: Diagram showing progressive problem-solving:
  - Level 1 problems → Solution examples → Level 2 problems (use L1 solutions as context)
  - Level 2 problems → Solution examples → Level 3 problems (use L1+L2 solutions)
- Text: "Building knowledge across 10 difficulty levels"

**Visual Elements**:
- Stepped diagram or pyramid showing progression
- Arrows indicating knowledge transfer
- Emphasis on adaptive/progressive nature

**Speaker Notes** (90 seconds):
- Euclidea has 10 difficulty levels
- Adaptive-Shot prompting: use previously solved problems as few-shot examples
- As agents solve easier problems, solutions become context for harder ones
- This builds a knowledge base of techniques
- Agents learn problem patterns and strategies
- Different from static few-shot: examples are dynamically selected based on relevance
- Mimics human problem-solving: apply known techniques to new challenges
- Transition: What were the results?

**Source Reference**: EMNLP 2024 adaptive prompting section, thesis Chapter 4

#### Slide 17: Results - Breaking Records
**Content**:
- Title: "State-of-the-Art Performance"
- Visual: Comparison chart showing:
  - Baseline single models (low performance)
  - Your multi-agent system (significantly higher)
- Key achievement: "Agent collaboration > Single model reasoning"
- Insight: "Teams of specialists outperform generalists"

**Visual Elements**:
- Clear before/after or baseline vs. proposed comparison
- Performance metrics prominently displayed
- Visual emphasis on the improvement

**Speaker Notes** (2 minutes):
- Multi-agent system achieves state-of-the-art on Euclidea
- Significantly outperforms single-model baselines (specific numbers from paper)
- Key contributions demonstrated:
  - Role specialization works: SNL + SGT better than one generalist
  - VRP successfully bridges vision and language
  - Adaptive-Shot learning improves across difficulty levels
- Broader implications:
  - Complex reasoning benefits from agent collaboration
  - Domain specialization is powerful
  - This work anticipated current agent system research
- Transition: Speaking of current research...

**Source Reference**: EMNLP 2024 results section, thesis Chapter 4

---

### Bridge to Today (3 minutes)

#### Slide 18: Connecting to Current AI Landscape
**Content**:
- Title: "Research Themes in Today's AI"
- Three parallel comparisons (minimal text):
  1. **Multimodal Models**:
     - Your work: "Vision + Language reasoning (VRP, CLEVR)"
     - Today: "GPT-4V, Claude 3, Gemini"
  2. **RL Post-Training**:
     - Your work: "Adversarial training for robustness"
     - Today: "RLHF, O1's reinforcement learning"
  3. **Agent Systems**:
     - Your work: "Multi-agent collaboration & specialization"
     - Today: "AutoGPT, MetaGPT, agent frameworks"
- Framing: "The questions explored here remain central to modern AI development"

**Visual Elements**:
- Three-row comparison table or side-by-side layout
- Left column: your research themes
- Right column: current AI examples
- Clean, balanced layout

**Speaker Notes** (2 minutes):
- Light connection to current landscape - not claiming prophecy, showing relevance
- Multimodal models: your VRP work explored vision-language integration early
  - Now standard with GPT-4V, Claude 3, Gemini
- RL post-training: your adversarial training explored RL for robustness
  - Now RLHF is standard, O1 uses RL for reasoning
- Agent systems: your multi-agent framework explored collaboration and specialization
  - Now explosion of agent frameworks, multi-agent research
- Point: These weren't predictions, but the questions you asked remain relevant
- The field moved quickly, but the core challenges persist
- Your contributions address fundamental issues, not transient benchmarks
- Transition: What are the lasting contributions?

#### Slide 19: Lasting Contributions
**Content**:
- Title: "Core Contributions"
- Three key takeaways (bullet points):
  1. "Black-box adversarial testing reveals reasoning vs. memorization"
  2. "Domain-independent biases persist across visual, code, and geometric tasks"
  3. "Multi-agent specialization pushes beyond single-model limitations"

**Visual Elements**:
- Three numbered or bulleted points
- Clean, minimal text
- No graphics needed

**Speaker Notes** (1 minute):
- Summarize the three core contributions:
- 1. Methodology: adversarial testing works across domains to expose weaknesses
  - Applicable to future models and benchmarks
- 2. Insight: the Clever Hans phenomenon is fundamental, not domain-specific
  - Pattern matching vs. reasoning is a persistent challenge
- 3. Solution: multi-agent collaboration addresses single-model limitations
  - Specialization and cooperation enable complex reasoning
- These contributions have lasting value beyond specific benchmarks
- Transition: Looking forward

---

### Conclusion (1 minute)

#### Slide 20: Open Questions & Thank You
**Content**:
- Title: "Looking Forward"
- 2-3 open research directions:
  - "Scaling adversarial robustness to frontier models"
  - "Optimal agent team composition for complex reasoning tasks"
  - "Measuring true reasoning as AI capabilities advance"
- Bottom: "Thank you" + your email/contact

**Visual Elements**:
- 2-3 bullet points for open questions
- Clean "Thank you" section
- Contact information

**Speaker Notes** (1 minute):
- Brief mention of open questions:
  - How do we scale adversarial testing to massive models?
  - What's the right balance of agents for different tasks?
  - As models improve, how do we continue measuring reasoning?
- Thank committee and audience
- Open for questions
- End presentation

---

## Speaker Notes Guidelines

For each slide, speaker notes should:
1. **Set Context**: Briefly orient the audience to where we are in the narrative
2. **Explain Visuals**: Describe what's on the slide and why it matters
3. **Provide Detail**: Add technical depth not on the slide (for academic audience)
4. **Transition**: End with a bridge to the next slide/section

Speaker notes should be written in a conversational style that sounds natural when spoken, not read verbatim.

Total speaking time target: 27 minutes (allowing 3 minutes buffer)

## Visual Asset Requirements

The following visual assets will be needed from the papers/thesis:

### From ICLR 2022 Paper:
- Sample CLEVR image and question
- Two-player game diagram (or create simplified version)
- Performance comparison chart (before/after adversarial)

### From ACL 2023 Paper:
- Code snippet example showing Blocks of Influence
- Performance drop chart across models
- Side-by-side code perturbation example (optional)

### From EMNLP 2024 Paper:
- Euclidea problem screenshot
- Baseline performance chart
- Multi-agent architecture diagram (or create simplified version)
- VRP flow diagram (or create simplified version)
- Results comparison chart (baseline vs. proposed)

### Generic/Created Assets:
- Clever Hans historical image (public domain)
- Modern AI icon/illustration
- Three domain icons (eye, code brackets, compass)
- Timeline or model list graphic for code models
- Current AI landscape logos/references (GPT-4V, Claude, etc.)

## LaTeX Beamer Implementation Notes

- **Theme**: Madrid (as specified in current setup)
- **Frame Structure**: Each slide is one `\begin{frame}...\end{frame}`
- **Speaker Notes**: Use `\note{...}` command for each frame
- **Graphics**: Store visual assets in `slides/assets/` directory
- **Bibliography**: Cite papers using `\cite{ICLR2022}`, `\cite{ACL2023}`, `\cite{EMNLP2024}` (already in references.bib)
- **Minimal Text**: Prefer itemize environments with 1-3 items per slide
- **Timing**: No slide should exceed 2 minutes of speaking time (Act 3 slides can go slightly longer)

## Success Criteria

The presentation successfully:
1. Tells a cohesive story across three research papers
2. Maintains academic rigor while remaining accessible to broader audience
3. Fits within 30-minute time constraint (27 min + 3 min buffer)
4. Uses minimal-clean slide design (no clutter, essential visuals only)
5. Provides detailed speaker notes for complete narrative
6. Connects research to current AI landscape without overclaiming
7. Highlights core contributions: adversarial testing methodology, domain-independent insights, multi-agent solutions

## Next Steps

After approval of this specification:
1. Update CLAUDE.md with presentation context
2. Create implementation plan for LaTeX Beamer slides
3. Extract visual assets from papers/thesis
4. Write LaTeX code for all 20 slides
5. Write detailed speaker notes for each slide
6. Build PDF and review timing/flow
7. Iterate on content based on practice runs
