let g:gen_tags#cache_dir = expand('~/.cache/tags')
let g:gen_tags#gtags_default_map = 0
let g:gen_tags#statusline = 1

" 设置快捷键
" 查找调用了待查函数的函数
nnoremap <silent> <leader>fc :cs find c <C-R>=expand('<cword>')<CR><CR>
" 查找被待查函数调用的函数
nnoremap <silent> <leader>fd :cs find d <C-R>=expand('<cword>')<CR><CR>
" 查找符合此egrep模式的符号
nnoremap <silent> <leader>fe :cs find e <C-R>=expand('<cword>')<CR><CR>
" 查找待查文件
nnoremap <silent> <leader>ff :cs find f <C-R>=expand('<cfile>')<CR><CR>
" 寻找定义
nnoremap <silent> <leader>fg :cs find g <C-R>=expand('<cword>')<CR><CR>
" 需要#include了待查文件的文件
nnoremap <silent> <leader>fi :cs find i <C-R>=expand('<cfile>')<CR><CR>
" 查找这个C符号
nnoremap <silent> <leader>fs :cs find s <C-R>=expand('<cword>')<CR><CR>
" 查找文本字符串
nnoremap <silent> <leader>ft :cs find t <C-R>=expand('<cword>')<CR><CR>
