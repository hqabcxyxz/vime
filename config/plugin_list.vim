" 代码补全插件
"" Plug 'ycm-core/YouCompleteMe', {'do': 'python3 install.py --all'} | Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"" 检索
Plug 'junegunn/fzf.vim'
\ | Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }
\ | Plug 'antoinemadec/coc-fzf',  {'branch': 'release'}
" git插件
"Plug 'tpope/vim-fugitive', {'on': ['Gwrite', 'Gcommit', 'Gread', 'Gdiff', 'Gblame']}
"\ | Plug 'rbong/vim-flog'
"\ | Plug 'airblade/vim-gitgutter'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
"" 注释插件
"Plug 'scrooloose/nerdcommenter'
""更加轻量的注释插件
"Plug 'tyru/caw.vim'
"" 生成注释文档
"Plug 'kkoomen/vim-doge', {'on': 'DogeGenerate'}
"" 数据库
"" Plug 'tpope/vim-dadbod' | Plug 'kristijanhusak/vim-dadbod-ui' | Plug 'kristijanhusak/vim-dadbod-completion'
"" 全局替换插件
"Plug 'brooth/far.vim'
" 主题theme类插件
"Plug 'ajmwagar/vim-deus'
"Plug 'rakr/vim-one'
"Plug 'arcticicestudio/nord-vim'
"Plug 'morhetz/gruvbox'
"Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/forest-night'
"Plug 'srcery-colors/srcery-vim'
"Plug 'hardcoreplayers/oceanic-material'
"Plug 'chuling/ci_dark'
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'mhartington/oceanic-next'
"Plug '986299679/space-vim-theme'
"Plug 'ayu-theme/ayu-vim'
"Plug 'w0ng/vim-hybrid'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'flrnd/candid.vim'
"Plug 'jaredgorski/spacecamp'
"Plug 'bluz71/vim-moonfly-colors'
"Plug 'cormacrelf/vim-colors-github'
"Plug 'arzg/vim-colors-xcode'
"Plug 'sainnhe/sonokai'
"Plug 'sonph/onehalf'
"Plug 'dracula/vim', { 'as': 'dracula'}
Plug 'lifepillar/vim-solarized8'
"" 顶栏和底栏
"Plug 'rbong/vim-crystalline'
" 状态栏
Plug 'itchyny/lightline.vim'
" 彩虹括号
"Plug 'luochen1990/rainbow'
Plug 'kien/rainbow_parentheses.vim'
"" 函数列表
Plug 'liuchengxu/vista.vim', {'on': ['Vista!!', 'Vista']}
"" 自动补全括号
"Plug 'jiangmiao/auto-pairs'
"" 快速包围
"Plug 'tpope/vim-surround'
"" 重复上次的动作
"Plug 'tpope/vim-repeat'
"" 显示清除尾部空格
"Plug 'ntpeters/vim-better-whitespace'
"" 代码段
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
"" 快速选择窗口
Plug 't9md/vim-choosewin',  { 'on': 'ChooseWin' }
" 快速移动
Plug 'easymotion/vim-easymotion', {'on':
   \ [
   \ '<Plug>(easymotion-bd-f)', '<Plug>(easymotion-overwin-f)',
   \ '<Plug>(easymotion-overwin-f2)', '<Plug>(easymotion-bd-jk)',
   \ '<Plug>(easymotion-overwin-line)', '<Plug>(easymotion-bd-w)',
   \ '<Plug>(easymotion-overwin-w)', '<Plug>(easymotion-s)',
   \ ]}
