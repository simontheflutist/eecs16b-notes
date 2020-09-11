\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{content16b}[Base class for EE 16B content]

\LoadClass[10pt, oneside]{memoir}

%% Packages in lexicographical order! for deduplication
\RequirePackage{adjustbox}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{cancel}
\RequirePackage[american,siunitx]{circuitikz}
\RequirePackage{commath}
\RequirePackage{comment}
\RequirePackage{datetime2}
\RequirePackage{enumitem}
\RequirePackage{epsf}
\RequirePackage{etoolbox}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{latexsym}
\RequirePackage{listings}
\RequirePackage{newpxmath}
\RequirePackage{newpxtext}
\RequirePackage{mathdots}
\RequirePackage{mathtools}
\RequirePackage[protrusion, expansion,kerning,tracking,spacing]{microtype}
\RequirePackage{multicol}
\RequirePackage{pdfpages}
\RequirePackage{pgfplots}
    \usepgfplotslibrary{groupplots}
\RequirePackage{physics}
\RequirePackage{subcaption}
\RequirePackage{textcomp}
\RequirePackage{tikz}
\RequirePackage{tkz-euclide}
\RequirePackage{url}
\RequirePackage{xcolor}
\RequirePackage{xspace}

%% Typography is important!!
\microtypecontext{spacing=nonfrench}
\nonfrenchspacing

% Declaring some math operator
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}
%%%%%%

%% Configuration related to SI/circuits
\sisetup{per-mode=fraction}
\sisetup{quotient-mode=fraction}
\DeclareSIUnit \decade {dec}
% don't need this I think
% \lstset{basicstyle=\ttfamily}

%% Customize memoir section header
\counterwithout{section}{chapter}
\counterwithout{figure}{chapter}

%% --------- START MEMOIR GEOMETRY CODE ---------------------
\setlrmargins{*}{*}{2} % 2 if worksheet
\setulmargins{*}{*}{1.5}
%\settypeblocksize{7.5in}{*}{0.618}
\checkandfixthelayout
%% --------- END MEMOIR GEOMETRY CODE -----------------------
