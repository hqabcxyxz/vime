set foldmethod=manual
set foldlevel=99 " Open all folds
" zuz 通过语法折叠来更新Tex,vim,xml,js,r,php,perl的文件折叠
nnoremap zuz <Plug>(FastFoldUpdate)

" 在保存buffer时更新折叠,而非手动
let g:fastfold_savehook = 1

"
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C','r','R','m','M','n','N']
let g:fastfold_fold_movement_commands = ['zj', 'zk']

"涉及到session问题 可能需要安装Vim-Stay插件


" 超过500行的文件不启用
let g:fastfold_minlines = 500
" 默认情况下仅防止表达式和语法折叠在每个缓冲区更改时进行重新计算.若要防止所有方法都这样做,启用下面
" let g:fastfold_force = 1

let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
"let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1
