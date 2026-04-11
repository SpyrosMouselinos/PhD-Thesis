# PhD Defense Presentation Design Specification (Revised)

**Date**: 2026-04-11
**Topic**: 30-Minute PhD Defense Presentation
**Thesis Title**: [Use exact official thesis title]
**Audience**: Academic PhD committee + broader academic audience
**Format**: LaTeX Beamer (Madrid theme)
**Style**: Minimal-clean slides with detailed speaker notes

## Overview

This specification defines a 15-slide core presentation that follows the dissertation's own chapter structure and central argument. The presentation is NOT "three papers with one theme" but rather "one thesis about how to measure reasoning, expose shortcut-based failure, and build structure that improves robustness across modalities."

The arc follows the thesis directly: Chapter 1 framing (Clever Hans, behavioral testing) → Chapter 2 (Visual) → Chapter 3 (Code) → Chapter 4 (Geometry as culmination) → Chapter 5 (Conclusions and recent developments).

## Design Principles

1. **Thesis-Driven**: Follow chapter titles and structure from the dissertation itself
2. **Question-Driven**: Frame as one research question investigated across three domains, not chronological paper review
3. **Minimal-Clean**: Essential visuals only, narrative carried by speaker notes
4. **Methodological Clarity**: Explicit slide on behavioral testing/black-box approach
5. **Progression**: Code as transfer of testing philosophy, geometry as culmination
6. **Contemporary Relevance**: Final slide connects to Chapter 5.1 recent developments

## Presentation Structure

### Beamer Section Structure
- `\section{Introduction}` — Slides 1-5
- `\section{Testing Reasoning in the Visual Domain}` — Slides 6-7
- `\section{Exposing and Mitigating Biases in Code Generation}` — Slides 8-10
- `\section{Vision meets Language in Geometric Agentic Reasoning}` — Slides 11-13
- `\section{Conclusions and Future Directions}` — Slides 14-15

### Timing Breakdown
- **Introduction** (Slides 1-5): ~6 minutes
- **Chapter 2: Visual Domain** (Slides 6-7): ~4 minutes
- **Chapter 3: Code Generation** (Slides 8-10): ~6 minutes
- **Chapter 4: Geometric Reasoning** (Slides 11-13): ~8 minutes
- **Chapter 5: Conclusions** (Slides 14-15): ~5 minutes
- **Buffer**: ~1 minute distributed

**Total**: 15 slides, 30 minutes

## Detailed Slide Specifications

### Section 1: Introduction (Slides 1-5, ~6 minutes)

#### Slide 1: Title Slide

**LaTeX Structure**:
```latex
\begin{frame}
  \titlepage
\end{frame}
```

**Content**:
- Use exact official thesis title (unchanged)
- Your name, affiliation
- Defense date and committee information

**Visual Elements**:
- Clean Madrid theme title page
- Optional: Very thin bottom strip with three tiny visuals (CLEVR scene, code snippet, geometry diagram)

**Speaker Notes** (60 seconds):
"This dissertation studies a single question across three domains: when AI systems look strong on benchmarks, are they actually reasoning, or are they exploiting shortcuts? I approach that question through visual reasoning, code generation, and geometric problem-solving, and I argue that across all three, the same pattern appears: benchmark success often hides brittle reasoning. The second part of the thesis is constructive: once we expose those weaknesses, how can we organize training, prompting, and collaboration so that reasoning becomes more reliable?"

#### Slide 2: Clever Hans and the Modern AI Paradox

**LaTeX Structure**:
```latex
\begin{frame}{Clever Hans and the Modern AI Paradox}
  \begin{itemize}
    \item Success can mask lack of understanding
    \item Superhuman results do not guarantee robust reasoning
    \item Small, human-irrelevant changes can cause failure
  \end{itemize}
  \begin{center}
    \includegraphics[width=0.7\textwidth]{assets/thesis-fig-1-1-clever-hans}
  \end{center}
\end{frame}
```

**Content**:
- Title: "Clever Hans and the Modern AI Paradox"
- Three bullet points:
  - Success can mask lack of understanding
  - Superhuman results do not guarantee robust reasoning
  - Small, human-irrelevant changes can cause failure

**Visual Elements**:
- **Use Thesis Figure 1.1 (Clever Hans)** - make this large and central
- Optional small caption: "The right metaphor for modern AI evaluation"

