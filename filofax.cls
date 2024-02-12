\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{filofax}[]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[]{book}
\RequirePackage{geometry}
\RequirePackage{marginnote}
\RequirePackage{tikz}
\usepackage{xcolor}
\usepackage{ifthen}

\geometry{
	%marginparwidth=
	paperheight=17.1cm,
	paperwidth=9.5cm,
	top=1.1cm,
	headsep=0pt,
	bottom=0.75cm,
	textheight=15.25cm,	
	left=1.4cm,
	right=0.75cm,
	textwidth=7.5cm,
	marginparwidth=1.4cm,
%	marginparheight=16cm,
	marginparsep=0pt,
	hoffset=0in,
	voffset=0in,
	footskip=0pt,
}
%\marginparwidth=1.25cm

\newenvironment{ffpage}[2][\Large]{
%\setlength\parindent{0pt}
\thispagestyle{empty}
\reversemarginpar \marginnote{
	\tikz {
		\draw[gray!5,<->](-0.7cm,0)--(0.7cm,0) ;
		\draw[gray!5,<->](0mm,6.9cm)--(0mm,-8.55cm);
		\filldraw[gray!15](0mm,64mm) circle(0.05in);
		\filldraw[gray!15](0mm,45mm) circle(0.05in);
		\filldraw[gray!15](0mm,26mm) circle(0.05in);
		
		\filldraw[gray!15](0mm,-26mm) circle(0.05in);
		\filldraw[gray!15](0mm,-45mm) circle(0.05in);
		\filldraw[gray!15](0mm,-64mm) circle(0.05in);
	}
}
\ifthenelse{\equal{#1}{}}{}{{\noindent#1#2}\vspace{1mm}\hrule\vspace{2mm}}
}{\clearpage}

