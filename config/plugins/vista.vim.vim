" 启用悬浮窗预览
let g:vista_echo_cursor_strategy ='floating_win'

let g:vista#renderer#enable_icon = 1
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'coc'

let g:vista_fzf_preview = ['right:50%']
let g:vista_finder_alternative_executives = ['coc']

let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

nnoremap <F3> :Vista!!<CR>
