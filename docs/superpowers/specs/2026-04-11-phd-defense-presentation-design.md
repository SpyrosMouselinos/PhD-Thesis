# PhD Defense Presentation Design Specification (Final - 20 Slides)

**Date**: 2026-04-11
**Topic**: 30-Minute PhD Defense Presentation
**Thesis Title**: [Use exact official thesis title]
**Audience**: Academic PhD committee + broader academic audience
**Format**: LaTeX Beamer (Madrid theme)
**Style**: Minimal-clean slides with speaker notes

## Overview

This specification defines a 20-slide presentation that gives each of the three main research chapters balanced treatment (5 slides each) while maintaining the dissertation's central argument as the through-line.

**Design Philosophy**: Thesis-first, paper-second. Each 5-slide chapter block ends with a "what this taught me" synthesis slide that explicitly connects back to the dissertation's main argument: benchmark success often overstates reasoning; semantic testing exposes that; structure helps repair it.

**Core Rule**: 1 main idea per slide, 3-4 bullets max on-slide, 1 figure/table, 1 spoken takeaway.

## Presentation Structure

### Beamer Section Structure
```latex
\section{Introduction}  % Slides 1-3
\section{Testing Reasoning in the Visual Domain}  % Slides 4-8
\section{Exposing and Mitigating Biases in Code Generation}  % Slides 9-13
\section{Vision meets Language in Geometric Agentic Reasoning}  % Slides 14-18
\section{Conclusions and Future Directions}  % Slides 19-20
```

### Timing Breakdown
- **Introduction** (Slides 1-3): ~4 minutes
- **Chapter 2: Visual Domain** (Slides 4-8): ~7 minutes
- **Chapter 3: Code Generation** (Slides 9-13): ~7 minutes
- **Chapter 4: Geometric Reasoning** (Slides 14-18): ~8 minutes
- **Chapter 5: Conclusions** (Slides 19-20): ~3 minutes
- **Buffer**: ~1 minute

**Total**: 20 slides, 30 minutes (~1.5 min/slide average)

---

## Detailed Slide Specifications

### Section 1: Introduction (Slides 1-3, ~4 minutes)

#### Slide 1: [Use the Exact Official Thesis Title]

**On Slide**:
- Thesis title
- Your name
- Affiliation / defense info

**Visual**:
- Keep it clean
- Optional: Very thin footer strip with 3 tiny visuals (CLEVR scene, code prompt, geometry construction)

**Speaker Notes** (60 seconds):
"This dissertation studies one question across three domains: when AI systems look strong on benchmarks, are they actually reasoning, or are they exploiting shortcuts? I approach that question through visual reasoning, code generation, and geometric problem-solving, and I argue that the same deeper pattern appears in all three."

---

#### Slide 2: Clever Hans and the Modern AI Paradox

**On Slide**:
- Success can mask lack of understanding
- Strong benchmark results do not guarantee reasoning
- Small, human-irrelevant changes can still break the system

**Visual**:
- **Thesis Figure 1.1** large

**Speaker Notes** (80 seconds):
"I open with Clever Hans because it is the right metaphor for the entire thesis. Hans looked intelligent, but the performance came from sensitivity to cues, not real understanding. My claim is that many modern AI systems have the same issue: they can look extremely capable in well-structured benchmarks, but fail under subtle changes that should not matter to a human observer."

**Source**: Thesis Chapter 1

---

#### Slide 3: Central Research Question and How This Thesis Tests It

**On Slide**:
- **Bold at top**: "How can AI systems progress beyond pattern recognition to cultivate strong reasoning capabilities across multiple domains with diverse contexts and modalities?"
- Then four bullets:
  - Behavioral evaluation
  - Semantically meaningful perturbations
  - Black-box applicability
  - Roadmap: vision → code → geometry

**Visual**:
- **Thesis Figure 1.8** on the right
- Small 3-step roadmap on the left

