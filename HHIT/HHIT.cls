% !Mode:: "TeX:UTF-8"
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{YAUthesis}[2019/05/14 v0.2 Yanan University Thesis Template for Bachelor Degree]
\LoadClass[zihao=-4,a4paper,oneside]{ctexbook}
\setmainfont{Times New Roman}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\newif\ifprint\printfalse
\DeclareOption{forprint}{\printtrue}
\ProcessOptions


%------------------------ Page layout ---------------------------------
\RequirePackage{fancyhdr,hyperref}

\hypersetup{pdfencoding=auto}  %%% 王佩科修改
\ifprint
\hypersetup{hidelinks}
\else
\hypersetup{citecolor=magenta,linkcolor=blue}
\fi
\RequirePackage[top=2.5truecm,bottom=2.5truecm,left=2.75truecm,right=2.5truecm,includefoot,xetex]{geometry}    % 页面设置%


\newtoks\Collage         %真学院
\newtoks\Cmajor          %专业班级
\newtoks\Cschoolname      %学院中文名
\newtoks\Stdnum     	%学号
\newtoks\Teacher
\newtoks\abstractCn		%中文摘要名称
\newtoks\abstractEn 	%英文摘要名称



\pagestyle{fancyplain}
\fancyhf{}  %清除以前对页眉页脚的设置
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{-\,\thepage\,-}


\fancypagestyle{plain}
{
	\fancyhead{}                                    % clear all header fields
	\renewcommand{\headrulewidth}{0pt}
	\fancyfoot{}                                    % clear all footer fields
	\fancyfoot[C]{-\,\thepage\,-}
}

%%=====封面=====================  % 王佩科修改

