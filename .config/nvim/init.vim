packadd minpac
call minpac#init()
call minpac#add('othree/yajs.vim')
call minpac#add('tpope/vim-dispatch')
call minpac#add('w0rp/ale')
call minpac#add('othree/es.next.syntax.vim')
call minpac#add('tpope/vim-projectionist')
call minpac#add('mhinz/vim-grepper')
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('dracula/vim')
call minpac#add('mhartington/oceanic-next')
call minpac#add('tpope/vim-surround')
call minpac#add('Galooshi/vim-import-js')
call minpac#add('prettier/vim-prettier')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('mxw/vim-jsx')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('vim-airline/vim-airline')
call minpac#add('trevordmiller/nova-vim')
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
set rtp+=/usr/local/opt/fzf

" Mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

function! SetupCommandAlias(input, output)
  exec 'cabbrev <expr> '.a:input
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:input.'")'
        \ .'? ("'.a:output.'") : ("'.a:input.'"))'
endfunction
call SetupCommandAlias("grep", "GrepperGrep")

let g:grepper       = {}
let g:grepper.tools = ['grep', 'git', 'rg']

" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>

" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Open Grepper-prompt for a particular Grep-alike tool
nnoremap <Leader>g :Grepper -tool git<CR>
nnoremap <Leader>G :Grepper -tool rg<CR>
" Custom hyperclick style file navigation
silent! nnoremap <buffer> <unique> <silent> <Leader>h :ImportJSGoto<CR>


" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set termguicolors

" Theme
syntax enable
set encoding=utf8
colorscheme nova	
set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum
let g:airline_powerline_fonts = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:jsx_ext_required = 0