**Speaker Notes** (90 seconds):
"I open with Clever Hans because it is the right metaphor for the whole dissertation. Hans appeared intelligent, but the apparent intelligence came from sensitivity to cues, not from genuine understanding. My thesis argues that many modern AI systems face the same problem. They can look remarkably strong in organized benchmark settings, yet fail under small changes that should not matter to a human. The common thread across vision, code, and geometry is that these systems are often distracted by subtle signals and shortcuts instead of grounding their answers in robust reasoning."

#### Slide 3: Central Research Question

**LaTeX Structure**:
```latex
\begin{frame}{Central Research Question}
  \begin{block}{}
    \textit{How can AI systems progress beyond pattern recognition to cultivate strong reasoning capabilities across multiple domains with diverse contexts and modalities?}
  \end{block}
  \vspace{1em}
  \begin{center}
    Vision \quad $\rightarrow$ \quad Code \quad $\rightarrow$ \quad Geometry
  \end{center}
\end{frame}
```

**Content**:
- Title: "Central Research Question"
- Block quote: "How can AI systems progress beyond pattern recognition to cultivate strong reasoning capabilities across multiple domains with diverse contexts and modalities?"
- Below: Vision → Code → Geometry

**Visual Elements**:
- No heavy figure needed
- Optional: Small **Thesis Figure 1.2** on the right to support intelligence/reasoning framing
- Three domain words with arrows showing progression

**Speaker Notes** (60 seconds):
"This is the central question of the dissertation, and I would put it almost verbatim on the slide. The key point is that I am not asking whether models can perform well in one benchmarked modality. I am asking how they can move beyond pattern recognition toward stronger reasoning across settings that differ in surface form but share the same deeper challenge: the model must ignore irrelevant cues, preserve semantics, and generalize its logic under perturbation. Vision, code, and geometry are therefore not three unrelated case studies. They are three views of the same problem."

#### Slide 4: How This Thesis Evaluates Reasoning

**LaTeX Structure**:
```latex
\begin{frame}{How This Thesis Evaluates Reasoning}
  \begin{itemize}
    \item Behavioral evaluation
    \item Semantically meaningful perturbations
    \item Black-box applicability
    \item Robustness, not just accuracy
  \end{itemize}
  \begin{center}
    \includegraphics[width=0.6\textwidth]{assets/thesis-fig-1-8-adversarial-testing}
  \end{center}
\end{frame}
```

**Content**:
- Title: "How This Thesis Evaluates Reasoning"
- Four bullet points:
  - Behavioral evaluation
  - Semantically meaningful perturbations
  - Black-box applicability
  - Robustness, not just accuracy

**Visual Elements**:
- **Use Thesis Figure 1.8** (formal adversarial testing diagram)
- Optional tiny footer note: measure → perturb → observe

**Speaker Notes** (90 seconds):
"The methodological core of the thesis is behavioral testing. Rather than relying on internal activations or model-specific access, I evaluate reasoning by observing how the system behaves under semantically meaningful changes. That matters because white-box methods can be powerful, but they are often unrealistic for proprietary models and can generate unnatural examples. My thesis therefore tries to bridge white-box effectiveness with black-box flexibility: the perturbations stay meaningful and task-preserving, but the framework remains applicable even when the model is closed. So the target is not security-style breaking. The target is honest measurement of reasoning."

**Source Reference**: Thesis Chapter 1

#### Slide 5: Roadmap of the Dissertation

**LaTeX Structure**:
```latex
\begin{frame}{Roadmap of the Dissertation}
  \begin{enumerate}
    \item Chapter 2 — Testing Reasoning in the Visual Domain
    \item Chapter 3 — Exposing and Mitigating Biases in Code Generation
    \item Chapter 4 — Vision meets Language in Geometric Agentic Reasoning
    \item Chapter 5 — Conclusions and Future Directions
  \end{enumerate}
\end{frame}
```

**Content**:
- Title: "Roadmap of the Dissertation"
- Four enumerated chapters:
  1. Chapter 2 — Testing Reasoning in the Visual Domain
  2. Chapter 3 — Exposing and Mitigating Biases in Code Generation
  3. Chapter 4 — Vision meets Language in Geometric Agentic Reasoning
  4. Chapter 5 — Conclusions and Future Directions

