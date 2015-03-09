%%% Created by Zhao Zhen-Hua zhaozhh02@gmail.com 2011.11.29
%% ----------------------------------------------------------------------
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

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{LZUthesis}
  [2011/012/01  LZUthesis
   document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{CASthesis}}
\ProcessOptions
\LoadClass{CASthesis}[2005/11/25]

\RequirePackage{array}

\AtEndOfPackage{\makeatletter\input{LZUthesis.cfg}\makeatother}
%重新调整正文的高度和宽度
\setlength{\hoffset}{0.46 cm}
\setlength{\textheight}{ 23.1 cm}
\setlength{\voffset}{ -1.35 cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%重新定义空白页，让其只显示页码
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{lzuempty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\fancypagestyle{lzuempty}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
  % \fancyhead[RE]{\small \CAST@value@titlemark}
  %\fancyhead[LO]{\small \leftmark}
  %\rhead{\zihao{-5} ~\CAST@value@title~}%页眉
 % \lhead{\zihao{-5} ~\LZU@value@lzuthesis~}%页脚
 % \fancyhead[LE,RO]{\small ~\CAST@value@title~}
  \fancyfoot[LE,RO]{\zihao{-5} ~\thepage~}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%\setlength{\itemsep}{3pt plus1pt minus2pt}          % 连续items之间的距离.
%\setlength{\floatsep}{1pt plus1pt minus1pt}      % 图形之间或图形与正文之间的距离
%\setlength{\intextsep}{2pt plus 2pt minus 2pt}
%\setlength{\abovecaptionskip}{1pt plus1pt minus1pt} % 图形中的图与标题之间的距离
%\setlength{\belowcaptionskip}{1pt plus1pt minus1pt} % 表格中的表与标题之间的距离
%\setlength{\headsep}{5pt}



%\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}     % 字号设置
%\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont} % 字号设置
%\newcommand{\yichu}{\fontsize{32pt}{\baselineskip}\selectfont}      % 字号设置
%\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}      % 字号设置
%\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}      % 字号设置
%\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}  % 字号设置
%\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}  % 字号设置
%\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}      % 字号设置
%\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}  % 字号设置
%\newcommand{\sectionzihao}{\fontsize{11pt}{\baselineskip}\selectfont}  % 字号设置
%\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}    % 字号设置
%\newcommand{\xiaowuhao}{\fontsize{10pt}{\baselineskip}\selectfont}   % 字号设置
%\newcommand{\liuhao}{\fontsize{8pt}{\baselineskip}\selectfont}  % 字号设置
%\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}    % 字号设置

%\setlength{\baselineskip}{20pt}%设置行间距为20磅
\renewcommand{\baselinestretch}{1.667} %依照文章預設行距增加為 1.15倍

