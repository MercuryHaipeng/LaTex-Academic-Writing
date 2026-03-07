% 该包适用于LaTeX2e版本
\NeedsTeXFormat{LaTeX2e}
% 匹配类文件名，显示包的名称，并提供类的描述
\ProvidesClass{CV}[2026/03/05 My custom CV class]

\LoadClass[11pt]{article}

\RequirePackage{xcolor}
\RequirePackage{titlesec}

\titleformat{\section}
    {\bfseries\Large\scshape\raggedright\color{blue}} % 格式
    {} % 标签
    {0em} % 间距
    {} % 前缀
    [\titlerule] % 后缀
    
\titleformat{\subsection}
    {\large\scshape\raggedright} % 格式
    {} % 标签
    {0em} % 间距
    {} % 前缀
    [\titlerule] % 后缀

% 定义一个新的命令(教育经历)来显示日期，接受两个参数
\newcommand{\datesubsection}[2]{%
    \subsection{#1 \hfill #2}%
}

\newcommand{\name}[1]{%
    \centerline{\Huge{#1}}
}
\newcommand{\contact}[5]{%
    % 让内容整体水平居中(等价于 \centering + 单行)
    \centerline{%  
        % 创建宽度为0的盒子，内容居中对齐(0pt宽度=内容不换行)
        \makebox[0pt][c]{%  
            #1 {\large\textperiodcentered}  % 第1参数+大号居中圆点
            #2 {\large\textperiodcentered}  % 第2参数+大号居中圆点
            #3 \ #4 \ \ #5%  % 第3参数+空格+第4参数+2个空格+第5参数
        }%
    }%
}