**Speaker Notes** (80 seconds):
"This is the central research question of the dissertation. The methodological core of my answer is behavioral testing. Instead of asking only whether a model gets the benchmark answer right, I ask whether it stays right under semantically meaningful changes. I focus on black-box settings because those are realistic for modern systems, especially closed ones. So the thesis tries to combine the realism of black-box testing with the diagnostic strength usually associated with white-box methods."

**Source**: Thesis Chapter 1

---

### Section 2: Testing Reasoning in the Visual Domain (Slides 4-8, ~7 minutes)

#### Slide 4: Testing Reasoning in the Visual Domain

**On Slide**:
- Visual question answering as a proxy for reasoning
- CLEVR reduced many trivial dataset biases
- CLEVR looked close to solved — some models reached near-perfect scores
- Question: did they really learn reasoning?

**Visual**:
- A clean CLEVR scene + one example question
- Best option: crop a simple scene from visual paper or thesis chapter opener

**Speaker Notes** (70 seconds):
"I begin with vision because CLEVR was designed exactly for this kind of question. It is a controlled benchmark for compositional visual reasoning, and by the time of this work, several models looked close to solving it. So the natural next question was: are they actually reasoning, or are they still leaning on hidden shortcuts?"

**Source**: Thesis Chapter 2, ICLR 2022 introduction

---

#### Slide 5: A Two-Player Black-Box Test for VQA

**On Slide**:
- Visual-QA Player answers the question
- Adversarial Player reconfigures the scene
- Enforcers keep the scene valid and answer-preserving
- If the answer changes, reasoning failed

**Visual**:
- **Thesis Figure 2.1** or the same figure from the ICLR paper

**Speaker Notes** (80 seconds):
"The setup is a zero-sum game. One player is the model under test. The other is an adversarial scene manipulator. Crucially, the manipulator does not get gradients or model internals. It only changes the scene in ways that remain valid for the same question and answer. So this is not a pixel attack. It is a semantic black-box test of whether the model's reasoning is invariant under equivalent scene reconfigurations."

**Source**: Thesis Chapter 2, ICLR 2022 methodology

---

#### Slide 6: Visual Chapter — Benchmark Success Is Not Robust Reasoning

**On Slide**:
- Strong CLEVR models still broke
- The drops were often large
- Harder questions were more fragile
- Especially counting / existence / relational cases

**Visual**:
- **Use ICLR Table 2, but crop it hard**
- Show only a few representative models and one mini-game setting
- **Highlight numbers you will say**:
  - FiLM: 96.2 → 48.0
  - RN: 93.2 → 47.0
  - TbD: 99.1 → 69.0
  - MDetr: 99.7 → 60.0

**Speaker Notes** (90 seconds):
"This is the quantitative punchline. Models that looked almost solved on CLEVR collapsed badly by small, semantically valid changes. FiLM drops from 96.2 to 48.0, RN from 93.2 to 47.0, and even MDetr, which was nearly perfect originally, drops to 60.0 in the hardest cases. The main point is simple: strong benchmark accuracy did not imply robust reasoning."

**Source**: Thesis Chapter 2, ICLR 2022 Table 2

---

#### Slide 7: Visual Chapter — Qualitative Failures

**On Slide**:
- Changes are small
- Changes are valid
- Humans usually see no reason the answer should change
- Yet the model flips its answer

**Visual**:
- **Thesis Figure 2.2** as the main visual
- Optional: one extra example from ICLR Figure 3 if space allows

**Speaker Notes** (90 seconds):
"This is where the result becomes intuitive. The manipulations are not bizarre. They are small and semantically harmless. A human typically sees no reason the answer should change, but the model changes it anyway. In some cases, perception still looks fine, which suggests the failure is not only visual recognition. It is also a reasoning failure over the recognized content."

**Source**: Thesis Chapter 2, ICLR 2022 Figure 3

---

#### Slide 8: What the Visual Chapter Taught Me

