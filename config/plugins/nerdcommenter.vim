" 创建默认映射,1
let g:NERDCreateDefaultMappings = 0

" 在注释号之后加一个空格,1
let g:NERDSpaceDelims = 1

" 多行注释使用紧凑语法,1
let g:NERDCompactSexyComs = 0

" 行注释的分隔符左对齐而非跟随代码缩进,'left'
let g:NERDDefaultAlign = 'left'

" 默认情况下，将语言设置为使用其备用分隔符
" let g:NERDAltDelims_java = 1

" 添加您自己的自定义格式或覆盖默认格式
let g:NERDCustomDelimiters = { 
    \ 'c': { 'left': '/**','right': '*/','leftAlt': '//' },
    \ 'cpp': { 'left': '/**','right': '*/','leftAlt': '//' },
    \ 'h': { 'left': '/**','right': '*/','leftAlt': '//' },
    \ 'py': { 'left': '"""', 'right': '"""','leftAlt': '#'},
    \ 'sh': {'leftAlt': '#'},
    \ 'vim': {'leftAlt': '"'},
    \ }

" 允许注释和反转空行（在注释区域时很有用）
let g:NERDCommentEmptyLines = 1

" 取消注释时启用尾随空白的修剪
let g:NERDTrimTrailingWhitespace = 1

"  启用nerdcommenttoggle检查是否对所有选定行进行了注释 
let g:NERDToggleCheckAllLines = 1

"" 更改快捷键
"注释选定的行
nmap <silent> <Leader>dc <Plug>NERDCommenterComment

" 切换选定行的注释状态,若选定的第一行是注释的,那么所有行将被解注释
nmap <silent> <Leader>d<space> <Plug>NERDCommenterToggle

" 以最简单的方式注释
nmap <silent> <Leader>dm <Plug>NERDCommenterMinimal

"  行注释
nmap <silent> <Leader>dl <Plug>NERDCommenterAlignLeft

" 分别切换选定行的注释状态
nmap <silent> <Leader>di <Plug>NERDCommenterInvert

" 以美观的方式注释多行
nmap <silent> <Leader>ds <Plug>NERDCommenterSexy

" 解除当前行的注释
nmap <silent> <Leader>du <Plug>NERDCommenterUncomment
