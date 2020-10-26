" For startify
let g:startify_padding_left = 10
let g:startify_custom_header = [
\'                                                         ',
\'             ▄█    █▄   ▄█     ▄▄▄▄███▄▄▄▄      ▄████████',
\'            ███    ███ ███   ▄██▀▀▀███▀▀▀██▄   ███    ███',
\'            ███    ███ ███▌  ███   ███   ███   ███    █▀',
\'            ███    ███ ███▌  ███   ███   ███  ▄███▄▄▄',
\'            ███    ███ ███▌  ███   ███   ███ ▀▀███▀▀▀',
\'            ███    ███ ███   ███   ███   ███   ███    █▄',
\'            ███    ███ ███   ███   ███   ███   ███    ███',
\'             ▀██████▀  █▀     ▀█   ███   █▀    ██████████',
\'                                                         ',
\'                                                         ',
\]

"let g:startify_custom_header=[
"\'                            _ooOoo_  ',
"\'                           o8888888o  ',
"\'                           88" . "88  ',
"\'                           (| -_- |)  ',
"\'                            O\ = /O  ',
"\'                        ____/`---'\____  ',
"\'                      .   ' \\| |// `.  ',
"\'                       / \\||| : |||// \  ',
"\'                     / _||||| -:- |||||- \  ',
"\'                       | | \\\ - /// | |  ',
"\'                     | \_| ''\---/'' | |  ',
"\'                      \ .-\__ `-` ___/-. /  ',
"\'                   ___`. .' /--.--\ `. . __  ',
"\'                ."" '< `.___\_<|>_/___.' >'"".  ',
"\'               | | : `- \`.;`\ _ /`;.`/ - ` : | |  ',
"\'                 \ \ `-. \_ __\ /__ _/ .-` / /  ',
"\'         ======`-.____`-.___\_____/___.-`____.-'======  ',
"\'                            `=---='  ',
"\'  ',
"\'         .............................................  ',
"\'                  佛祖保佑             永无BUG ',
"\'          佛曰:  ',
"\'                  写字楼里写字间，写字间里程序员；  ',
"\'                  程序人员写程序，又拿程序换酒钱。  ',
"\'                  酒醒只在网上坐，酒醉还来网下眠；  ',
"\'                  酒醉酒醒日复日，网上网下年复年。  ',
"\'                  但愿老死电脑间，不愿鞠躬老板前；  ',
"\'                  奔驰宝马贵者趣，公交自行程序员。  ',
"\'                  别人笑我忒疯癫，我笑自己命太贱；  ',
"\'                  不见满街漂亮妹，哪个归得程序员？',
"\]

let g:startify_files_number = 6
let g:startify_dir_number = 6

" session
let g:startify_session_persistence    = 1
let g:startify_session_dir = g:session_dir

" bookmarks 书签
let g:startify_bookmarks = [
            \ '~/Documents/wiki/草稿/todo.md',
            \ '~/Documents/wiki/草稿/快速笔记.md',
            \ '~/.dotfiles/nvim/config/plug.vim'
            \ ]

" command 命令
let g:startify_commands = [
    \ {'u': ['插件更新', 'PlugUpdate']},
    \ {'t': ['打开终端', 'terminal']},
    \ {'w': ['笔记列表', 'VimwikiIndex']},
    \ {'s': ['启动时间', 'StartupTime']},
    \ ]

let g:startify_lists = [
       \ { 'type': 'sessions',  'header': ['        Sessions']       },
       \ { 'type': 'bookmarks', 'header': ['        Bookmarks']      },
       \ { 'type': 'files',     'header': ['        MRU']            },
       \ { 'type': 'dir',       'header': ['        MRU '. getcwd()] },
       \ { 'type': 'commands',  'header': ['        Commands']       },
       \ ]

" 打开buffer也显示startify
" autocmd BufEnter *
"      \ if !exists('t:startify_new_tab') && empty(expand('%')) && !exists('t:goyo_master') |
"      \   let t:startify_new_tab = 1 |
"      \   Startify |
"      \ endif