**On Slide**:
- High accuracy is not enough
- Brute-force retraining helps only marginally
- Reasoning difficulty matters more than raw scene variation
- This motivates transferring the same test philosophy to language

**Visual**:
- Text-only, or a minimal 3-arrow summary:
  - benchmark success
  - semantic stress test
  - hidden brittleness

**Speaker Notes** (80 seconds):
"The visual chapter gave me the first thesis-level lesson: benchmark success is not proof of reasoning. It also showed that just adding more adversarially manipulated data is not a full solution. That led directly to the next question: if this pathology is real, does it also appear in language-based reasoning tasks like code generation?"

**Source**: Thesis Chapter 2 synthesis

---

### Section 3: Exposing and Mitigating Biases in Code Generation (Slides 9-13, ~7 minutes)

#### Slide 9: Exposing and Mitigating Biases in Code Generation

**On Slide**:
- Same question, new modality
- In code, shortcuts live inside the prompt
- Function names, keywords, and examples can leak the solution
- So I test prompt semantics the way I tested scene semantics

**Visual**:
- Small prompt screenshot or clean text block of one coding challenge
- Keep it visually simple

**Speaker Notes** (70 seconds):
"Chapter 3 is the language-domain continuation of the same idea. In vision, the shortcut can live in the scene. In code generation, the shortcut often lives in the prompt itself. Function names, task wording, and examples can all act as hidden hints. So I apply the same black-box semantic testing logic, but now to structured prompts instead of structured scenes."

**Source**: Thesis Chapter 3, ACL 2023 introduction

---

#### Slide 10: Blocks of Influence

**On Slide**:
- Name Block → memorization
- Description Block → lexical cue dependence
- Example Block → reasoning tie-breaker
- Perturb the blocks while preserving global task meaning

**Visual**:
- **Thesis Figure 3.1** or **ACL Figure 1**

**Speaker Notes** (80 seconds):
"This is the central abstraction of the code paper. I decompose the prompt into three Blocks of Influence. If renaming the function breaks performance, that suggests memorization. If removing a few keywords breaks it, that suggests lexical dependence. If removing examples breaks it, then the examples were doing reasoning work for the model. The important point is the task remains human-solvable after these transformations."

**Source**: Thesis Chapter 3, ACL 2023 methodology

---

#### Slide 11: Code Chapter — What Breaks When Hints Disappear

**On Slide**:
- Anonymization exposes memorization
- Keyword removal exposes prompt bias
- Example removal exposes weak composition
- Combined transformations are the most damaging

**Visual**:
- **ACL Table 3, but crop to 3 good models and a few transformations**
- Or redraw as a simple summary chart
- **Say these averages aloud**:
  - anonymization: ~19% drop
  - drop one keyword: ~15%
  - drop all keywords: ~22%
  - drop examples: ~15%
  - anonymize + drop examples: ~25%
  - anonymize + drop all: ~40%

**Speaker Notes** (90 seconds):
"The pattern is the same as in vision. Small semantic interventions can produce large drops. If I remove function-name hints, I expose memorization. If I remove selected keywords, I expose lexical bias. If I remove examples, I expose shallow compositional reasoning. And when I combine those transformations, the drops become much larger — around 40% in the hardest setting."

**Source**: Thesis Chapter 3, ACL 2023 Table 3

---

#### Slide 12: Code Chapter — Qualitative Examples of Shallow Reasoning

**On Slide**:
- Models often retain fragments of the right idea
- What fails is composition
- The output looks plausible
- But the logic is wrong

**Visual**:
- **Thesis Figure 3.2** as the main visual
- Optional inset:
  - **Figure 3.3** for keyword hinting
  - or **Figure 3.4** for anonymization + keyword hinting

**Speaker Notes** (90 seconds):
"These qualitative examples are very revealing. The model still produces code that looks intelligent and relevant. It may still compare numbers, iterate, or use the right operators. But it fails to compose those pieces into the correct algorithm. So the failure is not total ignorance. It is shallow reasoning hidden behind plausible code."

