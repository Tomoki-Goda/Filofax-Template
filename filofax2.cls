\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{filofax2}[2024/02/13]
%\LoadClass{minimal}
%\LoadClass{article}

\RequirePackage[T1]{fontenc}
\RequirePackage[dvipsnames]{xcolor}
%\RequirePackage[	paperheight=17.1cm,
%paperwidth=9.5cm,
%top=1.1cm,
%headsep=0pt,
%bottom=0.75cm,
%textheight=15.25cm,	
%left=1.4cm,
%right=0.75cm,
%textwidth=7.5cm,
%marginparwidth=1.4cm,
%	marginparheight=16cm,
%marginparsep=0pt,
%hoffset=0in,
%voffset=0in,
%footskip=0pt,]{geometry}
%\RequirePackage{times}
\RequirePackage{tikz}
%\RequirePackage{ragged2e}
%\RequirePackage{ifthen}
%\RequirePackage{marginnote}

%\setlength\arraycolsep{5cm}


%\@titlepagefalse
%\@openrightfalse
\setlength{\lineskip}{2pt}
\setlength{\paperheight}{17.1cm}
\setlength{\paperwidth}{9.5cm}
\setlength{\textwidth}{205pt}
\setlength{\textheight}{15.25cm}
%\setlength{\pdfpageheight}{2\paperheight}
%\setlength{\pdfpagewidth}{2\paperwidth}

\setlength\marginparwidth{1.5cm}
\setlength\marginparsep{0pt}
\setlength\hoffset{-1in}%this plus 1in is the reference point
\setlength\voffset{-1in}%this plus 1in
\setlength\topskip{0.0pt}
\setlength\topmargin{1cm}
\setlength\headsep{0pt}
\setlength\headheight{0pt}

\newlength{\top@pos}
\setlength\top@pos{0pt}
\addtolength\top@pos{\topmargin}
\addtolength\top@pos{\headheight}
\addtolength\top@pos{\headsep}

%\setlength\headheight{15pt}
\setlength\oddsidemargin{\marginparwidth}%space from the margin
\addtolength\marginparwidth{\marginparsep}
%\setlength\evensidemargin{25pt}
\setlength\evensidemargin{\paperwidth}
\addtolength\evensidemargin{-\textwidth}
\addtolength\evensidemargin{-\marginparwidth}
\addtolength\evensidemargin{-\marginparsep}


\newcommand{\today}{%
	\relax\ifcase\month\or
	January\or February\or March\or April\or May\or June\or
	July\or August\or September\or October\or November\or December\fi
	\space\number\day, \number\year}

%\geometry{top=0.75in,bottom=0.75in,left=0.75in, right=0.75in}
\newlength{\normal@size}
%\if@compatibility
\setlength\normal@size{9pt}
\newcommand\@ptsize{}
%\else
\DeclareOption{10pt}{
	\renewcommand\@ptsize{0}
	\setlength\normal@size{10pt}
}
%\fi
\DeclareOption{11pt}{
	\renewcommand\@ptsize{1}
	\setlength\normal@size{11pt}
}
\DeclareOption{12pt}{
	\renewcommand\@ptsize{2}
	\setlength\normal@size{12pt}
}

\DeclareOption{twoside}{
	\@twosidetrue
	\@mparswitchtrue
	}
	  

\ProcessOptions\relax
%\if@twoside
%\def\ps@headings{%
%	\let\@oddfoot\@empty\let\@evenfoot\@empty
%	\def\@evenhead{\thepage\hfil\slshape\leftmark}%
%	\def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
%	\let\@mkboth\markboth
%	}%
%\else
%\def\ps@headings{%%
%	\let\@oddfoot\@empty
%	\def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
%	\let\@mkboth\markboth
%	}
%\fi

%\ExecuteOptions{option list}\ProcessOptions\relax.
%\PassOptionsToPackage{option list}{package name}



%plain TeX
%\newdimen{\normal@sizeii}
%\normal@sizeii=\normal@size


