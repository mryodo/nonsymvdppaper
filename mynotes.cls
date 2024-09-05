% ================================= %
% ========= version control ======= %

\def\fileversion{1.0}
\def\filedate{2023/05/22}

% ========= version control ======= %
% ================================= %



% ================================= %
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mynotes}[\filedate\space Version \fileversion\space by
  @mryodo]
% ================================= %


% ================================= %
\RequirePackage{ifthen}
% ================================= %



% ================================= %
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass[10pt]{article}
% ================================= %



% ================================= %
% =========== MakeTitle =========== %

      % e-Mail
      \RequirePackage{authblk}
      \newcommand*{\email}[1]{\normalsize\href{mailto:#1}{\nolinkurl{#1}} } 

      % author and affiliation styling
      \renewcommand*{\Authsep}{ \( \color{black} \bullet \) }
      \renewcommand*{\Authand}{ \( \color{black} \bullet \) }
      \renewcommand*{\Authands}{\( \color{black} \bullet \) }
      \renewcommand*{\Affilfont}{\small\normalfont\it\color{black}}
      \renewcommand*{\Authfont}{\bfseries\color{rwth-blue}}    % make author names boldface    
      \setlength{\affilsep}{0.2em}  

      % Abstract definition
      \def\@abstract{}
      \renewcommand\abstract[1]{%
      \gdef\@abstract{ #1}}

      \def\@keywords{}
      \newcommand\keywords[1]{%
      \gdef\@keywords{ #1}}


      \def\@maketitle{%
            {\linespread{0.8}
            {\Large\noindent\ignorespaces\bf\@title\par\vspace{10pt}}
            {\noindent\ignorespaces\@author\par}}
            \vspace{10pt}
            {\linespread{0.8} \noindent \footnotesize \textbf{Abstract:} \@abstract\par}
            \vspace{5pt}
            {\linespread{0.8}\noindent \footnotesize \textbf{Keywords:} \@keywords\par}
            \vspace{15pt}
      }

% =========== MakeTitle =========== %
% ================================= %





% ================================= %
\RequirePackage{marginnote,sidenotes,fancyhdr,geometry, setspace}
\RequirePackage{amsfonts, amsmath, amssymb, amsthm}
\RequirePackage{thmtools}
\RequirePackage{titlesec}
%\RequirePackage[onehalfspacing]{setspace}
\RequirePackage[usenames, dvipsnames]{xcolor}
\RequirePackage[many]{tcolorbox}
% ================================= %




% ================================= %
% ========= allow a4paper ========= %
      \setlength{\textwidth}{\paperwidth}
      \addtolength{\textwidth}{-2in}
      \setlength{\oddsidemargin}{0pt}
      \setlength{\evensidemargin}{0pt}

      \setlength{\headheight}{15pt}
      \setlength{\headsep}{15pt}
      \setlength{\topmargin}{0in}
      \addtolength{\topmargin}{-\headheight}
      \addtolength{\topmargin}{-\headsep}
      \setlength{\footskip}{29pt}
      \setlength{\textheight}{\paperheight}
      \addtolength{\textheight}{-2.2in}

      \setlength{\marginparwidth}{.5in}
      \setlength{\marginparsep}{5pt}


      \geometry{paperheight=11.7in,paperwidth=8.3in,                   %fix paperwidth and height.
            marginparsep=.02\paperwidth,marginparwidth=.2\paperwidth,
            inner=.1\paperwidth,voffset=0in,headheight=.02\paperheight,
            headsep=.13\paperheight,footskip=20pt,
            textheight=.9\paperheight,textwidth=.63\paperwidth}
% ========= allow a4paper ========= %
% ================================= %


% ================================= %
% =========== Fonts =============== %
      %\usepackage[T1]{fontenc}     
      %\usepackage{lmodern,mathrsfs}
      \usepackage{cmbright}
      % \usepackage{fontspec}
     % \setmainfont[Scale=1.0]{Poppins ExtraLight}
      %\setsansfont[ BoldFont={Poppins Medium}, 
      % ItalicFont={Poppins ExtraLight Italic},
      % BoldItalicFont={Poppins Medium Italic}]{Poppins ExtraLight}
      \usepackage[defaultsans]{comfortaa}
      \usepackage[T1]{fontenc}
      %\usepackage{nunito}
      %\usepackage{lato}
      \renewcommand{\mddefault}{l}
      %\renewcommand{\bfdefault}{b}
      %\usepackage[normalweight=Light]{mdsymbol}

      \makeatletter
      \DeclareMathSizes{\f@size}{11}{9}{9}
      \makeatother
      
      \definecolor{cadet}{rgb}{0.33, 0.41, 0.47}
      \everymath{\color{jet}}


      %\let\mathcal\undefined
      %\DeclareMathAlphabet{\mathcal}{OMS}{cmsy}{m}{n}
% =========== Fonts =============== %
% ================================= %

% ================================= %
% =========== Colors ============== %
      \definecolor{black4}{rgb}{0.11764705882352941, 0.11764705882352941, 0.1803921568627451}
      \definecolor{newwhite}{rgb}{0.8509803921568627, 0.8784313725490196, 0.9333333333333333}
      \definecolor{newred}{rgb}{0.9098039215686274, 0.6352941176470588, 0.6862745098039216}
      \definecolor{newcerulean}{rgb}{0.5882352941176471, 0.803921568627451, 0.984313725490196}
      \definecolor{newgreen}{rgb}{0.6705882352941176, 0.9137254901960784, 0.7019607843137254}
      \definecolor{newteal}{rgb}{ 0.6039215686274509, 0.8, 0.7686274509803922,}
      \definecolor{newpeach}{rgb}{0.9725490196078431, 0.7411764705882353, 0.5882352941176471}
      \definecolor{newflam}{rgb}{0.9490196078431372, 0.803921568627451, 0.803921568627451}
      \definecolor{rwth-blue}{HTML}{DE5A02}
      \definecolor{jet}{HTML}{333232}
      \definecolor{peach}{HTML}{FCDE9C}
      \definecolor{cerulean}{HTML}{A7C6DA}
      \definecolor{liberty}{HTML}{5158BB}
      \definecolor{greensheen}{HTML}{68B0AB}

      \input{rwth-color.sty}



% =========== Colors ============== %
% ================================= %




% ================================= %
% =========== Theorems ============ %

\newlength{\spacelength}
\settowidth{\spacelength}{\normalfont\,}

      \declaretheoremstyle[
      headfont={\color{jet} \small},
      notefont={\normalfont \color{jet} \bfseries},
      bodyfont={\normalfont},
      headpunct={\relax},%\newline,
      headformat={%
            \makebox[0pt][r]{\NAME\ \NUMBER\hspace{\marginparsep}}\hskip-\spacelength{\normalsize\NOTE}},
      ]{theorem}

      \tcolorboxenvironment{theorem}{
      boxrule=0pt,
      boxsep=0pt,
      colback={white!50!rwth-magenta},
      enhanced jigsaw, 
      borderline west={3pt}{0pt}{rwth-mag enta},
      sharp corners,
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4
      }

      \theoremstyle{theorem}
      \newtheorem{thm}{Th}
      \tcolorboxenvironment{thm}{
      boxrule=0pt,
      boxsep=0pt,
      colback={white!70!rwth-blue},
      enhanced jigsaw, 
      borderline west={3pt}{0pt}{rwth-blue},
      sharp corners,
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4
      }
      \renewcommand{\thethm}{\Roman{Chapcounter}.\thesection.\arabic{thm}}

      \declaretheorem[style=theorem]{theorem}
      \renewcommand{\thetheorem}{\Roman{Chapcounter}.\thesection.\arabic{theorem}}
    
      \let\proof\relax
      \let\endproof\relax
      \declaretheoremstyle[
      headfont={\color{jet} \small},
      notefont={\normalfont},
      bodyfont={\normalfont},
      headpunct={\relax},
      headformat={%
            \makebox[0pt][r]{\NAME\hspace{\marginparsep}}\hskip-\spacelength{\NOTE}},
      ]{proof}

      \tcolorboxenvironment{proof}{
      boxrule=0pt,
      boxsep=0pt,
      blanker,
      borderline west={3pt}{0pt}{rwth-petrol},
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4
      }
      \renewcommand{\qedsymbol}{\textcolor{greensheen}{\ensuremath{\blacksquare}}}


      \declaretheoremstyle[
      headfont={\color{jet} \small},
      notefont={\normalfont},
      bodyfont={\normalfont},
      headpunct={\relax},
      headformat={%
            \makebox[0pt][r]{\NAME\hspace{\marginparsep}}\hskip-\spacelength{\NOTE}},
      ]{corollary}

      \tcolorboxenvironment{corollary}{
      boxrule=0pt,
      boxsep=0pt,
      blanker,
      borderline west={3pt}{0pt}{rwth-orange},
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4
      }
      \declaretheorem[style=corollary]{Corollary}

      \declaretheoremstyle[
      headfont={\color{jet} \itshape},
      notefont={\normalfont},
      bodyfont={\normalfont},
      headpunct={\relax},
      headformat={%
            \makebox[0pt][r]{\NAME\hspace{\marginparsep}}\hskip-\spacelength{\NOTE}},
      ]{claim}

      \declaretheorem[
      style=proof,
      qed=\qedsymbol]{proof}

      \declaretheorem[style=claim]{Intuition}

      \theoremstyle{theorem}
      \newtheorem{ques}{QUES}
      \tcolorboxenvironment{ques}{
      boxrule=0pt,
      boxsep=0pt,
      blanker,
      borderline west={3pt}{0pt}{jet},
      sharp corners,
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4,
      }

      \theoremstyle{theorem}
      \newtheorem{definition}{Def.}
      \tcolorboxenvironment{definition}{
      boxrule=0pt,
      boxsep=0pt,
      colback={white!70!rwth-turquoise},
      enhanced jigsaw, 
      borderline west={3pt}{0pt}{rwth-turquoise},
      sharp corners,
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4,
      }

      \theoremstyle{theorem}
      \newtheorem{lemma}{Lem}
      \tcolorboxenvironment{lemma}{
      boxrule=0pt,
      boxsep=0pt,
      blanker,
      borderline west={3pt}{0pt}{rwth-bordeaux},
      before skip=10pt,
      after skip=10pt,
      sharp corners,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4,
      }
      \renewcommand{\thelemma}{\thesection.\arabic{lemma}}


      \theoremstyle{theorem}
      \newtheorem{remark}{Rem}
      \tcolorboxenvironment{remark}{
      boxrule=0pt,
      boxsep=0pt,
      blanker,
      borderline west={3pt}{0pt}{jet},
      before skip=10pt,
      after skip=10pt,
      sharp corners,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4,
      }
      \renewcommand{\theremark}{\thesection.\arabic{remark}}

            

      \theoremstyle{corollary}
      \newtheorem{corollary}{Corollary}

      \theoremstyle{claim}
      \newtheorem{intu}{Intuition}

      \theoremstyle{claim}
      \newtheorem{solu}{Solution}

      %\theoremstyle{claim}
      %\newtheorem{remark}{Remark}
      
      \theoremstyle{claim}
      \newtheorem{proposition}{Prop.}
      \theoremstyle{claim}
      \newtheorem{conjecture}{Conj.}

      \theoremstyle{claim}
      \newtheorem{example}{Example}
      \tcolorboxenvironment{example}{
      boxrule=0pt,
      boxsep=0pt,
      blanker,
      borderline west={3pt}{0pt}{rwth-green},
      sharp corners,
      before skip=10pt,
      after skip=10pt,
      left=5pt,
      right=5pt,
      breakable,
      colupper=black4,
      }

% =========== Theorems ============ %
% ================================= %




% ================================= %
% ============ Margins ============ %


\newtcolorbox{story}[1][]{
  width=0.35\textwidth,
  breakable,
  colframe=rwth-blue,
  colback=rwth-blue!10
  #1
}

      \renewcommand*{\raggedleftmarginnote}{{\color{jet} \noindent}}
      \renewcommand*{\raggedrightmarginnote}{{\color{jet} \noindent}}
      \newcommand{\mn}[1]{\textsuperscript{\thesidenote}{}\marginnote{\begin{story} \color{jet} \textsuperscript{\thesidenote}{}\itshape{\setstretch{0.5}\footnotesize #1 }\end{story}\refstepcounter{sidenote}}}
      \newcommand{\en}[1]{\marginnote{\footnotesize{#1}}}
      \newcommand{\lec}[2]{{\setlength{\marginparwidth}{.07\paperwidth}\reversemarginpar\marginnote{\centering\footnotesize{\textsf{\bfseries #1}}\\#2}}}
      \newcommand{\sn}[1]{\sidenote{\itshape\footnotesize #1}}
      \newcommand{\mnl}[1]{\textsuperscript{\thesidenote}{}\marginnote{\color{jet} \begin{story}\textsuperscript{\thesidenote}{} #1\end{story}}\refstepcounter{sidenote}}
      \newcommand{\mnln}[1]{\marginnote{\color{jet}  \begin{story}#1\end{story}}\refstepcounter{sidenote}}
% ============ Margins ============ %
% ================================= %





% ================================= %
% ============ Sections =========== %
\newcounter{Chapcounter}
\newcommand\showmycounter{\addtocounter{Chapcounter}{1}\themycounter}
%\titlespacing*{\section}{-2.5cm}{-0.5\baselineskip}{-1.25\baselineskip}      
%\titlespacing*{\chapter}{-0.5cm}{-0.5\baselineskip}{-1.25\baselineskip}

\newcommand{\colorchapter}[1]{%
      \hspace*{-2cm}%
      \begin{mybox4}{\Roman{Chapcounter}}
            \vspace{-2pt}%\color{white}
            \color{jet}\bfseries \large #1
      \end{mybox4}
}
\newcommand{\colorchapternew}[1]{%
      \begin{mybox3}{\Roman{Chapcounter}}
            \vspace{-2pt}\color{white}\bfseries \large #1
      \end{mybox3}
}
\newcommand{\chapter}[1] 
{ {    
  \addtocounter{Chapcounter}{1} 
  %\Large \underline{\textbf{ \color{blue} Chapter \theChapcounter: ~#1}} 
  \vspace*{1cm}\colorchapter{#1}
  }   
  \addcontentsline{toc}{section}{ \hspace{-25pt}Chapter:~\Roman{Chapcounter}~~ #1}    
}

\titleformat{name=\section, numberless}
 {}
{}
{0pt}
{\vspace{10pt}\colorchapternew}


      \newtcolorbox{mybox4}[2][]{%
      width = \textwidth +2.5cm,
      height = 0.9cm,
      enhanced,
      colback=white,
      colframe=rwth-blue,
      boxrule=0pt,
      leftrule=2.5cm,
      enlarge left by=-2.0cm-\@totalleftmargin,
      overlay unbroken and first ={%
      \node[rotate=00,
            minimum width=2.5cm,
            %anchor=south,
            font=\large\bfseries,
            xshift=2cm,
            white]
      at (frame.west) {#2};
      }
      }



      \newtcolorbox{mybox}[2][]{%
            width = \textwidth +2.5cm,
            height = 0.9cm,
            enhanced,
            colback=jet,
            colframe=rwth-blue,
            boxrule=0pt,
            leftrule=2.5cm,
            enlarge left by=-2.0cm-\@totalleftmargin,
            overlay unbroken and first ={%
            \node[rotate=00,
                  minimum width=2.5cm,
                  %anchor=south,
                  font=\large\bfseries,
                  xshift=2cm,
                  white]
            at (frame.west) {#2};
            }
      }


      \newtcolorbox{mybox3}[2][]{%
            width = \textwidth +2.5cm,
            height = 0.9cm,
            enhanced,
            colback=jet,
            colframe=rwth-blue,
            boxrule=0pt,
            leftrule=2.5cm,
            enlarge left by=-1.5cm-\@totalleftmargin,
            overlay unbroken and first ={%
            \node[rotate=00,
                  minimum width=2.5cm,
                  %anchor=south,
                  font=\large\bfseries,
                  xshift=2cm,
                  white]
            at (frame.west) {#2};
            }
      }

      \newtcolorbox{mybox2}[2][]{%
      enhanced,
      colback=white,
      colframe=rwth-blue,
      boxrule=0pt,
      leftrule=0cm,
      enhanced jigsaw, 
      borderline west={3pt}{0pt}{rwth-blue},
      height=0.75cm, 
}

      \titleformat{name=\section}[block]
      {}
      {}
      {0pt}
      {
      \colorsection
      }
      %\titlespacing*{\section}{-2.5cm}{-0.5\baselineskip}{-1.25\baselineskip}
      \titlespacing*{\section}{-0.5cm}{-0.5\baselineskip}{-1.25\baselineskip}

     % \newcommand{\colorsection}[1]{%
     %       \begin{mybox}{\thesection}
     %             \vspace{-2pt}\color{white}\bfseries #1
     %       \end{mybox}
     % }
     \newcommand{\colorsection}[1]{%
     \setlength{\parskip}{0pt}
     \begin{mybox2}{\thesection}
           \vspace{-2pt}\color{black}\bfseries \thesection.~#1
      \end{mybox2}
      \setlength{\parskip}{7pt}
      }

      %\titleformat{name=\chapter}[block]
      %{}
      %{}
      %{0pt}
      %{\colorchapter}
      %\titlespacing*{\section}{-2.5cm}{-0.5\baselineskip}{-1.25\baselineskip}      
      %\titlespacing*{\chapter}{-0.5cm}{-0.5\baselineskip}{-1.25\baselineskip}

%     \newcommand{\colorchapter}[1]{%
%            \begin{mybox}{\thechapter}
%                  \vspace{-2pt}\color{white}\bfseries #1
%            \end{mybox}
%      }
     %\newcommand{\colorsection}[1]{%
     %\begin{mybox2}{\thesection}
     %      \vspace{-2pt}\color{black}\bfseries \thesection.~#1
     % \end{mybox2}
      %}

      \titleformat{name=\subsection}[block]
      {}
      {}
      {0pt}
      {\colorsubsection}
      \titlespacing*{\subsection}{0cm}{0.5cm}{0cm}


      \newcommand{\colorsubsection}[1]{%
                  \color{rwth-blue}\bfseries \thesubsection \; #1
      }

      \titleformat{name=\subsubsection}[block]
      {}
      {}
      {0pt}
      {\colorsubsubsection}
      \titlespacing*{\subsubsection}{0cm}{0cm}{0cm}


      \newcommand{\colorsubsubsection}[1]{%
                  \color{rwth-blue}\bfseries \thesubsubsection \; #1
      }

      \renewcommand{\thesection}{\Roman{section}} 
      \renewcommand{\thesubsection}{\thesection.\Roman{subsection}}
      \renewcommand{\thesubsubsection}{\thesubsection.\Roman{subsubsection}}


      \RequirePackage[font={small}, figurename=Figure, labelfont={bf,color=rwth-blue}]{caption}

% ============ Sections =========== %
% ================================= %


\renewcommand{\labelitemi}{$\diamondsuit$}
\usepackage{enumitem}
\setlength\itemsep{-1.5em}
\setitemize{itemsep=3pt,topsep=3pt}



\RequirePackage[colorlinks=true
,urlcolor=rwth-purple
,anchorcolor=rwth-purple
,citecolor=rwth-purple
,filecolor=rwth-purple
,linkcolor=rwth-purple
,menucolor=rwth-purple
,linktocpage=true,
      breaklinks,
  linktoc=section,
  linkcolor=rwth-purple,
  linkbordercolor=rwth-purple,
  citecolor=rwth-purple,
  urlcolor=rwth-purple,
]{hyperref}
\RequirePackage[capitalize, nameinlink]{cleveref}
\crefdefaultlabelformat{\color{rwth-purple}#1#2#3}

\crefname{thm}{theorem}{theorems}
\crefname{section}{section}{sections}
\crefname{subsection}{subsection}{subsections}
\Crefname{thm}{Theorem}{Theorems}
\Crefname{section}{Section}{Sections}
\Crefname{subsection}{Subsection}{Subsections}
\Crefname{figure}{Figure}{Figures}
\crefformat{equation}{\textup{#2(#1)#3}}
\crefrangeformat{equation}{\textup{#3(#1)#4--#5(#2)#6}}
\crefmultiformat{equation}{\textup{#2(#1)#3}}{ and \textup{#2(#1)#3}}
{, \textup{#2(#1)#3}}{, and \textup{#2(#1)#3}}
\crefrangemultiformat{equation}{\textup{#3(#1)#4--#5(#2)#6}}%
{ and \textup{#3(#1)#4--#5(#2)#6}}{, \textup{#3(#1)#4--#5(#2)#6}}{, and \textup{#3(#1)#4--#5(#2)#6}}

\Crefformat{equation}{#2Equation~\textup{(#1)}#3}
\Crefrangeformat{equation}{Equations~\textup{#3(#1)#4--#5(#2)#6}}
\Crefmultiformat{equation}{Equations~\textup{#2(#1)#3}}{ and \textup{#2(#1)#3}}
{, \textup{#2(#1)#3}}{, and \textup{#2(#1)#3}}
\Crefrangemultiformat{equation}{Equations~\textup{#3(#1)#4--#5(#2)#6}}%
{ and \textup{#3(#1)#4--#5(#2)#6}}{, \textup{#3(#1)#4--#5(#2)#6}}{, and \textup{#3(#1)#4--#5(#2)#6}}

\crefdefaultlabelformat{#2\textup{#1}#3}

\makeatletter
\def\formatout#1{\hbox{\hskip1sp\m@th\llap{%
    \normalcolor\small \color{jet!50!white}(Eqn.~#1) \hspace{-1.5cm}}}}
\let\oldmaketag@@@\maketag@@@
\def\oldtagform@#1{\oldmaketag@@@{\ignorespaces#1\unskip\@@italiccorr}}
\renewcommand{\eqref}[1]{\textup{\oldtagform@{\ref{#1}}}}
\def\maketag@@@#1{\formatout{#1}}
\renewcommand\tagform@[1]{\maketag@@@{\ignorespaces#1\unskip\@@italiccorr}}
\makeatother

\usepackage{algorithm}% http://ctan.org/pkg/algorithms
\usepackage{algpseudocode}

\usepackage{pgfplots}

\usetikzlibrary{arrows.meta}
\usetikzlibrary{backgrounds}
\usepgfplotslibrary{patchplots}
\usepgfplotslibrary{fillbetween}
\pgfplotsset{%
     layers/standard/.define layer set={%
         background,axis background,axis grid,axis ticks,axis lines,axis tick labels,pre main,main,axis descriptions,axis foreground%
     }{
         grid style={/pgfplots/on layer=axis grid},%
         tick style={/pgfplots/on layer=axis ticks},%
         axis line style={/pgfplots/on layer=axis lines},%
         label style={/pgfplots/on layer=axis descriptions},%
         legend style={/pgfplots/on layer=axis descriptions},%
         title style={/pgfplots/on layer=axis descriptions},%
         colorbar style={/pgfplots/on layer=axis descriptions},%
         ticklabel style={/pgfplots/on layer=axis tick labels},%
         axis background@ style={/pgfplots/on layer=axis background},%
         3d box foreground style={/pgfplots/on layer=axis foreground},%
     },
 }


 \newtcolorbox{tmp}[1][]{
      enhanced,breakable,colframe=jet!50!white,
      colbacktitle=jet!25!white,
      colback=jet!7!white,
      coltitle=jet,
      %colback = white,
      borderline={0.5mm}{0mm}{jet!7!white},
      borderline={0.5mm}{0mm}{jet!50!white,dashed},
      attach boxed title to top center={yshift=-2mm},
      boxed title style={boxrule=0.4pt},
      title=TMP,
      code={\singlespacing}
    }


\counterwithin{figure}{section}



\usepackage[
      color=rwth-blue!10!white,
      bordercolor=rwth-blue,
      linecolor = rwth-blue,
      textwidth = 0.3\columnwidth,
]{todonotes}

\let\emph\relax % there's no \RedeclareTextFontCommand
\DeclareTextFontCommand{\emph}{\bfseries\color{rwth-magenta}}

\usetikzlibrary{calc}

\usepackage{etoolbox}

\usepackage{titletoc}
\contentsuse{algorithm}{loa}
\titlecontents{algorithm}[4.0em]{}{\contentslabel{2.3em}}{}{\titlerule*[1.0pc]{.}\contentspage}{}
\let\listofalgorithms\listoftables
\patchcmd{\listofalgorithms}{\listtablename}{\listalgorithmname}{}{}
\patchcmd{\listofalgorithms}{\listtablename}{\listalgorithmname}{}{}
\patchcmd{\listofalgorithms}{\listtablename}{\listalgorithmname}{}{}
\patchcmd{\listofalgorithms}{lot}{loa}{}{}



\newcommand\blfootnote[1]{%
  \begingroup
  \renewcommand\thefootnote{}\footnote{#1}%
  \addtocounter{footnote}{-1}%
  \endgroup
}