**Source**: Thesis Chapter 3, ACL 2023 Figures 3.2-3.4

---

#### Slide 13: What Helped in Code Generation

**On Slide**:
- Adversarial fine-tuning partially improves robustness
- Longer, richer descriptions help some models
- Larger models benefit more
- But the deeper bias remains

**Visual**:
- **ACL Table 4** for adversarial fine-tuning
- **ACL Table 5** for longer-context / DMCC effects
- Best visually: show two tiny cropped tables side by side

**Speaker Notes** (90 seconds):
"I did not want this chapter to end only with diagnosis. So I used the perturbations as training augmentations. That helped, especially for larger models, and longer descriptions also improved resilience in some cases. But the gains were partial. The main conclusion stayed the same: data augmentation helps, but it does not fully remove the underlying shortcut dependence.

This also serves as the cross-domain synthesis point. We now have the same pattern appearing in two completely different modalities. In vision, the shortcuts were spatial and configurational. In code, they are lexical and structural. But the underlying pathology is identical: models retreat to the easiest available signal when reasoning becomes hard."

**Source**: Thesis Chapter 3, ACL 2023 Tables 4-5

---

### Section 4: Vision meets Language in Geometric Agentic Reasoning (Slides 14-18, ~8 minutes)

#### Slide 14: Vision meets Language in Geometric Agentic Reasoning

**On Slide**:
- Geometry combines:
  - vision
  - language
  - planning
  - tool use
- It is the hardest setting in the thesis
- It is where the earlier problems meet

**Visual**:
- Use a Euclidea problem screenshot (NOT Thesis Figure 4.1)
- Best choice: a clean starting-state screenshot from the geometry paper appendix / human study figure
- Crop from EMNLP paper or thesis Chapter 4 opening
- **Note**: Thesis Fig. 4.1 is the multi-agent architecture diagram, used on Slide 16

**Speaker Notes** (80 seconds):
"Geometry is the culmination of the dissertation. It is not just another benchmark. It combines visual understanding, symbolic reasoning, sequential planning, and tool use in one open-ended task. Models that look strong in algebra or text often struggle here, because constructive geometry is a much stricter test of reasoning."

**Source**: Thesis Chapter 4, EMNLP 2024 introduction

---

#### Slide 15: Why Single-Model Prompting Is Not Enough

**On Slide**:
- Zero-shot hallucinated tools
- Static few-shot copied styles and steps
- Adaptive few-shot selected better prior problems
- Geometry made planning failures very visible

**Visual**:
- **Thesis Figure 4.2**

**Speaker Notes** (90 seconds):
"I first studied what goes wrong before building the full system. Zero-shot prompting often hallucinated tool behavior. Static few-shot reduced that, but it introduced another problem: the model copied the style and even the reasoning path of the prompt examples. Adaptive few-shot helped by retrieving more relevant demonstrations. In the ablations, ChatGPT improves from 5.9 zero-shot to 13.6 with Adaptive-Shot Self on Alpha and Beta levels."

**Source**: Thesis Chapter 4, EMNLP 2024 baseline analysis

---

#### Slide 16: From Single Models to Agent Teamwork

**On Slide**:
- Natural-language solver plans
- Geometry-tool solver executes
- Validators critique and refine
- Specialization separates reasoning from action

**Visual**:
- **Thesis Figure 4.1** large (architecture diagram)

**Speaker Notes** (90 seconds):
"This is the conceptual heart of the geometry chapter. I stop treating the model as one monolithic reasoner and instead organize the reasoning process. One agent plans in natural language, another translates that plan into geometric tool steps, and validators criticize both levels. The key idea is that reasoning improves when we structure it — not only when we scale the model."

**Source**: Thesis Chapter 4, EMNLP 2024 methodology

---

#### Slide 17: Spatial Grounding and Naming Biases