\newcommand{\@EnTitle}{}
\newcommand{\EnTitle}[1]{\renewcommand{\@EnTitle}{\heiti \Huge \textbf {#1}}}

\def\maketitle{%
	\null
	\thispagestyle{empty}%
	%\vspace*{-2cm}
	\begin{center}\leavevmode
		\par
		
		\begin{center}
			\includegraphics[height=2cm]{hhit.png}   
		\end{center}
		%\vspace{2.6cm}
		{\heiti \zihao{2} \textbf{本\ 科\ 毕\ 业\ 设\ 计\ （论\ 文）}\\}
		\vspace{2cm} %插入空白
		{\heiti \Huge \textbf {\@title} \\}
		\vspace{1cm}
		% 暂时没有解决英文标题的换行问题 所以用title内解决
		%\makebox[160mm]{\@EnTitle}
		%    \vspace{4cm}
		\vfill\vfill\vfill
		{\songti\zihao{4}
			\begin{center}
				\makebox[30mm][s]{学院:} \underline{\makebox[87mm][c]{\heiti\zihao{4}\the\Collage}}\\
				\vskip0.4cm
				\makebox[30mm][s]{专业班级:} \underline{\makebox[87mm][c]{\heiti\zihao{4}\the\Cmajor}}\\
				\vskip0.4cm
				\makebox[30mm][s]{学生姓名:} \underline{\makebox[32mm][c]{\heiti\zihao{4}\@author}} 
				\makebox[20mm][s]{学号:} \underline{\makebox[32mm][c]{\heiti\zihao{4}\the\Stdnum}}\\
				\vskip0.4cm
				\makebox[30mm][s]{指导老师:} \underline{\makebox[87mm][c]{\heiti\zihao{4}\the\Teacher}} \\
			\end{center}
		}
		\vspace{3.2cm}
		\@date
		\par
	\end{center}
}


\usepackage{tikz} 
\usetikzlibrary{calc} 



%------------------------ Abstract & Keywords -------------------------
\newcommand\cnabstractname{\the\abstractCn} 
\newcommand\enabstractname{\the\abstractEn}
\newcommand\cnkeywords[1]{ {\noindent\heiti\zihao{-4}\cnkeywordsname: }#1}
\newcommand\cnkeywordsname{关键词}
\newcommand\enkeywords[1]{ {\noindent\bfseries\zihao{-4}\enkeywordsname: }#1}
\newcommand\enkeywordsname{Key words}


\newenvironment{cnabstract}{
	\newpage
	\chapter[\cnabstractname]{{\cnabstractname}}   %%%终于解决了书签乱码的问题 2005-04-12.huangzh
	\songti\zihao{-4}
	\@afterheading}
{\par}

\newenvironment{enabstract}{
	\newpage
	\chapter[\enabstractname]{\enabstractname}
	\songti\zihao{-4}
	\@afterheading}
{\par}

%%------------------------常用宏包-----------------------------------
\RequirePackage{amsmath,amssymb}
\usepackage{type1cm}
\RequirePackage[amsmath,thmmarks]{ntheorem}% AMSLaTeX宏包.
\RequirePackage{bm}		%加入bm宏包，加入数学粗体
\RequirePackage{graphicx}                 % 图形
\RequirePackage{color,xcolor}             %支持彩色
%\RequirePackage{mathrsfs}   % 不同于\mathcal or \mathfrak 之类的英文花体字体
\RequirePackage{url}
\RequirePackage{enumerate}
\RequirePackage{booktabs} %控制表线 赵驰修改 2019.02
%%-----------------------化学-----------赵驰修改 2019.02--------------- 
\RequirePackage[version=4]{mhchem} %化学方程式 
\RequirePackage{chemfig} %有机化学方程式 
%%-----------------------代码块---------赵驰修改 2019.02---------------
\RequirePackage{listings} % 代码块
\usepackage[linesnumbered,ruled,vlined]{algorithm2e} % 伪代码排版
\lstset{framexleftmargin=5mm, numbers=left, frameshape={RYRYNYYYY}{yny}{yny}{RYRYNYYYY}} % 代码块风格
%%--------------------------------------赵驰修改 2019.05-----------
\RequirePackage{float} %用于固定图片
%%----------------------- Theorems -----------------------------------
\theoremstyle{plain}
\theoremheaderfont{\heiti}
\theorembodyfont{\songti} \theoremindent0em
\theorempreskip{0pt}
\theorempostskip{0pt}
\theoremnumbering{arabic}
%\theoremsymbol{} %定理结束时自动添加的标志
\newtheorem{theorem}{\hspace{2em}定理}[section]
\newtheorem{definition}{\hspace{2em}定义}[section]
\newtheorem{lemma}{\hspace{2em}引理}[section]
\newtheorem{corollary}{\hspace{2em}推论}[section]
\newtheorem{proposition}{\hspace{2em}性质}[section]
\newtheorem{example}{\hspace{2em}例}[section]
\newtheorem{remark}{\hspace{2em}注}[section]

\theoremstyle{nonumberplain}
\theoremheaderfont{\heiti}
\theorembodyfont{\normalfont \rm \songti}
\theoremindent0em \theoremseparator{\hspace{1em}}
\theoremsymbol{$\square$}
\newtheorem{proof}{\hspace{2em}证明}


\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}  %自定义新命令\upcite, 使参考文献引用以上标出现

%%%%%%%-------------------------------------------------
%%%===  suppress extra inter-line spacing in \list environments
\makeatletter \setlength\partopsep{0pt}
\def\@listI{\leftmargin\leftmargini
	\parsep 0pt
	\topsep \parsep
	\itemsep \parsep}
\@listI
\def\@listii {\leftmargin\leftmarginii
	\labelwidth\leftmarginii
	\advance\labelwidth-\labelsep
	\parsep    \z@ \@plus\z@  \@minus\z@
	\topsep    \parsep
	\itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
	\labelwidth\leftmarginiii
	\advance\labelwidth-\labelsep
	\parsep    \z@ \@plus\z@  \@minus\z@
	\topsep    \parsep
	\itemsep   \parsep}
\def\@listiv{\leftmargin\leftmarginiv
	\labelwidth\leftmarginiv
	\advance\labelwidth-\labelsep
	\parsep    \z@ \@plus\z@  \@minus\z@
	\topsep    \parsep
	\itemsep   \parsep}
\def\@listv{\leftmargin\leftmarginv
	\labelwidth\leftmarginv
	\advance\labelwidth-\labelsep
	\parsep    \z@ \@plus\z@  \@minus\z@
	\topsep    \parsep
	\itemsep   \parsep}
\def\@listvi{\leftmargin\leftmarginvi
	\labelwidth\leftmarginvi
	\advance\labelwidth-\labelsep
	\parsep    \z@ \@plus\z@  \@minus\z@
	\topsep    \parsep
	\itemsep   \parsep}
%
% Change default margins for \list environments
\setlength\leftmargini   {2\ccwd} \setlength\leftmarginii
{\leftmargini} \setlength\leftmarginiii {\leftmargini}
\setlength\leftmarginiv  {\leftmargini} \setlength\leftmarginv
{\ccwd} \setlength\leftmarginvi  {\ccwd} \setlength\leftmargin
{\leftmargini} \setlength\labelsep      {.5\ccwd}
\setlength\labelwidth    {\leftmargini}
%
\setlength\listparindent{2\ccwd}
% Change \listparindent to 2\ccwd in \list
\def\list#1#2{\ifnum \@listdepth >5\relax \@toodeep
	\else \global\advance\@listdepth\@ne \fi
	\rightmargin \z@ \listparindent2\ccwd \itemindent \z@
	\csname @list\romannumeral\the\@listdepth\endcsname
	\def\@itemlabel{#1}\let\makelabel\@mklab \@nmbrlistfalse #2\relax
	\@trivlist
	\parskip\parsep \parindent\listparindent
	\advance\linewidth -\rightmargin \advance\linewidth -\leftmargin
	\advance\@totalleftmargin \leftmargin
	\parshape \@ne \@totalleftmargin \linewidth
	\ignorespaces}

\makeatother
%---------------------------------------------------
\newcommand\acknowledgement{\chapter*{\ziju{2}致谢}}

%%% ---- 章节标题设置 ----- %%%%

\CTEXsetup[format={\centering\sffamily}]{chapter}
\CTEXsetup[nameformat={\heiti\zihao{-3}}]{chapter}
\CTEXsetup[titleformat={\heiti\zihao{-3}}]{chapter}
\CTEXsetup[numberformat={\heiti\zihao{-3}}]{chapter}
\CTEXsetup[beforeskip={0pt},afterskip={30pt}]{chapter}
\CTEXsetup[name={, },number={\arabic{chapter}}]{chapter}

\CTEXsetup[format={\flushleft\sffamily\heiti\zihao{4}}]{section}
\CTEXsetup[beforeskip={24pt},afterskip={6pt}]{section}

\CTEXsetup[format={\flushleft\sffamily\heiti\zihao{-4}}]{subsection}
\CTEXsetup[beforeskip={12pt},afterskip={6pt}]{subsection}

\CTEXsetup[format={\flushleft\sffamily\heiti\zihao{-4}}]{subsubsection}
\CTEXsetup[beforeskip={12pt},afterskip={6pt}]{subsubsection}

\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}

%%% ---- 图表标题设置 ----- %%%%
\RequirePackage[labelsep=quad]{caption} %% 序号之后空一格写标题
\captionsetup[table]{textfont=bf}  %%设置表格标题字体为黑体  。2016.06.07
\renewcommand\figurename{\zihao{-4} 图}
\renewcommand\tablename{\bf\zihao{-4} 表} 

%%% ------ 目录设置 ------- %%%%
\ctexset{contentsname={目\qquad 录}}

\RequirePackage{tocloft} 
\renewcommand\cftchapfont{\zihao{4}\bf}
\renewcommand\cfttoctitlefont{\hfill\zihao{-2}\bf}
\renewcommand\cftaftertoctitle{\hfill}

%%===参考文献===%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bibliographystyle{abbrv}        % 参考文献样式,  plain,unsrt,alpha,abbrv,chinesebst 等等
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\graphicspath{{figures/}}        % 图片文件路径
%%%%%%%%%%%%%%%%%%%%%%%---优化图片排版---%%%%%%%%%%%%%%%%%%%%% 赵驰修改 2019.02
\newlength\imagewidth
\setlength\imagewidth{0.45\columnwidth}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\allowdisplaybreaks

\endlinechar `\^^M
\endinput
