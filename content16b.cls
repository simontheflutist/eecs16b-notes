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

%% --------- START MEMOIR HEADER/FOOTER CODE ----------------
\nouppercaseheads
\makepagestyle{sixteen}
\makeevenhead{sixteen}{}{}{\thetitle\ @ \DTMnow}
\makeoddhead{sixteen}{EECS 16B Spring 2020}{}{\thetitle}

\makeevenfoot{sixteen}{\thepage}{}{}
\makeoddfoot{sixteen}{}{}{\thepage}

\makeheadrule{sixteen}{\textwidth}{0.5pt}
\makefootrule{sixteen}{\textwidth}{0.5pt}{0.1in}
\pagestyle{sixteen}
\aliaspagestyle{chapter}{sixteen}
\aliaspagestyle{part}{sixteen}
%% --------- END MEMOIR HEADER/FOOTER CODE   ----------------

%% --------- MISCELLANEOUS MEMOIR CODE ----------------------
% Don't need compilation date in \maketitle.
\date{}
%% --------- END MISCELLANEOUS MEMOIR CODE ------------------
% Backwards compatiblity with legacy question data API
\newenvironment{qunlist}{%
  \setlist[enumerate, 0]{label = \alph*)}
}{%
  \setlist[enumerate, 0]{label = \arabic*.}
}
\newcommand{\qns}[1]{\section{#1}}
\newcommand{\qcontributor}[1]{\relax}
% \qitem is needed as a synonym for item for backwards compatibility.
% In memoir it has but an esoteric purpose inside the epigraph environment,
% so we can safely clobber it.
\renewcommand{\qitem}{\item}


%% Terrible hacks
% circuitikz parser breaks with = in options. need for equality label.
\newcommand*{\eq}{=}