**On Slide**:
- VRP converts the image into explicit spatial relations
- VLM perception alone was not enough
- Variable names can distort solution length and stopping
- Renaming the target to X reduces bias

**Visual**:
- **Thesis Figure 4.4** (naming bias) as main visual
- **Thesis Figure 4.3** (VRP) as smaller inset if space allows
- **Note**: If space tight, Fig. 4.4 is more memorable to live audience

**Speaker Notes** (90 seconds):
"I found two more very specific failure modes. First, even multimodal models could recognize scene elements but still fail to integrate them into a valid construction plan. The Visual Relations Prompt fixes that by turning the image into explicit relations in language. Second, alphabetical naming created a bias: target labels like C, D, or E could distort the reasoning path. Replacing the target with X often restored shorter, cleaner solutions."

**Source**: Thesis Chapter 4, EMNLP 2024 VRP and naming bias sections

---

#### Slide 18: What the Geometry Chapter Taught Me

**On Slide**:
- Multi-agent structure beats single prompting
- Role and domain specialization matter
- VRP and feedback loops help further
- The framework transfers beyond geometry (if generalization table included)

**Visual**:
- **EMNLP Table 1 cropped** to:
  - MetaMath-Mistral
  - ChatGPT
  - GPT-4
- **To support "transfers beyond geometry" claim**: Add tiny footer callout or backup inset from generalization results table (GSM8K, SVAMP, MATH transfer)
- **Alternative**: Keep claim in speaker notes only, not on-slide bullets
- Optional small side callouts from:
  - Table 3 for role/domain ablation
  - Table 4 for VRP
  - Table 5 for naming bias

**Numbers to Say**:
- MetaMath-Mistral: 8.9 → 14.9 pass@1
- ChatGPT: 11.7 → 32.3
- GPT-4: 21.2 → 38.9
- On Alpha/Beta ablation: 13.6 → 22.2 → 28.1 with stronger agent structure
- Optional context: human study average: 30.5% on a 20-problem sample

**Speaker Notes** (2 minutes):
"This slide is the culmination of the thesis. The gains are large, and the ablations explain why: domain separation, validators, VRP, and naming neutralization all contribute. Importantly, the framework is not just a geometry trick. By swapping tools, it also transfers to GSM8K, SVAMP, and MATH-style reasoning tasks. So the broader lesson is that structure and collaboration can extend the reasoning limits of general-purpose models.

This serves as the implicit synthesis for the geometry chapter: structure matters as much as scale, and multi-agent specialization is a constructive answer to the limitations exposed in the earlier chapters."

**Source**: Thesis Chapter 4, EMNLP 2024 Tables 1, 3, 4, 5

---

### Section 5: Conclusions and Future Directions (Slides 19-20, ~3 minutes)

#### Slide 19: Conclusions and Future Directions

**On Slide**:
- Measure reasoning behaviorally
- Expose shortcut dependence semantically
- Improve reasoning through structure
- Future directions:
  - Adversarial testing + pretraining/post-training
  - Collaborative multi-agent frameworks
  - Continual learning

**Visual**:
- No borrowed figure needed
- A simple 3-step diagram is enough:
  - Evaluate
  - Diagnose
  - Improve

**Speaker Notes** (90 seconds):
"This is the dissertation-level synthesis. Across vision, code, and geometry, the same pattern appears: models often perform well until semantically small, human-irrelevant changes expose hidden shortcut dependence. The contribution of the thesis is therefore threefold: a testing philosophy, a cross-domain failure analysis, and a constructive answer — stronger structure through better training, prompting, and multi-agent collaboration."

**Source**: Thesis Chapter 5

---

#### Slide 20: Recent Developments Reinforcing These Contributions

**On Slide** (Use Chapter 5.1 headings verbatim):
- **AI Reasoning Agents**
- **Vision-Language Model Reasoning**
- **Virtual Tokens for Thought Processes**

