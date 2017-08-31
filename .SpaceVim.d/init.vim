﻿" reset
augroup MyAutoCmd
    autocmd!
augroup END

set nocompatible
set encoding=utf-8
highlight Normal ctermbg=none

" SpaceVim Setting
"let g:spacevim_automatic_update = 0

" Here are some basic customizations, please refer to the ~/.SpaceVim.d/init.vim
" file for all possible options:
let g:spacevim_default_indent = 4
let g:spacevim_max_column     = 120
" let g:spacevim_guifont = 'DejaVu\ Sans\ Mono\ for\ Powerline:h11:cANSI:qDRAFT'
let g:spacevim_vim_help_language = 'ja,en'
" let g:spacevim_language = 'ja_JP.UTF-8'
let g:spacevim_plugin_bundle_dir = '~/.cache/vimfiles/'

" set SpaceVim colorscheme 
let g:spacevim_colorscheme = 'PaperColor'
let g:spacevim_colorscheme_bg = 'light'

" Set plugin manager, you want to use, default is dein.vim
let g:spacevim_plugin_manager = 'dein'  " neobundle or dein or vim-plug

" Set windows shortcut leader [Window], default is `s`
let g:spacevim_windows_leader = 's'

" Set unite work flow shortcut leader [Unite], default is `f`
let g:spacevim_unite_leader = 'f'

" Set Denite work flow shortcut leader [Denite], default is `F`
let g:spacevim_denite_leader = 'F'

" By default, language specific plugins are not loaded. This can be changed
" with the following, then the plugins for go development will be loaded.

" loaded ui layer
call SpaceVim#layers#load('ui')

" Dark powered mode of SpaceVim, generated by SpaceVim automatically.
let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 1
let g:spacevim_autocomplete_method = 'neocomplete'
 
call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('lang#elixir')
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#haskell')
call SpaceVim#layers#load('lang#java')
call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('lang#lua')
call SpaceVim#layers#load('lang#perl')
call SpaceVim#layers#load('lang#php')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#rust')
call SpaceVim#layers#load('lang#swig')
call SpaceVim#layers#load('lang#tmux')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#xml')
call SpaceVim#layers#load('shell')
"call SpaceVim#layers#load('tools#screensaver')
let g:spacevim_enable_vimfiler_welcome = 0
let g:deoplete#auto_complete_delay = 150
let g:neomake_vim_enabled_makers = []
let g:spacevim_filemanager = 'vimfiler'
let g:spacevim_sidebar_width = 35
let g:spacevim_enable_vimfiler_filetypeicon = 0
let g:spacevim_enable_os_fileformat_icon = 0
let g:spacevim_buffer_index_type = 1
let g:spacevim_enable_tabline_filetype_icon = 0
let g:spacevim_buffer_index_type = 4
let g:spacevim_search_tools = ['rg', 'grep']
let g:spacevim_smartcloseignoreft      = ['tagbar', 'vimfiler']

if executable('vimlint')
    call add(g:neomake_vim_enabled_makers, 'vimlint') 
endif
if executable('vint')
    call add(g:neomake_vim_enabled_makers, 'vint') 
endif
if has('python3')
    let g:ctrlp_map = ''
    nnoremap <silent> <C-p> :Denite file_rec<CR>
endif
let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''

let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''

let g:vimfiler_tree_indentation = 2
let g:spacevim_enable_powerline_fonts = 1

" If there is a particular plugin you don't like, you can define this
" variable to disable them entirely:
let g:spacevim_disabled_plugin = [
  \ ['vim-youdao-translate'],
  \ ['eskk.vim'],
  \ ['DirDiff.vim'],
  \ ['dirdiff.vim'],
  \ ]

let g:spacevim_custom_plugins = [
  \ ['vim-jp/vimdoc-ja'],
  \ ['Shougo/neossh.vim'],
  \ ['Shougo/context_filetype.vim'],
  \ ['Shougo/echodoc.vim'],
  \ ['Shougo/vimshell.vim'],
  \ ['tyru/caw.vim'],
  \ ['kannokanno/previm'],
  \ ['thinca/vim-quickrun'],
  \ ['chrisbra/csv.vim'],
  \ ['vim-airline/vim-airline'],
  \ ['vim-airline/vim-airline-themes'],
  \ ['ConradIrwin/vim-bracketed-paste'],
  \ ['thinca/vim-prettyprint'],
  \ ['ozelentok/denite-gtags'],
  \ ]
