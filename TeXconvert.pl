#!/usr/bin/perl -w
use diagnostics;

$figure_name = $ARGV[0];

rename($figure_name.".tex", "laprint.tex");
system("latex TeXconvert.tex"); 
system("dvips -o TeXconvert.ps TeXconvert.dvi");
system("ps2epsi TeXconvert.ps TeXconvert.eps");
rename("TeXconvert.eps", "Fig_".$figure_name.".eps");
rename("laprint.tex", $figure_name.".tex");