\newcommand\work[1]{\def\LZU@value@work{#1}}
\newcommand\lzuthesis[1]{\def\LZU@value@lzuthesis{#1}}
\newcommand\direction[1]{\def\LZU@value@direction{#1}}
\newcommand\englishtitleadd[1]{\def\LZU@value@englishtitleadd{#1}}
\newcommand\titleadd[1]{\def\LZU@value@titleadd{#1}}

\renewcommand*\tablename{ \zihao{5}\CTEX@tablename }%调整标题的字号
\renewcommand*\figurename{ \zihao{5}\CTEX@figurename}%调整标题的字号



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
    \includegraphics[width=6cm]{lzu.eps}\\

    \zihao{3}\LZU@label@thesis
    \vskip 0.1cm
   % \vskip \stretch{5}
    \zihao{4}
    \def\tabcolsep{1pt}
   \renewcommand{\arraystretch}{1.4}%改变表格的行间距
      \begin{tabular}{ll}
      \LZU@label@titleCn &
       {\CASTunderline[320pt]{\bfseries \zihao{3}\CAST@value@title}}\\
      \LZU@label@titleEn &
      {\CASTunderline[320pt]{\bfseries \zihao{3}\CAST@value@englishtitle}}\\
      \LZU@label@author &
      {\CASTunderline[320pt]{\CAST@value@author}}\\
      \LZU@label@major &
     {\CASTunderline[320pt]{\CAST@value@major}}\\
      \LZU@label@degree &
      {\CASTunderline[320pt]{\CAST@value@degree}} \\
      \LZU@label@direction&
     {\CASTunderline[320pt]{\LZU@value@direction}} \\
      \LZU@label@advisor &
      {\CASTunderline[320pt]{\CAST@value@advisor}} \\
      \LZU@label@work &      
      %\LZU@label@datebeginAndEnd &
      {\CASTunderline[320pt]{\LZU@value@work}}\\
       \LZU@label@submitdate &
      {\CASTunderline[320pt]{\CAST@value@submitdate}}\\
      \LZU@label@defenddate &
      {\CASTunderline[320pt]{\CAST@value@defenddate}}\\
      \LZU@label@degreeDate &
      {\CASTunderline[320pt]{}}
    \end{tabular}

      \vskip 0.5 cm
      \zihao{5}\LZU@label@schooladdress
  \end{center}
  \clearpage

  \if@twoside
   % \thispagestyle{empty}
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

\newcommand\makestatement{
    \newcommand\fifth{0.2\textwidth}
    \newcommand\middlespace{0.08\textwidth}

    \thispagestyle{empty}
    \cleardoublepage
    \baselineskip 22.5pt
    \parskip 0pt

    \begin{center}
        {\bfseries\zihao{3}{原~~创~~性~~声~~明}}
    \end{center}

    本人郑重声明：本人所呈交的学位论文，是在导师的指导下独立进行研究所取得的成果。学位论文中凡引用他人已经发表或未发表的成果、数据、观点等，均已明确注明出处。除文中已经注明引用的内容外，不包含任何其他个人或集体已经发表或撰写过的科研成果。对本文的研究成果做出重要贡献的个人和集体，均已在文中以明确方式标明。

    本声明的法律责任由本人承担。

    \vskip1cm

    \begin{center}
        \begin{tabular*}{\textwidth}{rm{\fifth}lm{\fifth} cm{\fifth}rp{\fifth}lm{\fifth}}
            论\hfill 文\hfill 作\hfill 者\hfill 签\hfill 名 ：&\CASTunderline[\fifth]{} & \hspace{\middlespace} & 日\hfill 期：&\CASTunderline[\fifth]{} 
        \end{tabular*}
    \end{center}

    \vskip2.0cm

    \begin{center}
        {\bfseries\zihao{3}{关于学位论文使用授权的声明}}
    \end{center}

    本人在导师指导下所完成的论文及相关的职务作品，知识产权归属兰州大学。本人完全了解兰州大学有关保存、使用学位论文的规定，同意学校保存或向国家有关部门或机构送交论文的纸质版和电子版，允许论文被查阅和借阅；本人授权兰州大学可以将本学位论文的全部或部分内容编入有关数据库进行检索，可以采用任何复制手段保存和汇编本学位论文。本人离校后发表、使用学位论文或与该论文直接相关的学术论文或成果时，第一署名单位仍然为兰州大学。

    本学位论文研究内容：

    $\square$ 可以公开

    $\square$ 不宜公开，已在学位办公室办理保密申请，解密后适用本授权书。

    （请在以上选项内选择其中一项打“$\surd$”）

    \vskip1cm
    \begin{center}
    \begin{tabular*}{\textwidth}{rm{\fifth}lm{\fifth}cm{\fifth}rp{\fifth}lm{\fifth}}
        论\hfill 文\hfill 作\hfill 者\hfill 签\hfill 名 ：&\CASTunderline[\fifth]{} & \hspace{\middlespace} &  导\hfill 师\hfill 签\hfill 名 ：&\CASTunderline[\fifth]{} \\
        日\hfill 期：&\CASTunderline[\fifth]{} & \hspace{\middlespace} & 日\hfill 期：&\CASTunderline[\fifth]{} 
    \end{tabular*}
    \end{center}

    \clearpage
}

\fancypagestyle{lzu}{%
  \fancyhf{}%
  %\renewcommand{\headrulewidth}{0.4pt}%
  \renewcommand{\footrulewidth}{0pt}%
  % \fancyhead[RE]{\small \CAST@value@titlemark}
  %\fancyhead[LO]{\small \leftmark}
  \rhead{\zihao{-5} ~\CAST@value@title\LZU@value@titleadd~}%页眉
  \lhead{\zihao{-5} ~\LZU@value@lzuthesis~}%页脚
 % \fancyhead[LE,RO]{\small ~\CAST@value@title~}
  \fancyfoot[LE,RO]{\zihao{-5} ~\thepage~}
}

\pagestyle{lzu}


\renewcommand\makeenglishtitle{%
  \cleardoublepage
 % \thispagestyle{fancy}
  \vskip 1 cm
  \begin{center}
    \vspace*{20pt}
      \sf\zihao{-1} \CAST@value@englishtitle
    \vskip \stretch{1}
      \bf\zihao{4} \CAST@value@englishauthor
    \vskip \stretch{1}
      \normalfont\zihao{4} \CAST@label@englishadvisor
    \vskip 3pt
      \normalfont\zihao{4} \CAST@value@englishadvisor
    \vskip \stretch{2}
      \normalfont\normalsize \CAST@value@englishinstitute
    \vskip 30pt
      \normalfont\normalsize \CAST@value@englishdate
    \vskip 20pt
      \it\normalsize \CAST@label@englishstatement
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}


  \renewenvironment{abstract}
  {%
 % \thispagestyle{plain}
  \cleardoublepage
  \vskip 1 cm
  \begin{center}
      {\bfseries \zihao{3}\CAST@value@title\LZU@value@titleadd}
      \vskip 1 cm
      {\bfseries \zihao{3}\CAST@label@abstract}
     \addcontentsline{toc}{chapter}{\textbf{\CAST@label@abstract}}
   \end{center}
  }






\renewenvironment{englishabstract}
  {%\Nchapter{\CAST@value@englishtitle}
  \cleardoublepage
 % \newpage
  \begin{center}
      {\bfseries \zihao{3}\CAST@value@englishtitle \LZU@value@englishtitleadd}
      \vskip 1 cm
      {\bfseries \zihao{3}\CAST@label@englishabstract}
     \addcontentsline{toc}{chapter}{\textbf{\CAST@label@englishabstract}}
    \end{center}
  }



%%http://hi.baidu.com/deyaliu/blog/item/4c986632df16b4220b55a932.html
\renewcommand\chapter{%目的是在章的第一叶显示页眉和页脚
                   \if@openright\cleardoublepage \else\clearpage
                   \fi
                    \thispagestyle{lzu}%手动一次指定
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter
                    }

\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname}%
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }


\endinput
%%
%% End of file `LZUthesis.cls'.
