# Beamer → PDF; output under ./out (matches LaTeX Workshop outDir)
# Cursor/LaTeX Workshop often spawn with a minimal PATH; TeX lives here on macOS (BasicTeX/MacTeX).
$ENV{'PATH'} = '/Library/TeX/texbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin:'
  . ( $ENV{'PATH'} // '' );
# $go_mode: always run at least one compile pass (avoids “nothing to do” after a failed run).
$go_mode = 1;
$pdf_mode = 1;
# biblatex + BibTeX backend (works with BasicTeX; switch to $bibtex_use = 2 if you use biber)
$bibtex_use = 1;
$out_dir = 'out';
$aux_dir = 'out';
@default_files = ('main.tex');