**Visual Elements**:
- Text-only timeline is sufficient
- Clean, minimal design

**Speaker Notes** (60 seconds):
"I would show the chapter roadmap explicitly. This helps the audience understand that the dissertation progresses in a deliberate sequence. Chapter 2 establishes the testing philosophy in a visual setting. Chapter 3 transfers that same semantic and black-box logic into language-based code generation. Chapter 4 becomes the culmination, because geometry forces vision, language, planning, tool use, and naming biases into one harder multimodal environment. Finally, Chapter 5 synthesizes the conclusions and connects them to where the field has moved since these works were completed."

**Source Reference**: Thesis overall structure

### Section 2: Testing Reasoning in the Visual Domain (Slides 6-7, ~4 minutes)

#### Slide 6: Testing Reasoning in the Visual Domain

**LaTeX Structure**:
```latex
\begin{frame}{Testing Reasoning in the Visual Domain}
  \begin{itemize}
    \item CLEVR looked close to solved
    \item I reformulate VQA as a two-player game
    \begin{itemize}
      \item Visual-QA Player vs Adversarial Player
    \end{itemize}
    \item Scene changes remain valid and in-distribution
  \end{itemize}
  \begin{center}
    \includegraphics[width=0.75\textwidth]{assets/thesis-fig-2-1-two-player-game}
  \end{center}
\end{frame}
```

**Content**:
- Title: "Testing Reasoning in the Visual Domain"
- Three main points:
  - CLEVR looked close to solved
  - I reformulate VQA as a two-player game
    - Visual-QA Player vs Adversarial Player
  - Scene changes remain valid and in-distribution

**Visual Elements**:
- **Use Thesis Figure 2.1** as the main figure (two-player game framework)

**Speaker Notes** (90 seconds):
"The first chapter asks a simple invariance question. If I reconfigure a scene in a way that preserves the correct answer for a human, should a reasoning model keep its answer? To test that, I reformulate visual question answering as a zero-sum two-player game. The Visual-QA Player answers questions about the scene. The Adversarial Player changes the scene semantically, without touching model internals and without using imperceptible pixel noise. So this is black-box testing with semantically valid manipulations. The point is to test reasoning under meaningful variation, not to exploit raw sensory fragility."

**Source Reference**: Thesis Chapter 2, ICLR 2022 paper

#### Slide 7: What the Visual Chapter Revealed

**LaTeX Structure**:
```latex
\begin{frame}{What the Visual Chapter Revealed}
  \begin{itemize}
    \item Near-perfect CLEVR models still fail
    \item Tiny valid changes can trigger large drops
    \item Humans see no reason the answer should change
    \item Adversarial retraining alone is not enough
  \end{itemize}
  \begin{center}
    \includegraphics[width=0.7\textwidth]{assets/thesis-fig-2-2-results}
  \end{center}
\end{frame}
```

**Content**:
- Title: "What the Visual Chapter Revealed"
- Four bullet points:
  - Near-perfect CLEVR models still fail
  - Tiny valid changes can trigger large drops
  - Humans see no reason the answer should change
  - Adversarial retraining alone is not enough

**Visual Elements**:
- **Use Thesis Figure 2.2** for the main deck
- **Backup slide**: ICLR Table 2 for full quantitative picture

**Speaker Notes** (90 seconds):
"The main result is that CLEVR was not really solved in the reasoning sense. Models with extremely high benchmark accuracy collapsed under small, semantically valid scene changes. In the thesis, the drops are striking: FiLM falls from 96.2 to 48.0, RN from 93.2 to 47.0, and even MDetr drops sharply despite near-perfect original performance. Human observers, however, usually see no reason the answer should change. That tells us the manipulation is not making the problem genuinely ambiguous; it is revealing a shortcut in the model. And importantly, brute-force adversarial retraining helps only marginally."

**Source Reference**: Thesis Chapter 2, ICLR 2022 results

### Section 3: Exposing and Mitigating Biases in Code Generation (Slides 8-10, ~6 minutes)

#### Slide 8: From Visual Reasoning to Code Generation

