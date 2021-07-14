" function! common#common#echo() abort
    " echom 'autoload#common#echo()'
" endfunction

" function! common#common#init() abort
    " " vimrc所在根目录
    " let g:vim_root_path = fnamemodify($MYVIMRC, ':h') . '/'
    " " 配置所在根目录
    " let g:config_root_path = g:vim_root_path . 'config/'
    " " 插件配置所在目录
    " let g:plugins_config_root_path = g:config_root_path . "plugins/"
    " let g:other_config_root_path = g:config_root_path . "other/"

    " " vim插件、缓存等数据根目录
    " let g:cache_root_path = $HOME . '/.cache/vim/'
    " " vim 插件安装目录
    " let g:plugins_install_path = g:cache_root_path . 'plugins/'
    " " session 保存目录
    " let g:session_dir = g:cache_root_path . 'sessions/'
    " " 撤销记录目录
    " let g:undo_dir = g:cache_root_path . 'undo/'

    " let g:os = systemlist('uname -s')[0]
    " let g:arch = systemlist('uname -m')[0]

    " " tmux配置文件目录
    " let g:tmux_config_path = $HOME . '/.tmux.conf'

    " " 脚本目录
    " let g:scripts_root_path = g:vim_root_path . "/scripts/"

    " " wiki笔记根目录
    " let g:vimwiki_path = $HOME . '/Documents/wiki/'

    " " 快速note文件
    " let g:quicknote_file = g:vimwiki_path . '/quicknote.md'
    if has("nvim")
        let g:python_host_prog = "/usr/bin/python2"
        let g:python3_host_prog = "/usr/bin/python3"
    endif

    " vimrc 中设置环境变量启用 pygments
    let $GTAGSLABEL = 'native-pygments'
    " gtags支持文件名包含空格
    " let $GTAGSALLOWBLANK = 1
    " gtags 将 h 文件 识别为 c++头文件,否则是c语言文件
    let $GTAGSFORCECPP = 1
    " 设置gtags的配置位置
    let $GTAGSCONF = $HOME . '/.globalrc' " 此路径根据实际设置（find一下
" endfunction

