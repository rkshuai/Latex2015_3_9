%%% Created by Zhao Zhen-Hua zhaozhh02@gmail.com 2011.11.29
%% ----------------------------------------------------------------------
%%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%%
%% This file may only be distributed together with a copy of original
%% source files. You may however distribute original source files
%% without such generated files. Copying of this file is authorized
%% only if either:
%% (1) you make absolutely no changes to your copy, including name; OR
%% (2) if you do make changes, you first rename it to some other name.
%%
%% To produce the documentation run the original source files ending
%% with `.dtx' through LaTeX.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{LZUthesisLongTitle}
  [2011/012/01  LZUthesisLongTitle
   document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{LZUthesis}}
\ProcessOptions
\LoadClass{LZUthesis}[2005/11/25]



\renewcommand\maketitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \songti\zihao{-4}
      \LZU@label@classification~
      \CASTunderline[100pt]{\CAST@value@classification}
        \hfill
      \LZU@label@confidential~
      \CASTunderline[100pt]{\CAST@value@confidential}
    \vskip 10pt

      % Requires \usepackage{graphicx}
    \includegraphics[width=5cm]{lzu.eps}\\

    \zihao{3}\LZU@label@thesis
    \vskip 0.1cm
   % \vskip \stretch{5}
    \zihao{4}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}
    \renewcommand\arraystretch{1.3}
    \begin{tabular}{llcrl}
      \LZU@label@titleCn &
      \multicolumn{4}{l} {\CASTunderline[320pt]{\bfseries \zihao{3}\CAST@value@title}}\\
     % &
      % \multicolumn{4}{l} {\CASTunderline[320pt]{\bfseries \zihao{3}\LZU@value@titleadd}}\\
      \LZU@label@titleEn &
      \multicolumn{4}{l} {\CASTunderline[320pt]{\bfseries \zihao{4}\CAST@value@englishtitle}}\\
       &
      \multicolumn{4}{l} {\CASTunderline[340pt]{\bfseries \zihao{4}\LZU@value@englishtitleadd}}\\
      \LZU@label@author &
      \multicolumn{4}{l}{\CASTunderline[320pt]{\CAST@value@author}}\\
      \LZU@label@major &
      \multicolumn{4}{l}{\CASTunderline[320pt]{\CAST@value@major}}\\
      \LZU@label@direction&
      \multicolumn{4}{l}{\CASTunderline[320pt]{\LZU@value@direction}} \\
      \LZU@label@degree &
      \multicolumn{4}{l}{\CASTunderline[320pt]{\CAST@value@degree}} \\
      \LZU@label@advisor &
      \multicolumn{4}{l}{\CASTunderline[320pt]{\CAST@value@advisor}} \\
      \LZU@label@work & 
  %    \LZU@label@datebeginAndEnd 
	  \multicolumn{4}{l}{\CASTunderline[320pt]{\LZU@value@work}}\\
%      \multicolumn{4}{l}{\CASTunderline[320pt]{\CAST@value@advisor}} \\
       \LZU@label@submitdate &
      \multicolumn{4}{l}{\CASTunderline[320pt]{\CAST@value@submitdate}}\\
      \LZU@label@defenddate &
      \multicolumn{4}{l}{\CASTunderline[320pt]{\CAST@value@defenddate}}\\
      \LZU@label@degreeDate &
      \multicolumn{4}{l}{\CASTunderline[320pt]{}}

    \end{tabular}
      \vskip 0.5 cm
      \zihao{5}\LZU@label@schooladdress
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \ifCAST@typeinfo
      \vspace*{\stretch{1}}
      \begin{footnotesize}
        \noindent
        Typeset by \LaTeXe{} at \CTEX@todayold \\
        With package \texttt{LZUthesis} based on \texttt{CASthesis}{-v0.2} of C\TeX{}.ORG\\
        \url{http://blog.sciencenet.cn/home.php?mod=space&uid=117412&do=blog&id=512804}
      \end{footnotesize}
    \fi
    \cleardoublepage
  \fi
}

\endinput
%%
%% End of file `CASthesis.cls'.
