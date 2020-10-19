" default updatetime 4000ms is not good for async update
let g:signify_vcs_list = ['git']
set updatetime=100

"let g:signify_vcs_cmds = {
"    \ 'git':      'git diff --no-color --no-ext-diff -U0 -- %f',
"    \}

"let g:signify_disable_by_default=0
"仅仅在写入时更新sign
"autocmd User SignifyAutocmds
"       \ exe 'au! signify' | au signify BufWritePost * call sy#start()

nnoremap <leader>gd :SignifyDiff<cr>
nnoremap <leader>gp :SignifyHunkDiff<cr>
nnoremap <leader>gu :SignifyHunkUndo<cr>

" hunk jumping
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)

" hunk text object
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
omap ac <plug>(signify-motion-outer-pending)
xmap ac <plug>(signify-motion-outer-visual)
