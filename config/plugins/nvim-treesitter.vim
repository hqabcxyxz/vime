"  基于语法树折叠,会覆盖已经设置的折叠选项
" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()

lua << EOF
   require'nvim-treesitter.configs'.setup {
       -- 解析器的安装，all全部安装
       -- ensure_installed = 'maintained',
       ensure_installed = {"bash","cpp","c","cmake","cuda","css","dockerfile","go","html","hjson","http","java","javascript","json","json5","jsonc","make","markdown","markdown_inline","ninja","python","ruby","rust","scala","sql","toml","vim","vue","yaml"}, -- one of 'all', 'language', or a list of languages
       -- 高亮配置
       highlight = {
           enable = true,                      -- false将禁用整个插件
           disable = {},                       -- 不使用该插件的语言
           custom_captures = {                 -- 自定义高亮组
               -- ["foo.bar"] = "Identifier"     
           },
       },
      -- 块选择，还不太会使用，暂时保留
      incremental_selection = {
          enable = true,
          disable = {},
          keymaps = {                       -- mappings for incremental selection (visual mappings)
              init_selection = 'gnn',         -- maps in normal mode to init the node/scope selection
              node_incremental = "grn",       -- increment to the upper named parent
              scope_incremental = "grc",      -- increment to the upper scope (as defined in locals.scm)
              node_decremental = "grm",       -- decrement to the previous node
          }
      },
       -- indent
       indent = {
           enable = false,                      -- 基于语法树缩进
       },
       -- rainbow
       rainbow = {
           enable = true,
           disable = {'bash'}
       }
   }
EOF

" treesitter经常在进行一些操作之后丢失渲染，比如撤销操作等
" 使用下面的命令可以恢复
function s:render() abort
   " exec "write | edit | TSBufEnable highlight"
endfunc
nmap <silent> <F4> :call <SID>render()<cr>