**LaTeX Structure**:
```latex
\begin{frame}{From Visual Reasoning to Code Generation}
  \begin{block}{Same question, new modality}
    In code, the shortcuts live in the prompt
  \end{block}
  \begin{itemize}
    \item Names, keywords, and examples can all leak solutions
  \end{itemize}
  \vspace{1em}
  \begin{center}
    Scene $\rightarrow$ Prompt
  \end{center}
\end{frame}
```

**Content**:
- Title: "From Visual Reasoning to Code Generation"
- Block: "Same question, new modality: In code, the shortcuts live in the prompt"
- Bullet: Names, keywords, and examples can all leak solutions
- Visual transition: Scene → Prompt

**Visual Elements**:
- No thesis figure needed here
- Very small left/right transition graphic: scene → prompt

**Speaker Notes** (60 seconds):
"The next chapter asks whether the same pathology appears in language. Code generation is the right setting because the prompt itself is highly structured: function names, descriptions, and examples can all serve as hidden hints. So Chapter 3 is not a detour from the thesis. It is the transfer of the same idea from visual semantics to prompt semantics. In vision, the model may over-rely on spatial layout or recurring cues. In code, it may over-rely on names, lexical triggers, or example patterns that reduce the need for actual algorithmic reasoning."

**Source Reference**: Thesis Chapter 3 introduction

#### Slide 9: Blocks of Influence

**LaTeX Structure**:
```latex
\begin{frame}{Blocks of Influence}
  \begin{columns}
    \column{0.5\textwidth}
    \begin{itemize}
      \item Name Block $\rightarrow$ memorization
      \item Description Block $\rightarrow$ lexical cue dependence
      \item Example Block $\rightarrow$ reasoning tie-breaker
    \end{itemize}
    \vspace{0.5em}
    \small{Perturb semantically, keep the task solvable}

    \column{0.5\textwidth}
    \includegraphics[width=\textwidth]{assets/thesis-fig-3-1-blocks-of-influence}
  \end{columns}
\end{frame}
```

**Content**:
- Title: "Blocks of Influence"
- Three bullet points:
  - Name Block → memorization
  - Description Block → lexical cue dependence
  - Example Block → reasoning tie-breaker
- Subtext: "Perturb semantically, keep the task solvable"

**Visual Elements**:
- **Use Thesis Figure 3.1** as the main figure
- **Alternative**: ACL Figure 1 from the paper

**Speaker Notes** (90 seconds):
"This is the core abstraction of the code chapter. I decompose each coding prompt into three Blocks of Influence. The Name Block tests whether the model is leaning on memorized function-name associations. The Description Block tests whether it is relying on a small number of lexical signals rather than understanding the task. The Example Block tests whether examples are acting as a reasoning crutch. The important methodological point is that the perturbations are filtered to preserve global semantics, so the task remains human-solvable even after the hints are weakened."

**Source Reference**: Thesis Chapter 3, ACL 2023 methodology

#### Slide 10: What the Code Chapter Revealed

**LaTeX Structure**:
```latex
\begin{frame}{What the Code Chapter Revealed}
  \begin{columns}
    \column{0.55\textwidth}
    \begin{itemize}
      \item Rename function $\rightarrow$ memorization exposed
      \item Remove keywords $\rightarrow$ lexical bias exposed
      \item Remove examples $\rightarrow$ weak composition exposed
      \item Adversarial fine-tuning helps, but only partially
    \end{itemize}

    \column{0.45\textwidth}
    \includegraphics[width=\textwidth]{assets/thesis-fig-3-2-results}
  \end{columns}
\end{frame}
```

**Content**:
- Title: "What the Code Chapter Revealed"
- Four bullet points:
  - Rename function → memorization exposed
  - Remove keywords → lexical bias exposed
  - Remove examples → weak composition exposed
  - Adversarial fine-tuning helps, but only partially

**Visual Elements**:
- **Main**: Thesis Figure 3.2
- **Optional inset**: Thesis Figure 3.3 or 3.4
- **Backup slides**: ACL Table 3 and Table 4/5

**Speaker Notes** (2 minutes):
"The failures in code generation are structurally similar to those in vision. When function names are anonymized, performance drops reveal memorization effects. When keywords are removed, models lose task direction, showing strong lexical dependence. When examples disappear, models often still produce fragments that look relevant, but fail to compose them into correct code. That is the most interesting failure: not total nonsense, but shallow, incomplete reasoning. Fine-tuning on transformed prompts and longer-context examples improves robustness, but the gains are partial, which tells us the deeper problem is still there.