let g:airline#extensions#tagbar#enabled = 0


" Global Setting
set timeout timeoutlen=200 ttimeoutlen=50
set noautochdir
set foldopen=all
set history=10000
set number
set norelativenumber
set mouse=a
set mouseshape=beam
set splitbelow
set splitright
set t_Co=256
set t_ut=
set cmdheight=2
set laststatus=2
set showtabline=2
set nowritebackup
set nobackup
set noswapfile
set hidden
set lazyredraw
set ttyfast
set tabstop=4
set shiftwidth=4
set expandtab
set cindent
set shiftround
set cinkeys-=:
set showmatch matchtime=1
set sidescrolloff=12
set scrolloff=8
set sidescroll=1
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set nowrap
set wildmenu
set backspace=indent,eol,start whichwrap+=<,>,[,]
set virtualedit+=block
set vb t_vb=
set noerrorbells
set autoread
set termguicolors
set completeopt=menu,menuone,noselect
" set completeopt-=preview
set pumheight=15
set list listchars=tab:>-,trail:-,space:.
if exists('+emo')
    set emoji
endif

inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

if exists('+fixeol')
    set nofixendofline
endif

if has('multi_byte')
    set iminsert=0 imsearch=0
endif

" set guicursor=n-c:block-blinkon10,o:hor50-blinkon10,i-ci:hor15-blinkon10,r-cr:hor30-blinkon10,sm:block-blinkon10
set maxmem=1000000
set maxmempattern=1000000
set maxmemtot=1000000
" set ambiwidth=auto
"set nocursorline

" 自動でプレビューウィンドウを閉じる
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" qfというファイルタイプの時にバッファに名前をつける
autocmd! FileType qf :file locationlist
" grepした後に自動で検索結果画面を出す
autocmd! QuickfixCmdPost *grep* cwindow
" 検索時に検索したワードが画面中央に来るように
noremap n nzzzv
noremap N Nzzzv

" Capture {{{
" http://webtech-walker.com/archive/2010/04/27173007.html
command!
      \ -nargs=+ -bang
      \ -complete=command
      \ Capture
      \ call s:cmd_capture([<f-args>], <bang>0)

function! C(cmd)
  redir => result
  silent execute a:cmd
  redir END
  return result
endfunction

function! s:cmd_capture(args, banged) "{{{
  new
  silent put =C(join(a:args))
  1,2delete _
endfunction "}}}
" }}}

" windowsライクなバインドに
execute "source " . expand('<sfile>:p:h') . "/rc/winmap.vim"

" 環境設定
function! IsMac() abort
  return !s:is_windows && !has('win32unix')
      \ && (has('mac') || has('macunix') || has('gui_macvim')
      \     || (!executable('xdg-open') && system('uname') =~? '^darwin'))
endfunction

if WINDOWS()
    set shellslash
    set opendevice
    let g:zip_unzipcmd='unzip.exe'
    let g:zip_zipcmd='zip.exe'
    if has('win64')
        let g:default_browser = 'C:/Program Files (x86)/Mozilla Firefox/firefox.exe'
    elseif has('win32')
        let g:default_browser = 'C:/Program Files/Mozilla Firefox/firefox.exe'
    endif
elseif IsMac()
    let g:default_browser = '/Applications/Firefox.app'
else
    let g:default_browser = 'firefox'
    let g:zip_unzipcmd='unzip'
    let g:zip_zipcmd='zip'
endif

if WINDOWS()
    let g:python3_host_prog = 'python'
else 
    let g:python3_host_prog = 'python3'
    let g:python2_host_prog = 'python2.6'
endif

filetype plugin indent on

" エンコードの設定
if has('vim_starting') && &encoding !=# 'utf-8'
    if WINDOWS() && !has('gui_running')
        let &termencoding = &encoding
        set encoding=cp932
    else
        let &termencoding = &encoding
        set encoding=utf-8
    endif
