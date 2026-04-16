# Install MiKTeX (pdflatex, latexmk, bibtex) for this PhD-Thesis repo on Windows.
# Run in PowerShell (Admin recommended if winget is restricted):
#   powershell -ExecutionPolicy Bypass -File .\scripts\setup-windows-tex.ps1
$ErrorActionPreference = 'Stop'

Write-Host 'Installing MiKTeX via winget (this may take several minutes)...'
winget install -e --id MiKTeX.MiKTeX --source winget --accept-source-agreements --accept-package-agreements

Write-Host ''
Write-Host 'Done. Close and reopen Cursor (or open a new terminal) so PATH picks up MiKTeX.'
Write-Host 'Verify:  pdflatex --version'
Write-Host 'Build slides:  cd slides; latexmk -pdf -outdir=out main.tex'
Write-Host 'MiKTeX can install missing packages on first compile; accept prompts or enable auto-install in MiKTeX Console.'
