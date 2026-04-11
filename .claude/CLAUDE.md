# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

PhD thesis repository containing LaTeX Beamer presentation slides for a 30-minute PhD defense. The project uses BasicTeX/MacTeX with the latexmk build system and is configured for VS Code with the LaTeX Workshop extension.

### Thesis Context
The dissertation investigates reasoning vs. pattern matching in AI systems across three domains:
- **Visual Reasoning** (ICLR 2022): Black-box adversarial testing exposes CLEVR model brittleness
- **Code Generation** (ACL 2023): Blocks of Influence reveal prompt-based biases and memorization
- **Geometric Reasoning** (EMNLP 2024): Multi-agent specialization pushes beyond single-model limitations

**Central Argument**: Benchmark success often overstates reasoning; semantic testing exposes shortcuts; structured collaboration helps repair these limitations.

## Repository Structure

- `slides/` - Main Beamer presentation (30-minute PhD defense)
  - `main.tex` - Root document using Madrid theme
  - `tex/` - Chapter files (chapter01.tex through chapter10.tex) included via `\input`
  - `assets/` - Images and graphics (referenced in slides via `\includegraphics`)
  - `bibliography/` - BibTeX references (`references.bib`)
  - `out/` - Build artifacts (PDF, auxiliary files) - gitignored
  - `.latexmkrc` - latexmk configuration (PDF mode, BibTeX backend, output directory)
- `original_materials/` - Source materials for presentation
  - `MIMUW_Thesis-8-53.pdf` - Complete PhD thesis document
  - `ICLR2022.pdf` - Visual reasoning paper
  - `ACL_2023.pdf` - Code generation biases paper
  - `Geometry_EMNLP_2024.pdf` - Geometric agentic reasoning paper
- `docs/superpowers/specs/` - Design specifications
  - `2026-04-11-phd-defense-presentation-design.md` - Complete 20-slide presentation spec
- `thesis/` - Empty directory (for future thesis document)
- `academic_papers/` - Empty directory (for storing related papers)
- `scripts/` - Setup and utility scripts
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

## Working with Content

### Adding slides
- Each chapter is a separate file in `slides/tex/` (e.g., `chapter01.tex`)
- Chapters use `\section{Name}` followed by `\begin{frame}...\end{frame}` environments
- Images are stored in `slides/assets/` and referenced via `\includegraphics{filename}`
- The graphics path is configured to search `assets/`, `./assets/`, and `./`

### Bibliography
- References defined in `slides/bibliography/references.bib`
- Cite using `\cite{key}` in any chapter
- Bibliography frame automatically generated at the end of `main.tex`
- Uses biblatex with numeric style and BibTeX backend (not biber)

### Chapter structure
- `main.tex` includes chapters via `\input{tex/chapterNN}` (no .tex extension)
- Title page and outline generated automatically
- References section rendered via `\printbibliography`

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

## PhD Defense Presentation

### Design Specification
Complete design spec: `docs/superpowers/specs/2026-04-11-phd-defense-presentation-design.md`

### Presentation Structure (20 slides, 30 minutes)
```latex
\section{Introduction}  % Slides 1-3
\section{Testing Reasoning in the Visual Domain}  % Slides 4-8
\section{Exposing and Mitigating Biases in Code Generation}  % Slides 9-13
\section{Vision meets Language in Geometric Agentic Reasoning}  % Slides 14-18
\section{Conclusions and Future Directions}  % Slides 19-20
```

### Design Principles
1. **Thesis-first, paper-second**: Each 5-slide chapter block ends with synthesis connecting to dissertation argument
2. **One idea per slide**: 3-4 bullets max, 1 figure/table, 1 spoken takeaway
3. **Balanced treatment**: Each main chapter (Visual, Code, Geometry) gets 5 slides
4. **Quantitative + Qualitative**: Show both results tables (cropped) and qualitative examples
5. **Minimal-clean aesthetic**: Essential visuals only, narrative in speaker notes

### Visual Assets Strategy
- **Primary source**: Extract figures from `original_materials/MIMUW_Thesis-8-53.pdf`
- **Cropped tables**: Show only 3-4 models, highlight numbers mentioned in speaker notes
- **Both quant & qual**: Each paper gets quantitative results slide + qualitative examples slide
- Store in `slides/assets/` with descriptive names (e.g., `thesis-fig-1-1-clever-hans.png`)

### Speaker Notes
- Use `\note{...}` command after each `\begin{frame}...\end{frame}`
- Target ~1.5 minutes per slide (ranging from 60-120 seconds)
- Synthesis slides (8, 13) serve as natural breath points

### Key Presentation Slides
- **Slide 2**: Clever Hans paradox (Thesis Fig 1.1)
- **Slides 6, 11, 18**: Quantitative results (cropped tables from papers)
- **Slides 7, 12, 17**: Qualitative failure examples
- **Slides 8, 13**: Chapter synthesis ("what this taught me")
- **Slide 20**: Recent developments (o1, GPT-4o, agents)