endif

function! s:ReCheck_FENC() abort
  let is_multi_byte = search("[^\x01-\x7e]", 'n', 100, 100)
  if &fileencoding =~# 'iso-2022-jp' && !is_multi_byte
    let &fileencoding = &encoding
  endif
endfunction

autocmd MyAutoCmd BufReadPost * call s:ReCheck_FENC()

" Default fileformat.
set fileformat=unix

" Build encodings.
set fileencodings=utf-8,sjis,cp932,iso-2022-jp,euc-jp
set fileformats=unix,dos,mac

" Command group opening with a specific character code again."{{{
" In particular effective when I am garbled in a terminal.
" Open in UTF-8 again.
command! -bang -bar -complete=file -nargs=? Utf8
      \ edit<bang> ++enc=utf-8 <args>
" Open in iso-2022-jp again.
command! -bang -bar -complete=file -nargs=? Iso2022jp
      \ edit<bang> ++enc=iso-2022-jp <args>
" Open in Shift_JIS again.
command! -bang -bar -complete=file -nargs=? Cp932
      \ edit<bang> ++enc=cp932 <args>
" Open in EUC-jp again.
command! -bang -bar -complete=file -nargs=? Euc
      \ edit<bang> ++enc=euc-jp <args>
" Open in UTF-16 again.
command! -bang -bar -complete=file -nargs=? Utf16
      \ edit<bang> ++enc=ucs-2le <args>
" Open in latin1 again.
command! -bang -bar -complete=file -nargs=? Latin
      \ edit<bang> ++enc=latin1 <args>

" Tried to make a file note version.
command! WUtf8 setlocal fenc=utf-8
command! WCp932 setlocal fenc=cp932
command! WLatin1 setlocal fenc=latin1

" Appoint a line feed.
command! -bang -complete=file -nargs=? WUnix
      \ write<bang> ++fileformat=unix <args> | edit <args>
command! -bang -complete=file -nargs=? WDos
      \ write<bang> ++fileformat=dos <args> | edit <args>

" クリップボード連携
if has('unnamedplus') && !(has('win32') || has('win64'))
    if has('autoselectplus')
        set clipboard=unnamedplus,autoselectplus
    else
        set clipboard=unnamedplus
    endif
else
    set clipboard=unnamed
endif

if has('gui_running')
    set guioptions=gtme
    source $VIMRUNTIME/delmenu.vim
    set langmenu=ja_jp.utf-8
    source $VIMRUNTIME/menu.vim
endif

"-------------------------------------------------------------------------------
" コマンド       ノーマルモード 挿入モード コマンドラインモード ビジュアルモード
" map/noremap           @            -              -                  @
" nmap/nnoremap         @            -              -                  -
" imap/inoremap         -            @              -                  -
" cmap/cnoremap         -            -              @                  -
" vmap/vnoremap         -            -              -                  @
" map!/noremap!         -            @              @                  -
"---------------------------------------------------------------------------

cabbr w!! w !sudo tee > /dev/null %
map <Leader>so :source ~/dotfiles/nvim/init.vim<CR>

" 削除キーでyankしない
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D

" 自然な正規表現検索にするため
nmap / /\v

imap <silent><C-;> <C-R>=strftime('%Y/%m/%d')<CR>
imap <silent><C-:> <C-R>=strftime('%H:%M')<CR>
imap <silent><C-;>: <C-R>=strftime('%Y/%m/%d %H:%M')<CR>

" シフトで多めに移動
noremap J 20j
noremap K 20k
noremap L 10l
noremap H 10h

" 無効化
"nnoremap ZZ <Nop>
"nnoremap ZQ <Nop>
"nnoremap Q <Nop>

" {{{ http://tamata78.hatenablog.com/entry/2015/10/15/214921
" ウィンドウ操作を楽にする設定
nnoremap <silent><S-A-Left> <C-w>J " 画面自体を左に移動
nnoremap <silent><S-A-Down> <C-w>K " 画面自体を下に移動
nnoremap <silent><S-A-Up> <C-w>L " 画面自体を上に移動
nnoremap <silent><S-A-Right> <C-w>H " 画面自体を右に移動
nnoremap <silent><A-Left>  <C-w><<CR>
nnoremap <silent><A-Right> <C-w>><CR>
nnoremap <silent><A-Up>    <C-w>-<CR>
nnoremap <silent><A-Down>  <C-w>+<CR>


"}}}

"タブ操作
nnoremap t <Nop>
nnoremap <silent> tt :<C-u>tabnew<CR>
nnoremap <silent> <C-n> :<C-u>tabnew<CR>
nnoremap <silent> tn :<C-u>tabprev<CR>
nnoremap <silent> tx :<C-u>tabclose<CR>
nnoremap <silent> td :<C-u>tabclose<CR>
nnoremap <silent> to :<C-u>tabonly<CR>
nnoremap <silent> <C-PageDown> :<C-u>tabnext<CR>
nnoremap <silent> <C-PageUp> :<C-u>tabprev<CR>


" <Esc><Esc>: ハイライトの切り替え
nnoremap <silent> <Esc><Esc> :<C-u>set nohlsearch!<CR>

" jj: エスケープ
imap jj <Esc>

" <Y>: 行末までヤンク
nnoremap Y y$

" 編集を楽にする
imap <silent><C-d> <ESC>yypi
map <silent><C-d> yypi

" + と - で数字を変化させる?
" nnoremap + <C-a>
" nnoremap - <C-x>

" QuickRun
map <silent> <F5> :QuickRun -outputter error -outputter/error/success buffer -outputter/error quickfix<CR>
map!<silent> <F5> <Esc>:QuickRun -outputter error -outputter/error/success buffer -outputter/error quickfix<CR>

" Denite
map <silent> <C-F><C-F> :<C-u>Denite file_rec<CR>
cmap <silent> <C-F><C-F> :<C-u>Denite file_rec<CR>
map <silent> <C-g>  :<C-u>Denite line<CR>
map <silent> <C-g><C-g> :<C-u>Denite grep<CR>
map <silent> <C-/>:<C-u>DeniteCursorWord grep<CR>
map <silent> <C-h> :<C-u>Denite file_mru<CR>
map <silent> <C-y><C-y> :<C-u>Denite neoyank<CR>
map <silent> <F1>  :<C-u>Denite help<CR>
map <silent> <C-h><C-h>  :<C-u>Denite command_history<CR>
map <silent> <F9>  :<C-N>Denite -resume -immediately -select=+1<CR>
map <silent> <F10> :<C-P>Denite -resume -immediately -select=-1<CR>

" Unite
if WINDOWS()
    let g:unite_source_bookmark_directory = "Y:/bookmark"
endif
map <silent> <F11> <ESC>:UniteBookmarkAdd<CR>
map <silent> <F12> <ESC>:Unite bookmark -buffer-name=bookmark -winheight=20 -start-insert<CR>
map! <silent> <F11> <ESC>:UniteBookmarkAdd<CR>
map! <silent> <F12> <ESC>:Unite bookmark -buffer-name=bookmark -vertical -winheight=20 -start-insert<CR>
cmap <F11> UniteBookmarkAdd<CR>
cmap <F12> Unite bookmark -buffer-name=bookmark -vertical -winheight=20 -start-insert<CR>
map <C-F12> <ESC>:Unite -buffer-name=outline -vertical -winwidth=50 outline<CR>
map! <C-F12> <ESC>:Unite -buffer-name=outline -vertical -winwidth=50 outline<CR>

" previmopen
let g:previm_open_cmd = fnameescape(g:default_browser)
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

"neossh
if WINDOWS()
    let s:ssh_dir = 'Y:/home/PortableApps/PuTTYPortable/App/putty/'
    let g:neossh#ssh_command = s:ssh_dir . 'plink.exe -P PORT HOSTNAME'
    let g:neossh#copy_directory_command = s:ssh_dir . 'pscp.exe -P PORT -q -r $srcs $dest'
    let g:neossh#copy_file_command = s:ssh_dir . 'pscp.exe -P PORT -q $srcs $dest'
endif

vnoremap <silent> > >gv
vnoremap <silent> < <gv

vnoremap <silent> <TAB> >gv
vnoremap <silent> <S-TAB> <gv
