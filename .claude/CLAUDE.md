# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**Purpose**: This repository contains a 20-slide LaTeX Beamer presentation for a 30-minute PhD defense on measuring and enhancing reasoning in AI systems.

**NOT a generic LaTeX repository** - this is a purpose-built presentation following a specific design specification (`docs/superpowers/specs/2026-04-11-phd-defense-presentation-design.md`) and implementation plan (`docs/superpowers/plans/2026-04-11-phd-defense-presentation.md`).

### Central Research Question

**How can AI systems progress beyond pattern recognition to cultivate strong reasoning capabilities across multiple domains with diverse contexts and modalities?**

### Dissertation Context

The thesis investigates reasoning vs. pattern matching across three domains:
- **Visual Reasoning** (ICLR 2022): Black-box adversarial testing exposes CLEVR model brittleness via semantic scene perturbations
- **Code Generation** (ACL 2023): Blocks of Influence reveal prompt-based biases and memorization in code LLMs
- **Geometric Reasoning** (EMNLP 2024): Multi-agent specialization pushes beyond single-model limitations in Euclidea geometry tasks

**Central Argument**: Benchmark success often overstates reasoning; semantic testing exposes shortcuts; structured collaboration helps repair these limitations.

### Build System

LaTeX Beamer with BasicTeX/MacTeX, latexmk build system, configured for VS Code with LaTeX Workshop extension.

## Repository Structure

- `slides/` - **Main Beamer presentation (20 slides, 30 minutes)**
  - `main.tex` - Root document using Madrid theme (5 sections, not 10 placeholder chapters)
  - `tex/chapter01.tex` - Introduction (Slides 1-3)
  - `tex/chapter02.tex` - Testing Reasoning in the Visual Domain (Slides 4-8)
  - `tex/chapter03.tex` - Exposing and Mitigating Biases in Code Generation (Slides 9-13)
  - `tex/chapter04.tex` - Vision meets Language in Geometric Agentic Reasoning (Slides 14-18)
  - `tex/chapter05.tex` - Conclusions and Future Directions (Slides 19-20)
  - `assets/` - Visual assets extracted from thesis/papers (16 figures/cropped tables)
  - `bibliography/references.bib` - BibTeX entries for thesis papers
  - `out/` - Build artifacts (PDF, auxiliary files) - gitignored
  - `.latexmkrc` - latexmk configuration (PDF mode, BibTeX backend, output directory)
- `original_materials/` - **Source materials for presentation**
  - `MIMUW_Thesis-8-53.pdf` - Complete PhD thesis (primary figure source)
  - `ICLR2022.pdf` - Visual reasoning paper (CLEVR adversarial testing)
  - `ACL_2023.pdf` - Code generation biases paper (Blocks of Influence)
  - `Geometry_EMNLP_2024.pdf` - Geometric reasoning paper (multi-agent Euclidea)
- `docs/superpowers/` - **Design and implementation documentation**
  - `specs/2026-04-11-phd-defense-presentation-design.md` - Complete 20-slide design spec (authoritative)
  - `plans/2026-04-11-phd-defense-presentation.md` - 10-task implementation plan with LaTeX code
- `scripts/` - Setup scripts
  - `setup-macos-tex.sh` - macOS BasicTeX installation script

## Build Commands

### Build slides to PDF
```bash
cd slides
/Library/TeX/texbin/latexmk -g -synctex=1 -interaction=nonstopmode -file-line-error -pdf -outdir=out main.tex
```

Or use the VS Code default build task from anywhere in the workspace:
- Command Palette → "Run Build Task" (Cmd+Shift+B)

The `.latexmkrc` configuration automatically handles:
- PDF generation via pdflatex
- BibTeX bibliography processing (backend=bibtex, not biber)
- Output to `slides/out/` directory
- PATH setup for macOS TeX installation

### Clean build artifacts
```bash
cd slides
/Library/TeX/texbin/latexmk -c -outdir=out
```

## Development Environment

### macOS Setup
Run once to install BasicTeX and required packages:
```bash
./scripts/setup-macos-tex.sh
```

This installs: latexmk, beamer, biblatex, and essential LaTeX collections.

