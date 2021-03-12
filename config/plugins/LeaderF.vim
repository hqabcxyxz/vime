" fzf优先
highlight Lf_hl_rgHighlight guifg=#FFFF00 guibg=NONE ctermfg=yellow ctermbg=NONE
highlight Lf_hl_match gui=bold guifg=Red cterm=bold ctermfg=21
highlight Lf_hl_matchRefine  gui=bold guifg=Magenta cterm=bold ctermfg=201

let g:Lf_HideHelp = 1
" 使用leaderf file path的时候不更改目录到path
let g:Lf_NoChdir = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 1
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_DefaultExternalTool='rg'
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'

"  设置Leaderf的根目录
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_RootMarkers = ['.git', '.svn', '.hg', '.project', '.root']

function! LeaderfFileWithWiki(query) abort
    if empty(a:query) && &ft ==? 'vimwiki' && match(expand('%'), expand(g:vimwiki_path)) > -1
        exec "LeaderfFile " . g:vimwiki_path
    else
        exec "LeaderfFile " . a:query
    endif
endfunction

function! LeaderfRgWithWiki(query) abort
    if &ft ==? 'vimwiki' && match(expand('%'), expand(g:vimwiki_path)) > -1
        exec 'Leaderf rg -F -e "" ' . g:vimwiki_path
    else
        exec 'Leaderf rg -F -e ' . leaderf#Rg#visual()
    endif
endfunction

"  设置LeaderF忽略的文件或者目录
autocmd BufNewFile,BufRead X:/yourdir* let g:Lf_WildIgnore={'file':['*.vcproj', '*.vcxproj'],'dir':[]}

if has('nvim')
    let s:cachedir = expand('~/.cache/tags/')
    let s:configdir = expand('~/.config/Leaderf/')
else
    "vim will share same folder with nvim
    if has('win32')
        let s:cachedir = expand('~/AppData/Local/Temp/cache/nvim')
        let s:configdir = expand('~/AppData/Local/nvim')
    else
        let s:cachedir = expand('~/.cache/nvim')
        let s:configdir = expand('~/.config/Leaderf/')
    endif
endif

let g:Lf_PreviewInPopup = 1
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = s:cachedir
let g:Lf_PreviewResult = {
        \ 'File': 0,
        \ 'Buffer': 0,
        \ 'Mru': 0,
        \ 'Tag': 0,
        \ 'BufTag': 1,
        \ 'Function': 1,
        \ 'Line': 1,
        \ 'Colorscheme': 0,
        \ 'Rg': 0,
        \ 'Gtags': 0
        \}

let g:Lf_RgStorePattern="r"
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_Gtagslabel = 'native-pygments'
let g:Lf_GtagsSource = 1

let g:Lf_ShortcutF = '<c-p>'

"noremap <leader>f :LeaderfSelf<cr>
"noremap <leader>fm :LeaderfMru<cr>
"noremap <leader>ff :LeaderfFunction<cr>
"noremap <leader>fb :LeaderfBufTagAll<cr>
"noremap <leader>ft :LeaderfBufTag<cr>
"noremap <leader>fl :LeaderfLine<cr>
"noremap <leader>fw :LeaderfWindow<cr>
"
"nmap <unique> <leader>fr <Plug>LeaderfRgPrompt
"nmap <unique> <leader>fra <Plug>LeaderfRgCwordLiteralNoBoundary
"nmap <unique> <leader>frb <Plug>LeaderfRgCwordLiteralBoundary
"nmap <unique> <leader>frc <Plug>LeaderfRgCwordRegexNoBoundary
"nmap <unique> <leader>frd <Plug>LeaderfRgCwordRegexBoundary
"
"vmap <unique> <leader>fra <Plug>LeaderfRgVisualLiteralNoBoundary
"vmap <unique> <leader>frb <Plug>LeaderfRgVisualLiteralBoundary
"vmap <unique> <leader>frc <Plug>LeaderfRgVisualRegexNoBoundary
"vmap <unique> <leader>frd <Plug>LeaderfRgVisualRegexBoundary

nmap <unique> <leader>fgd <Plug>LeaderfGtagsDefinition
nmap <unique> <leader>fgr <Plug>LeaderfGtagsReference
nmap <unique> <leader>fgs <Plug>LeaderfGtagsSymbol
nmap <unique> <leader>fgg <Plug>LeaderfGtagsGrep

vmap <unique> <leader>fgd <Plug>LeaderfGtagsDefinition
vmap <unique> <leader>fgr <Plug>LeaderfGtagsReference
vmap <unique> <leader>fgs <Plug>LeaderfGtagsSymbol
vmap <unique> <leader>fgg <Plug>LeaderfGtagsGrep

noremap <leader>fgo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fgn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fgp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

"nnoremap <M-f> :call LeaderfFileWithWiki("")<CR>
"nnoremap <M-F> :call LeaderfFileWithWiki($HOME)<CR>
nnoremap <M-s> :call LeaderfRgWithWiki("")<cr>
nnoremap <M-b> :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
nnoremap <M-c> :LeaderfCommand<cr>
nnoremap <M-t> :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
nnoremap <M-T> :LeaderfBufTagAll<cr>
nnoremap ?     :LeaderfLineAll<CR>
nnoremap <M-r> :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
nnoremap <M-w> :<C-U><C-R>=printf("Leaderf! window %s", "")<CR><CR>