**Visual**:
- Clean 3-box slide with these three headings
- Text-only is sufficient (thesis-faithful)
- Keep examples in speaker notes, not on-slide

**Speaker Notes** (90 seconds):
"I would end with the thesis's own final point from Chapter 5.1: the directions explored here did not remain marginal. They became increasingly central.

For AI Reasoning Agents: Multi-agent orchestration is no longer speculative. Anthropic and OpenAI now ship production tooling for agent workflows.

For Vision-Language Model Reasoning: Unified multimodality is now native in systems like GPT-4o and Gemini. The VRP work anticipated this integration.

For Virtual Tokens for Thought Processes: Reinforcement-learning-based reasoning is central in OpenAI's o1, where models spend more time 'thinking.' DeepMind's work on world models like Genie 3 explores similar directions.

So this dissertation was not three disconnected papers. It was an early research program around how to test reasoning more honestly and how to push it further once we find its limits."

**Source**: Thesis Chapter 5.1

---

## Visual Asset Extraction Plan

### Main Deck Figures (Definite Use):
1. **Slide 2**: Thesis Fig. 1.1 (Clever Hans)
2. **Slide 3**: Thesis Fig. 1.8 (Adversarial testing framework)
3. **Slide 4**: Clean CLEVR scene + question (crop from paper or thesis)
4. **Slide 5**: Thesis Fig. 2.1 (Two-player game)
5. **Slide 6**: ICLR Table 2 **cropped** (4 models, highlight key numbers)
6. **Slide 7**: Thesis Fig. 2.2 (Qualitative visual failures)
7. **Slide 9**: Code prompt example (simple text block)
8. **Slide 10**: Thesis Fig. 3.1 or ACL Fig. 1 (Blocks of Influence)
9. **Slide 11**: ACL Table 3 **cropped** (3 models, key transformations)
10. **Slide 12**: Thesis Fig. 3.2 + optional 3.3/3.4 (Qualitative code failures)
11. **Slide 13**: ACL Table 4 **cropped** (main mitigation table)
    - **Warning**: Two tables side-by-side may be too dense for defense room
    - **Recommendation**: Keep one main table on-slide, move second to backup or mention verbally
    - Code chapter already has strong qualitative slide, so readability > squeezing both tables
12. **Slide 14**: Euclidea problem screenshot (clean starting state)
    - **NOT Thesis Fig. 4.1** - that is multi-agent architecture, used on Slide 16
    - Crop from EMNLP paper appendix or thesis Chapter 4 opening
13. **Slide 15**: Thesis Fig. 4.2 (Adaptive prompting / few-shot baselines)
14. **Slide 16**: Thesis Fig. 4.1 (Multi-agent overview architecture)
15. **Slide 17**: Thesis Fig. 4.4 (naming bias) main + Fig. 4.3 (VRP) inset
    - If space tight, Fig. 4.4 is more memorable to live audience
16. **Slide 18**: EMNLP Table 1 **cropped** + optional generalization table footer
    - To support "transfers beyond geometry" claim on-slide
    - Or keep transfer claim in speaker notes only

### Best Backup Slides:
- White-box vs black-box testing from Chapter 1
- Extra visual examples from ICLR Figure 3 / appendix
- Extra code examples from ACL Figures 3.3 and 3.4
- Multi-agent dialogue example from geometry appendix
- Geometry human study slide

### Table Cropping Guidelines:
For all tables: **crop hard**. Show only:
- 3-4 representative models
- 2-3 key experimental conditions
- Highlight (bold or color) the numbers you will say aloud
- Remove extra columns that won't be mentioned

---

## LaTeX Beamer Implementation Notes

### Document Structure:
```latex
\documentclass{beamer}
\usetheme{Madrid}

\section{Introduction}  % Slides 1-3
\section{Testing Reasoning in the Visual Domain}  % Slides 4-8
\section{Exposing and Mitigating Biases in Code Generation}  % Slides 9-13
\section{Vision meets Language in Geometric Agentic Reasoning}  % Slides 14-18
\section{Conclusions and Future Directions}  % Slides 19-20
```