This also serves as the cross-domain synthesis point. We now have the same pattern appearing in two completely different modalities. In vision, the shortcuts were spatial and configurational. In code, they are lexical and structural. But the underlying pathology is identical: models retreat to the easiest available signal when reasoning becomes hard."

**Source Reference**: Thesis Chapter 3, ACL 2023 results

### Section 4: Vision meets Language in Geometric Agentic Reasoning (Slides 11-13, ~8 minutes)

#### Slide 11: Vision meets Language in Geometric Agentic Reasoning

**LaTeX Structure**:
```latex
\begin{frame}{Vision meets Language in Geometric Agentic Reasoning}
  \begin{columns}
    \column{0.5\textwidth}
    \textbf{Geometry is the hardest setting in the thesis}
    \begin{itemize}
      \item Planning
      \item Tool use
      \item Spatial reasoning
      \item Language grounding
    \end{itemize}
    \small{A stricter test of multimodal reasoning}

    \column{0.5\textwidth}
    \includegraphics[width=\textwidth]{assets/thesis-fig-4-1-euclidea-problem}
  \end{columns}
\end{frame}
```

**Content**:
- Title: "Vision meets Language in Geometric Agentic Reasoning"
- Text: "Geometry is the hardest setting in the thesis"
- Four requirements:
  - Planning
  - Tool use
  - Spatial reasoning
  - Language grounding
- Subtext: "A stricter test of multimodal reasoning"

**Visual Elements**:
- **Use Thesis Figure 4.1** as the main visual

**Speaker Notes** (90 seconds):
"Geometry is the culmination of the dissertation because it combines the earlier problems into one stricter environment. Now the model must understand the scene, interpret textual constraints, plan a sequence of construction steps, use the correct tools, and stay consistent about names and intermediate objects. So geometry is not just another application. It is where visual, symbolic, and procedural reasoning meet. I also deliberately avoid relying on a specialized theorem prover here, because the goal is not to build the strongest narrow geometry engine, but to study and improve the reasoning of more general-purpose language and vision-language models."

**Source Reference**: Thesis Chapter 4, EMNLP 2024 introduction

#### Slide 12: What Made the Geometry System Work

**LaTeX Structure**:
```latex
\begin{frame}{What Made the Geometry System Work}
  \begin{columns}
    \column{0.5\textwidth}
    \begin{itemize}
      \item Adaptive few-shot
      \item Role specialization
      \item Validators and iterative feedback
      \item Visual Relations Prompt
      \item Naming neutralization
    \end{itemize}

    \column{0.5\textwidth}
    \includegraphics[width=\textwidth]{assets/thesis-fig-4-3-multi-agent-architecture}
  \end{columns}
  \note{Mention Figure 4.2 verbally; keep Figure 4.4 for next slide}
\end{frame}
```

**Content**:
- Title: "What Made the Geometry System Work"
- Five components:
  - Adaptive few-shot
  - Role specialization
  - Validators and iterative feedback
  - Visual Relations Prompt
  - Naming neutralization

**Visual Elements**:
- **Use Thesis Figure 4.3** on this slide
- **Mention Figure 4.2 verbally**
- **Keep Figure 4.4 for the next slide**

**Speaker Notes** (2 minutes):
"This slide should present the geometry system as a response to concrete failure modes. Adaptive few-shot reduces hallucinated tool use by retrieving relevant prior constructions. Role specialization separates planning from execution: one agent reasons in natural language, another translates that into geometric operations. Validators add iterative correction. The Visual Relations Prompt converts the 2D scene into structured text so even non-visual LLMs can reason over spatial relations more effectively. And naming neutralization removes alphabetical traps, which otherwise push models into unnecessary intermediate points or premature stopping.

This is where the dissertation becomes explicitly constructive. Rather than only diagnosing failure, I redesign the reasoning process. The message is simple: one model is often not enough; a structured team can reason better than a monolith."

**Source Reference**: Thesis Chapter 4, EMNLP 2024 methodology

#### Slide 13: What the Geometry Chapter Showed

