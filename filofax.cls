\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{filofax}[]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
%\LoadClass[]{minimal}
%\LoadClass[]{article}
\LoadClass[]{book}
\RequirePackage{ragged2e}

\RequirePackage{marginnote}
\RequirePackage{tikz}
\RequirePackage{xcolor}
\RequirePackage{ifthen}
%\RequirePackage{booktabs}
%\marginparwidth=1.25cm
\RequirePackage{../Filofax-Template/filofax}


\setlength\parindent{0in}


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