### VS Code Configuration
The repository is configured for the LaTeX Workshop extension:
- Auto-build on save enabled
- PDF viewer opens in VS Code tab
- Auto-clean auxiliary files on build
- Custom PATH includes `/Library/TeX/texbin` for macOS TeX installation

## Working with Presentation Content

**IMPORTANT**: This presentation follows a detailed design specification. Before modifying content, consult:
1. `docs/superpowers/specs/2026-04-11-phd-defense-presentation-design.md` - Slide content, speaker notes, figure mappings
2. `docs/superpowers/plans/2026-04-11-phd-defense-presentation.md` - Implementation tasks, LaTeX code

### Slide Structure
- 5 chapters in `slides/tex/chapter01.tex` through `chapter05.tex` (NOT 10 placeholder files)
- Each chapter: `\section{Name}` followed by `\begin{frame}...\end{frame}` environments
- Speaker notes: `\note{...}` command after each frame (~60-120 seconds of content)
- Images: `\includegraphics{assets/filename}` (graphics path pre-configured)

### Visual Assets
- Extract from `original_materials/MIMUW_Thesis-8-53.pdf` (primary source)
- Naming: `thesis-fig-X-Y-description.png` for thesis figures
- Cropped tables: Show only 3-4 models, highlight key numbers from speaker notes
- 16 total assets planned (see implementation plan Task 1)

### Bibliography
- Three main papers in `slides/bibliography/references.bib` (ICLR2022, ACL2023, EMNLP2024)
- Cite using `\cite{key}` in frames
- References rendered via `\printbibliography` at end of presentation

### Critical Figure Mappings
- **Slide 14**: Euclidea problem screenshot (NOT Thesis Fig 4.1)
- **Thesis Fig 4.1**: Multi-agent architecture (used on Slide 16)
- **Slide 17**: Prioritize Fig 4.4 (naming bias) over Fig 4.3 (VRP)

## Path Considerations

The `.latexmkrc` and VS Code tasks explicitly set PATH because:
- Cursor/VS Code may spawn processes with minimal PATH
- macOS TeX lives in `/Library/TeX/texbin` (BasicTeX/MacTeX)
- Homebrew binaries may be in `/opt/homebrew/bin`

When running commands outside VS Code, ensure `/Library/TeX/texbin` is in PATH:
```bash
eval "$(/usr/libexec/path_helper)"
export PATH="/Library/TeX/texbin:$PATH"
```

## Presentation Design Philosophy

This is NOT a generic talk template - it follows a "thesis-first, paper-second" structure where each chapter synthesizes how the work contributes to the dissertation argument.

### 20-Slide Structure (30 minutes)
```latex
\section{Introduction}                                              % Slides 1-3
\section{Testing Reasoning in the Visual Domain}                    % Slides 4-8
\section{Exposing and Mitigating Biases in Code Generation}        % Slides 9-13
\section{Vision meets Language in Geometric Agentic Reasoning}     % Slides 14-18
\section{Conclusions and Future Directions}                         % Slides 19-20
```

### Core Design Principles
1. **Thesis-first, paper-second**: Each 5-slide chapter ends with synthesis slide ("What this chapter taught me")
2. **One idea per slide**: 3-4 bullets max, 1 figure/table, 1 spoken takeaway
3. **Balanced treatment**: Visual (5), Code (5), Geometry (5) - equal weight
4. **Quantitative + Qualitative**: Each paper gets results table + failure examples
5. **Minimal-clean aesthetic**: Essential visuals only, rich narrative in speaker notes

### Critical Slides
- **Slide 3**: Central research question (bold thesis question at top)
- **Slide 8**: "What the Visual Chapter Taught Me" (synthesis)
- **Slide 13**: "What Helped in Code Generation" (synthesis + cross-domain connection)
- **Slide 18**: "What the Geometry Chapter Taught Me" (synthesis + generalization claim)
- **Slide 20**: Chapter 5.1 headings verbatim (AI Reasoning Agents, Vision-Language Model Reasoning, Virtual Tokens)

### Implementation Status
- Design spec: Complete (`docs/superpowers/specs/2026-04-11-phd-defense-presentation-design.md`)
- Implementation plan: Complete with corrected figure mappings (`docs/superpowers/plans/2026-04-11-phd-defense-presentation.md`)
- LaTeX code: Ready for execution via subagent-driven development