**LaTeX Structure**:
```latex
\begin{frame}{What the Geometry Chapter Showed}
  \begin{columns}
    \column{0.5\textwidth}
    \begin{itemize}
      \item Multi-agent structure beats single-model prompting
      \item Better reasoning can come from organization
      \item Helps general-purpose LLMs/VLMs
      \item Transfers beyond geometry
    \end{itemize}

    \column{0.5\textwidth}
    \includegraphics[width=\textwidth]{assets/thesis-fig-4-4-qualitative-example}
  \end{columns}
\end{frame}
```

**Content**:
- Title: "What the Geometry Chapter Showed"
- Four bullet points:
  - Multi-agent structure beats single-model prompting
  - Better reasoning can come from organization
  - Helps general-purpose LLMs/VLMs
  - Transfers beyond geometry

**Visual Elements**:
- **Use Thesis Figure 4.4** as the memorable qualitative example
- **Backup quantitative slides**: Geometry paper Table 1, Table 3, Table 4, Table 5

**Speaker Notes** (2 minutes):
"The most important result of this chapter is that structure matters as much as scale. Few-shot prompting alone helps only modestly. Fine-tuning on Euclid's Elements helps more. But the largest gains come from organizing reasoning into specialized interacting agents. The thesis explicitly notes that GPT-4 and ChatGPT improved substantially under the multi-agent setup, and even mid-sized open models improved substantially. Just as importantly, the same framework generalizes beyond geometry to mathematical reasoning tasks. So the thesis moves from diagnosing brittle reasoning to showing that structured collaboration can extend the reasoning limits of general-purpose models."

**Source Reference**: Thesis Chapter 4, EMNLP 2024 results

### Section 5: Conclusions and Future Directions (Slides 14-15, ~5 minutes)

#### Slide 14: Conclusions and Future Directions

**LaTeX Structure**:
```latex
\begin{frame}{Conclusions and Future Directions}
  \begin{block}{Core Contributions}
    \begin{itemize}
      \item Measure reasoning behaviorally
      \item Expose shortcut dependence semantically
      \item Improve reasoning through structure
    \end{itemize}
  \end{block}

  \vspace{1em}

  \begin{block}{Future Directions}
    \begin{itemize}
      \item Adversarial testing + post-training
      \item Collaborative multi-agent systems
      \item Continual learning
    \end{itemize}
  \end{block}
\end{frame}
```

**Content**:
- Title: "Conclusions and Future Directions"
- Two blocks:
  1. Core Contributions:
     - Measure reasoning behaviorally
     - Expose shortcut dependence semantically
     - Improve reasoning through structure
  2. Future Directions:
     - Adversarial testing + post-training
     - Collaborative multi-agent systems
     - Continual learning

**Visual Elements**:
- No borrowed figure needed
- Simple 3-step arrow works best: Evaluate → Diagnose → Improve

**Speaker Notes** (90 seconds):
"This is the dissertation-level synthesis. Across all three domains, the same lesson returns: high benchmark performance is not sufficient evidence of robust reasoning. The first contribution of the thesis is methodological—reasoning should be measured behaviorally and semantically, not only through static accuracy. The second is diagnostic—shortcut dependence takes different surface forms in different modalities, but the pathology is shared. The third is constructive—better reasoning can emerge from stronger structure, whether through reasoning-aware post-training, better prompting, or coordinated multi-agent systems."

**Source Reference**: Thesis Chapter 5

#### Slide 15: Recent Developments Reinforcing These Contributions

**LaTeX Structure**:
```latex
\begin{frame}{Recent Developments Reinforcing These Contributions}
  \begin{columns}[t]
    \column{0.5\textwidth}
    \textbf{Reasoning models}
    \begin{itemize}
      \item o1, Gemini 2.5
    \end{itemize}
    \vspace{0.5em}
    \textbf{Native multimodality}
    \begin{itemize}
      \item GPT-4o, Gemini
    \end{itemize}

    \column{0.5\textwidth}
    \textbf{World models}
    \begin{itemize}
      \item Genie 3
    \end{itemize}
    \vspace{0.5em}
    \textbf{Agents / agent teams}
    \begin{itemize}
      \item Anthropic Research, OpenAI Agents SDK
    \end{itemize}
  \end{columns}
\end{frame}
```

