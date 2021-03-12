set timeoutlen=100
let g:which_key_map={}


call which_key#register('<Space>', "g:which_key_map")
let g:mapleader = "\<Space>"
let g:maplocalleader = '\<M>'
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <M>      :<c-u>WhichKey '<M>'<CR>


