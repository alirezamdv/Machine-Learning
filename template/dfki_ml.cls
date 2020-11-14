%% AUTHOR: Manuel Meder <manuel.meder@dfki.de>
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dfki_rl}[2017/04/04 DFKI Exercise Solution Template Class]
\LoadClass{article}

\RequirePackage[ngerman]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amssymb}            % Math symbols and functions
\RequirePackage{amsmath}            % Math symbols and functions
\RequirePackage{float}
\RequirePackage{graphicx}           % For floating figures
\RequirePackage[scaled=.92]{helvet} % Used font
\RequirePackage{fancyhdr}           % Freely designable header and footer
\RequirePackage{fancybox}           % Freely designable header and footer
\RequirePackage{calc}
\RequirePackage{tcolorbox}
\RequirePackage[T1,OT1]{fontenc}
\RequirePackage{mathrsfs}
\RequirePackage[pdftex,colorlinks=true,linkcolor=red]{hyperref}
\RequirePackage{changepage}         % http://ctan.org/pkg/changepage
\RequirePackage{xifthen}            % if-then switches
\RequirePackage{caption}            % caption for figures not using figure environment
\RequirePackage{listings}           % To include source code
\RequirePackage{color}

%% Layout
\RequirePackage[top = 2.5cm, bottom = 2.5cm, left = 2.0cm, right = 2.0cm]{geometry}

\tcbuselibrary{breakable}

\definecolor{deepblue}{rgb}{0,0,0.5}
\definecolor{deepred}{rgb}{0.6,0,0}
\definecolor{deepgreen}{rgb}{0,0.5,0}

\newcounter{ctexercisesheet}
\newcounter{ctproblem}

\newenvironment{problem}[1]
{
    \bigskip
    \refstepcounter{ctproblem}      % increment the environment's counter
    \parindent0pt
    \textbf{
        Problem \thectproblem \ (#1)\hfill
    }
    \begin{adjustwidth}{0.3em}{4em}
}
{
    \end{adjustwidth}
    \par
    \bigskip
}
\numberwithin{ctproblem}{section}

% Default fixed font does not support bold face
\DeclareFixedFont{\ttb}{T1}{txtt}{bx}{n}{12} % for bold
\DeclareFixedFont{\ttm}{T1}{txtt}{m}{n}{12}  % for normal

% Python style for highlighting
\newcommand\pythonstyle{
    \lstset{
        language=Python,
        basicstyle=\ttm,
        otherkeywords={self},             % Add keywords here
        keywordstyle=\ttb\color{deepblue},
        emph={MyClass,__init__},          % Custom highlighting
        emphstyle=\ttb\color{deepred},    % Custom highlighting style
        stringstyle=\color{deepgreen},
        frame=single,                     % Any extra options here
        showstringspaces=false,           %
        numbers=left,
        numbersep=5pt,
    }
}

% Python environment
\lstnewenvironment{python}[1][]
{
    \pythonstyle
    \lstset{#1}
}
{
}

% Python for external files
\newcommand\pythonexternal[2][]
{
    {
        \pythonstyle
        \lstinputlisting[#1]{#2}
    }
}

% Python for inline
\newcommand\pythoninline[1]{{\pythonstyle\lstinline!#1!}}

\renewcommand*\labelenumi{\alph{enumi})}

\newcommand{\exsheetheader}[8]{

    \setcounter{ctexercisesheet}{{#1}}
    \setcounter{section}{{#1}}    
    
    \pagestyle{fancy}
    \fancyhf{}
    \setlength{\headwidth}{17.5cm}
    \setlength{\marginparsep}{4cm}
    
    \fancyhead[L]{
        {WS '17/'18} / {03-ME-712.07} / Prof. Dr. Frank Kirchner \\
        \textbf{{Machine Learning for Autonomous Robots}}\\
        Solution of \textbf{group {#3}}: {#5}, {#6}, {#7}, {#8}
    }
    \fancyhead[R]{
        Handed in on: {#2}\\
        %\vspace{2em} \\
        Estimated accumulated time: \textbf{{#4} hours}\\
        Exercise sheet \arabic{ctexercisesheet}
    }
}