**Content**:
- Title: "Recent Developments Reinforcing These Contributions"
- 2×2 grid structure:
  - Reasoning models: o1, Gemini 2.5
  - Native multimodality: GPT-4o, Gemini
  - World models: Genie 3
  - Agents / agent teams: Anthropic Research, OpenAI Agents SDK

**Visual Elements**:
- 2×2 grid of logos or small screenshots from official blogs
- Keep the design simple and clean

**Speaker Notes** (2 minutes):
"I would end by showing that many themes of the thesis are now clearly mainstream. Reinforcement-learning-based reasoning is central in OpenAI's o1, where performance improves with more reinforcement learning and more time spent thinking, and Google explicitly describes Gemini 2.5 as a thinking model built with stronger post-training to produce more capable agents. Unified multimodality is now native in systems like GPT-4o and Gemini. World models have become concrete again with Genie 3. And multi-agent orchestration is no longer speculative: Anthropic describes a production research system using multiple Claude agents, while OpenAI now ships tooling specifically for single-agent and multi-agent workflows. So the direction of the thesis aged very well.

The point is not 'I predicted the future.' The point is: the questions I asked about measuring reasoning, exposing shortcuts, and building structured collaboration remain central to where the field is going. These contributions have lasting relevance."

**Source Reference**: Thesis Chapter 5.1

---

## Summary of Main-Deck Visuals

### Figures to Definitely Use:
- **Slide 2**: Thesis Fig. 1.1 (Clever Hans)
- **Slide 4**: Thesis Fig. 1.8 (Adversarial testing diagram)
- **Slide 6**: Thesis Fig. 2.1 (Two-player game framework)
- **Slide 7**: Thesis Fig. 2.2 (Visual chapter results)
- **Slide 9**: Thesis Fig. 3.1 (Blocks of Influence)
- **Slide 10**: Thesis Fig. 3.2 (Code chapter results)
- **Slide 11**: Thesis Fig. 4.1 (Euclidea problem)
- **Slide 12**: Thesis Fig. 4.3 (Multi-agent architecture)
- **Slide 13**: Thesis Fig. 4.4 (Qualitative example)

### Best Backup Slides:
- **Visual chapter**: ICLR Table 2 (full model-drop comparison)
- **Code chapter**: ACL Table 3 + Table 4/5 (perturbation results and mitigation)
- **Geometry chapter**: EMNLP Table 1, Table 3, Table 4, Table 5 (overall results and ablations)

### Pacing Notes:
The 15-slide core deck is tight. The natural slides to expand and fill the full 30 minutes are:
- **Slide 7** (Visual results)
- **Slide 10** (Code results + cross-domain synthesis)
- **Slide 13** (Geometry results)
- **Slide 15** (Recent developments)

These are the slides where one extra example or one backup chart will add time without breaking the narrative.

---

## Speaker Notes Guidelines

For each slide, speaker notes should:
1. **Set Context**: Orient the audience to where we are in the thesis narrative
2. **Explain Visuals**: Describe what's on the slide and its significance
3. **Provide Depth**: Add technical detail appropriate for academic committee
4. **Transition**: Bridge to the next slide/section smoothly

Speaker notes are written in a conversational style that sounds natural when spoken, not read verbatim.

**Total speaking time target**: 30 minutes (15 slides × ~2 minutes average)

## Visual Asset Extraction Plan

### From Thesis (Primary Source):
- **Fig. 1.1**: Clever Hans illustration → `assets/thesis-fig-1-1-clever-hans.png`
- **Fig. 1.2** (optional): Intelligence/reasoning framing → `assets/thesis-fig-1-2-reasoning-framing.png`
- **Fig. 1.8**: Adversarial testing diagram → `assets/thesis-fig-1-8-adversarial-testing.png`
- **Fig. 2.1**: Two-player game framework → `assets/thesis-fig-2-1-two-player-game.png`
- **Fig. 2.2**: Visual chapter results → `assets/thesis-fig-2-2-results.png`
- **Fig. 3.1**: Blocks of Influence → `assets/thesis-fig-3-1-blocks-of-influence.png`
- **Fig. 3.2**: Code chapter results → `assets/thesis-fig-3-2-results.png`
- **Fig. 3.3/3.4** (optional): Additional code results → `assets/thesis-fig-3-3-*.png`
- **Fig. 4.1**: Euclidea problem → `assets/thesis-fig-4-1-euclidea-problem.png`
- **Fig. 4.2** (mention verbally): Baseline results
- **Fig. 4.3**: Multi-agent architecture → `assets/thesis-fig-4-3-multi-agent-architecture.png`
- **Fig. 4.4**: Qualitative example → `assets/thesis-fig-4-4-qualitative-example.png`