\renewcommand{\normalsize}{
	\fontsize{\normal@size}{1.1\normal@size}\selectfont
}
	%\advance \normal@size by -3pt
\newcommand{\small}{
	\fontsize{0.9\normal@size}{0.9\baselineskip\normal@size}\selectfont
}
\newcommand{\footnotesize}{
	\fontsize{0.8\normal@size}{0.8\baselineskip\normal@size}\selectfont
}
\newcommand{\scriptsize}{
	\fontsize{0.7\normal@size}{0.7\baselineskip\normal@size}\selectfont
}
\newcommand{\tiny}{
	\fontsize{0.6\normal@size}{0.6\baselineskip\normal@size}\selectfont
}

\newcommand{\large}{
	\fontsize{1.1\normal@size}{1.1\baselineskip\normal@size}\selectfont
}
\newcommand{\Large}{
	\fontsize{1.25\normal@size}{1.25\baselineskip\normal@size}\selectfont
}
\newcommand{\huge}{
	\fontsize{2\normal@size}{2\baselineskip\normal@size}\selectfont
}
\newcommand{\Huge}{
	\fontsize{2.5\normal@size}{2.5\baselineskip\normal@size}\selectfont
}

\newcommand{\bf}{\fontseries{b}\selectfont}
\newcommand{\mf}{\fontseries{m}\selectfont}
\newcommand{\it}{\fontshape{it}\selectfont}
\newcommand{\sl}{\fontshape{sl}\selectfont}
\newcommand{\tt}{\fontfamily{\ttdefault}\fontshape{n}\selectfont}
%\newcommand{\tt}{\fontfamily{cmtt}\fontshape{n}\selectfont}
\newcommand{\rm}{\fontfamily{\rmdefault}\fontshape{n}\selectfont}%{\fontfamily{rm}\fontseries{m}\fontshape{n}\selectfont}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\usefont{enc}{family}{series}{shape}
%  The same as invoking \fontencoding, \fontfamily, \fontseries and \fontshape 
%  with the given parameters, followed by \selectfont
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%\@startsection{name}{level}{indent}{beforeskip}{afterskip}{style}

\setlength\parindent{0in}
%\setlength\linewidth{5pt}

\setlength\arraycolsep{2\p@}
\setlength\tabcolsep{3\p@}
\setlength\arrayrulewidth{.3\p@}
\setlength\doublerulesep{1\p@}
\setlength\tabbingsep{\labelsep}
%\skip\@mpfootins = \skip\footins
\setlength\fboxsep{2\p@}
\setlength\fboxrule{.3\p@}

\setcounter{page}\@ne
\pagenumbering{arabic}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% page environment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{ffpage}[1]{
	%\setlength\parindent{0pt}
	\thispagestyle{empty}
	\advance \top@pos by -0.5\paperheight
	\reversemarginpar \marginpar{
		\tikz {
			\draw[gray!5,<->](0,-0.5\paperheight)--(0,-\top@pos) ;
			\draw[gray!5,<->](-0.75cm,0)--(0.75cm,0);
			\filldraw[gray!15](0mm,64mm) circle(0.05in);
			\filldraw[gray!15](0mm,45mm) circle(0.05in);
			\filldraw[gray!15](0mm,26mm) circle(0.05in);
			
			\filldraw[gray!15](0mm,-26mm) circle(0.05in);
			\filldraw[gray!15](0mm,-45mm) circle(0.05in);
			\filldraw[gray!15](0mm,-64mm) circle(0.05in);
		}
	}
	
	
	%%%%%%%%%%%%%%%%%%%%%%%%%%%
	% Title
	%
	%\ifthenelse{\equal{#1}{}}{}{{\noindent#1#2}\vspace{1mm}\hrule\vspace{2mm}}
	\def\empty{}
	\ifx #1\empty\else
		{\noindent#1}\vspace{1mm}\hrule\vspace{2mm}
	\fi
	%%%%%%%%%%%%%%%%%%%%%%%%%%%
}{\clearpage}