"" 对齐
"Plug 'junegunn/vim-easy-align', {'on': ['EasyAlign', '<Plug>(EasyAlign)']}
" 对齐线
Plug 'Yggdroot/indentLine', {'for': ['c', 'h', 'cpp', 'python', 'go', 'java', 'vim']}
"" 多光标
"Plug 'mg979/vim-visual-multi'
"" csv插件
"" Plug 'chrisbra/csv.vim', {'for': 'csv'}
" 悬浮终端
Plug 'voldikss/vim-floaterm', {'on': ['FloatermNew', 'FloatermToggle']}
"" 笔记插件，支持markdown
"Plug 'vimwiki/vimwiki'
" markdown 预览插件
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug', 'vimwiki'], 'on': 'MarkdownPreview'}
"" 功能很强的折叠插件, zc zo
Plug 'pseewald/vim-anyfold'
" 起始界面
Plug 'mhinz/vim-startify'
"" 翻译插件
"若是coc-translator 好用了 就可以不用这个插件了
"Plug 'voldikss/vim-translator', {'on':
"    \ [
"    \ '<Plug>Translate', '<Plug>TranslateV', '<Plug>TranslateW',
"    \ '<Plug>TranslateWV', '<Plug>TranslateR','<Plug>TranslateRV',
"    \ '<Plug>TranslateX'
"    \ ]}
" tmux相关插件
if  executable("tmux") && strlen($TMUX)
    " tmux与vim窗口间导航
    Plug 'christoomey/vim-tmux-navigator'
    " tmux.conf set -g focus-events on
    Plug 'tmux-plugins/vim-tmux-focus-events'
    " 在tmux和vim之间进行复制与粘贴
    Plug 'roxma/vim-tmux-clipboard'
    " tmux补全插件
    Plug 'wellle/tmux-complete.vim'
endif
"" 关闭buffer而不关闭窗口
"Plug 'rbgrouleff/bclose.vim', {'on': 'Bclose'}
"" latex插件
"Plug 'lervag/vimtex', {'for': 'tex'}
"Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
" 平滑滚动
Plug 'psliwka/vim-smoothie'
"" 在命令行使用linux命令新建文件文件夹重命名当前buffer等
"Plug 'tpope/vim-eunuch', {'on': ['Mkdir', 'Rename', 'Unlink', 'Delete', 'Move', 'Chmod', 'Cfind', 'Clocate', 'Lfine', 'Llocate', 'SudoEdit', 'SudoWrite', 'Wall', 'W']}
" 最大化窗口，ctrl w o
Plug 'troydm/zoomwintab.vim', {'on': 'ZoomWinTabToggle'}
" vim中文文档
Plug 'yianwillis/vimcdoc'
if has('nvim')
    Plug 'nvim-treesitter/nvim-treesitter'
else
    Plug 'sheerun/vim-polyglot'
    Plug 'octol/vim-cpp-enhanced-highlight'
endif
"" 总是匹配tag
"Plug 'valloric/MatchTagAlways', {'for': ['html', 'css', 'xml']}
" 显示颜色 例如: #654456
if has('nvim')
    Plug 'norcalli/nvim-colorizer.lua'
else
    Plug 'RRethy/vim-hexokinase',  { 'do': 'make hexokinase' }
endif

"" 加强版的 go to file
"Plug 'tpope/vim-apathy'
"" 查看启动时间
"Plug 'dstein64/vim-startuptime', {'on':'StartupTime'}
"" 专注阅读
"Plug 'junegunn/goyo.vim', { 'on': 'Goyo', 'for': 'markdown' }
"\ | Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
"Plug 'markonm/traces.vim'
"" 语法检查
"Plug 'rhysd/vim-grammarous', {'for': ['markdown', 'vimwiki', 'md', 'tex']}

" coc插件列表，可根据需要进行删减
let g:coc_global_extensions = [
    \ 'coc-marketplace',
    \ 'coc-xml',
    \ 'coc-yank',
    \ 'coc-sh',
    \ 'coc-yaml',
    \ 'coc-json',
    \ 'coc-lists',
    \ 'coc-python',
    \ 'coc-explorer',
    \ 'coc-floaterm',
    \ 'coc-git',
    \ 'coc-vimlsp',
    \ 'coc-tabnine',
    \ 'coc-word',
    \ 'coc-tsserver',
    \ 'coc-snippets',
    \ 'coc-translator',
    \ 'coc-markmap',
    \ ]


"    \ 'coc-ci',
"    \ 'coc-cmake',
"    \ 'coc-clangd',
"    \ 'coc-prettier',
"    \ 'coc-calc',
    "\ 'coc-bookmark',
"    \ 'coc-rainbow-fart',