### From Papers (Backup/Supplement):
- **ICLR 2022 Table 2**: Full quantitative drops → backup slide
- **ACL 2023 Figure 1**: Alternative Blocks of Influence visual
- **ACL 2023 Tables 3, 4, 5**: Perturbation and mitigation results → backup slides
- **EMNLP 2024 Tables 1, 3, 4, 5**: Geometry quantitative results → backup slides

### Optional Created Assets:
- Simple transition graphics (scene → prompt for Slide 8)
- 3-step arrow (Evaluate → Diagnose → Improve for Slide 14)
- 2×2 grid template for Slide 15 (current AI landscape)

## LaTeX Beamer Implementation Notes

### Document Structure:
```latex
\documentclass{beamer}
\usetheme{Madrid}

% Sections for navigation
\section{Introduction}  % Slides 1-5
\section{Testing Reasoning in the Visual Domain}  % Slides 6-7
\section{Exposing and Mitigating Biases in Code Generation}  % Slides 8-10
\section{Vision meets Language in Geometric Agentic Reasoning}  % Slides 11-13
\section{Conclusions and Future Directions}  % Slides 14-15
```

### Key Implementation Details:
- **Theme**: Madrid (already configured in `slides/main.tex`)
- **Frame Structure**: Each slide = `\begin{frame}{Title}...\end{frame}`
- **Speaker Notes**: Use `\note{...}` after each frame
- **Graphics Path**: Store in `slides/assets/`, reference as `\includegraphics{assets/filename}`
- **Bibliography**: Cite using `\cite{ICLR2022}`, `\cite{ACL2023}`, `\cite{EMNLP2024}` (already in `references.bib`)
- **Minimal Text**: Use `\begin{itemize}...\end{itemize}` with 2-4 items max per slide
- **Blocks**: Use `\begin{block}{}\end{block}` for emphasis (e.g., research question)
- **Columns**: Use `\begin{columns}...\end{columns}` for side-by-side content
- **Timing**: Average 2 minutes per slide, some variation OK (Slides 7, 10, 13 can run longer)

## Success Criteria

The presentation successfully:
1. **Thesis-Driven**: Follows the dissertation's chapter structure and central argument
2. **Question-Driven**: Frames as one research question across three domains, not chronological paper review
3. **Methodologically Clear**: Explicitly presents behavioral testing and black-box approach
4. **Cohesive Narrative**: Code as transfer, geometry as culmination
5. **Academic Rigor**: Maintains technical depth appropriate for PhD defense
6. **Accessible**: Remains understandable to broader academic audience
7. **Time-Constrained**: Fits within 30 minutes (15 slides × ~2 min average)
8. **Minimal-Clean**: Essential visuals and text only, narrative in speaker notes
9. **Contemporary Relevance**: Connects to Chapter 5.1 recent developments without overclaiming
10. **Contribution-Focused**: Highlights behavioral testing, domain-independent insights, structural solutions

## Key Improvements from Original Design

This revised specification incorporates feedback to:
- Use exact thesis title (not catchier talk title)
- Follow chapter structure more directly
- Add explicit slide on behavioral testing methodology (Slide 4)
- Present roadmap before diving into chapters (Slide 5)
- Frame code generation as transfer of same philosophy, not separate work
- Present geometry as culmination and constructive solution
- Move "bridge to today" to final slide matching Chapter 5.1
- Reduce from 20 to 15 slides for tighter pacing
- Include specific thesis figure references throughout
- Provide beamer-ready LaTeX structure for each slide

## Next Steps

After approval of this revised specification:
1. Update CLAUDE.md with presentation context and design principles
2. Create implementation plan for LaTeX Beamer slides
3. Extract visual assets from thesis PDF and papers
4. Write LaTeX code for all 15 slides with speaker notes
5. Create backup slides for quantitative details
6. Build PDF and review timing/flow
7. Iterate based on practice runs