### Frame Structure Examples:

**Simple slide (text + figure)**:
```latex
\begin{frame}{Slide Title}
  \begin{itemize}
    \item Point one
    \item Point two
    \item Point three
  \end{itemize}
  \begin{center}
    \includegraphics[width=0.7\textwidth]{assets/figure-name}
  \end{center}
  \note{Speaker notes go here...}
\end{frame}
```

**Two-column slide (text + figure side-by-side)**:
```latex
\begin{frame}{Slide Title}
  \begin{columns}
    \column{0.5\textwidth}
    \begin{itemize}
      \item Point one
      \item Point two
    \end{itemize}

    \column{0.5\textwidth}
    \includegraphics[width=\textwidth]{assets/figure-name}
  \end{columns}
  \note{Speaker notes go here...}
\end{frame}
```

### Key Implementation Details:
- **Theme**: Madrid (already configured)
- **Graphics Path**: `slides/assets/`, reference as `\includegraphics{assets/filename}`
- **Speaker Notes**: Use `\note{...}` after each frame
- **Bibliography**: Cite using `\cite{ICLR2022}`, `\cite{ACL2023}`, `\cite{EMNLP2024}`
- **Minimal Text**: 3-4 bullets max, short phrases
- **Tables**: Use `\includegraphics` of cropped table images, not raw LaTeX tables

---

## Success Criteria

The presentation successfully:
1. **Balanced Treatment**: Each main chapter gets 5 slides (Visual: 4-8, Code: 9-13, Geometry: 14-18)
2. **Thesis-Driven**: Follows dissertation chapter structure with synthesis slides
3. **One Idea Per Slide**: Clear, focused messages with 3-4 bullets max
4. **Visual Clarity**: One figure/table per slide, cropped to show only what's mentioned
5. **Synthesis**: Each chapter ends with "what this taught me" connecting to dissertation argument
6. **Time-Appropriate**: ~1.5 min/slide average for 30 minutes total
7. **Academic Rigor**: Technical depth appropriate for PhD defense
8. **Accessible**: Understandable to broader academic audience
9. **Contemporary Relevance**: Connects to Chapter 5.1 without overclaiming
10. **Constructive Arc**: Progresses from diagnosis (visual, code) to solution (geometry)

---

## Pacing Strategy

This 20-slide version naturally lands around 27-30 minutes if you:
- Keep intro slides brisk (Slides 1-3)
- Slow down on quantitative results (Slides 6, 11, 18)
- Spend 20-30 seconds walking through qualitative examples (Slides 7, 12, 17)
- Use synthesis slides (8, 13) as natural breath points

**Flexible slides for timing adjustment**: Slides 7, 12, 17 can be shortened or expanded with extra examples.

---

## Key Improvements from Previous Versions

This final specification:
1. **Expands from 15 to 20 slides** for better pacing and balanced treatment
2. **Adds synthesis slides** (8, 13) explicitly connecting each chapter to thesis argument
3. **Includes both quantitative and qualitative results** for each paper
4. **Provides table cropping guidance** (show only 3-4 models, highlight numbers)
5. **Separates geometry into 5 slides** (setup, baselines, agents, VRP/naming, results)
6. **Follows "1 idea, 3-4 bullets, 1 figure, 1 takeaway" rule** throughout
7. **Retells the same story as thesis and papers** with same images/results
8. **Maintains thesis-first, paper-second framing** with clear narrative spine

---

## Next Steps

After approval of this specification:
1. Extract visual assets from thesis PDF and papers
2. Crop tables to show only relevant models and conditions
3. Create LaTeX Beamer code for all 20 slides
4. Write detailed speaker notes for each slide
5. Create backup slides for extra quantitative details
6. Build PDF and review timing/flow
7. Practice and iterate based on timing
