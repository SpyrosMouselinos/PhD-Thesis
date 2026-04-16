# Beamer → PDF; output under ./out (matches LaTeX Workshop outDir)
# Cursor/LaTeX Workshop often spawn with a minimal PATH; prepend known TeX locations.
if ($^O eq 'darwin') {
  $ENV{'PATH'} = '/Library/TeX/texbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin:'
    . ( $ENV{'PATH'} // '' );
} elsif ($^O eq 'MSWin32') {
  my $sep = ';';
  # Basic MiKTeX (winget) often installs under %LOCALAPPDATA%\Programs\MiKTeX; all-users under Program Files.
  my $local = $ENV{LOCALAPPDATA};
  $local =~ s{\\}{/}g if defined $local;
  my @candidates = (
    ( defined $local ? ( $local . '/Programs/MiKTeX/miktex/bin/x64' ) : () ),
    'C:/Program Files/MiKTeX/miktex/bin/x64',
    'C:/Program Files/MiKTeX/miktex/bin/win-x64',
    'C:/texlive/2025/bin/win32',
    'C:/texlive/2024/bin/win32',
  );
  for my $dir (@candidates) {
    if (-d $dir && -f "$dir/pdflatex.exe") {
      $ENV{'PATH'} = $dir . $sep . ( $ENV{'PATH'} // '' );
      last;
    }
  }
}
# $go_mode: always run at least one compile pass (avoids “nothing to do” after a failed run).
$go_mode = 1;
$pdf_mode = 1;
# biblatex + BibTeX backend (works with BasicTeX; switch to $bibtex_use = 2 if you use biber)
$bibtex_use = 1;
$out_dir = 'out';
$aux_dir = 'out';
@default_files = ('main.tex');
