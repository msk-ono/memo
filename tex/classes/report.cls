\ProvidesClass{classes/report}

\LoadClass[a4paper, 11pt, uplatex, dvipdfmx]{jsreport}
\RequirePackage{plautopatch}
\plautopatchdisable{eso-pic}

\usepackage{subfiles}
\usepackage{listings}
\usepackage{plistings}
\usepackage{color}
\usepackage[dvipdfmx]{graphicx}
\usepackage[hyphens]{url}
\urlstyle{same}
\usepackage{siunitx}
\usepackage{enumerate}
\usepackage{paralist}
\usepackage{amsmath,amssymb}
\usepackage{mathtools}
\usepackage{times}
\usepackage[newfloat]{minted}
\usepackage[hang,small,bf,labelsep=space]{caption}
\usepackage[subrefformat=parens]{subcaption}
\usepackage[dvipdfmx]{hyperref}
\usepackage{pxjahyper}
\usepackage{framed}
\usepackage{type1cm}
\usepackage[truedimen,margin=25truemm]{geometry}
\usepackage{pdfpages}
\usepackage[backend=biber,style=ieee]{biblatex}
\usepackage{tcolorbox}
\usepackage{amsthm}
\usepackage{ascmac}
\usepackage{braket}

\newtheoremstyle{mystyle}%   % スタイル名
    {}%                      % 上部スペース
    {}%                      % 下部スペース
    {\normalfont}%           % 本文フォント
    {}%                      % インデント量
    {\bf}%                   % 見出しフォント
    {}%                      % 見出し後の句読点, '.'
    { }%                     % 見出し後のスペース, ' ' or \newline
    {\underline{\thmname{#1}\thmnumber{#2}\thmnote{（#3）} }}% % 見出しの書式 (can be left empty, meaning `normal')
\theoremstyle{mystyle}
\newtheorem{thm}{定理}[section]
\newtheorem{lem}[thm]{補題}
\newtheorem{Def}[thm]{定義}
\newtheorem{cor}[thm]{系}
\newtheorem{eg}[thm]{例}
\newtheorem{ex}[thm]{問題}
\newtheorem{rem}[thm]{注意}
\newtheorem{prop}[thm]{命題}
\makeatletter
\renewenvironment{proof}[1][\proofname]{\par
  \normalfont
  \topsep6\p@\@plus6\p@ \trivlist
  \item[\hskip\labelsep{\bfseries #1}\@addpunct{\bfseries}]\ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}
\renewcommand{\proofname}{(証明)}
\renewcommand{\figurename}{\normalsize Fig.}
\renewcommand{\tablename}{\normalsize Table}

\newcommand{\supp}{\mathrm{supp}}
\newcommand{\code}[1]{\texttt{#1}}

\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{4}

\SetupFloatingEnvironment{listing}{name=Code.}

\addbibresource{references.bib}
\captionsetup{compatibility=false}
