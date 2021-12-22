%=====================================================================
% hw.cls
% Provide hw.cls class
%=====================================================================

%=====================================================================
% Identification
%=====================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hw}[2022/04/01 Homework Class for Math 168, Spring 22]

\LoadClass[letterpaper, 12pt]{report}
%\RequirePackage{jhwmath} Personal style file I use.

\RequirePackage{fancyhdr}
\RequirePackage[top=1in,bottom=1in,left=1in,right=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{empheq}
\RequirePackage{ifthen}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{cleveref}
%\RequirePackage{jhwgraphics} Another personal style file I use.


%=====================================================================
% Commands
%=====================================================================

  \setlength{\headheight}{15pt}
  \lhead{\@author}\chead{\@title}\rhead{\today}
  \lfoot{}\cfoot{\thepage}\rfoot{}
  \pagestyle{fancy}

%\ifx\pdfoutput\undefined                         %LaTeX
%  \RequirePackage[ps2pdf,bookmarks=true]{hyperref}
%  \hypersetup{ %
%    pdfauthor   = {\@author},
%    pdftitle    = {\@title},
%    pdfcreator  = {LaTeX with hyperref package},
%    pdfproducer = {dvips + ps2pdf}
%  }
%\else                                            %PDFLaTeX
%  \RequirePackage[pdftex,bookmarks=true]{hyperref}
%  \hypersetup{ %
%    pdfauthor   = {\@author},
%    pdftitle    = {\@title},
%    pdfcreator  = {LaTeX with hyperref package},
%    pdfproducer = {dvips + ps2pdf}
%  }
%\pdfadjustspacing=1
%\fi

% Set up counters for problems and subsections

\newcounter{ProblemNum}
\newcounter{SubProblemNum}[ProblemNum]

\renewcommand{\theProblemNum}{\arabic{ProblemNum}}
\renewcommand{\theSubProblemNum}{\alph{SubProblemNum}}


\newcommand*{\anyproblem}[1]{\newpage\subsection*{#1}}
\newcommand*{\problem}[1]{\stepcounter{ProblemNum} %
   \anyproblem{Problem \theProblemNum. \; #1}}
\newcommand*{\soln}[1]{\subsubsection*{#1}}
\newcommand*{\solution}{\soln{Solution}}
\renewcommand*{\part}{\noindent\rule{\linewidth}{.2mm}\stepcounter{SubProblemNum} %
  \soln{Part (\theSubProblemNum)}}

% \renewcommand{\theenumi}{(\alph{enumi})}
% \renewcommand{\labelenumi}{\theenumi}
\renewcommand{\theenumi}{\roman{enumi}}

\newtheorem{thm}{Theorem}
\theoremstyle{remark}
\newtheorem{hint}{Hint}
\newtheorem*{hint*}{Hint}

% \def\problemmark{}

% % Typesetting problems

% % \newcommand*{\prob}[1]{\newpage \noindent \textbf{\Large #1}}
% % \newcommand*{\problem}[1]{\stepcounter{ProblemNum} \prob{Problem %
% % \theProblemNum.}}
% % \newcommand*{\soln}[1]{\\ \noindent \textbf{\Large #1}}
% % \newcommand*{\solution}{\soln{Solution}}
% % \renewcommand*{\part}{\\ \noindent \stepcounter{SubProblemNum} %
% % \textbf{\Large Part (\theSubProblemNum)}}

% \newcommand\problem{\@startsection{problem}{1}{\z@}%
%                      {-3.25ex \@plus -1ex \@minus -.2ex}%
%                      {1.5ex \@plus .2ex}%
%                      {\normalfont\large\bfseries}}


