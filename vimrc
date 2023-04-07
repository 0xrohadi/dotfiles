" Author: 0xrohadi
"  __      _____ ____
" /---__  ( (O)|/(O) )
"  \\\\\\\\/  \\___/U\\___/
"    L\\       ||
"     \\\\ ____|||_____
"      \\\\|==|[]__/==|\\-|
"       \\|* |||||\\==|/-|
"    ____| *|[][]-- |_
"   ||EEE|__EEEE_[]_|EE\\
"   ||EEE|=O     O|=|EEE|
"   \\LEEE|         \\|EEE|  __))
"                          ```

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h 
map <C-l> <C-W>l

" "Penyesuaian jendela layar terpisah
"if bufwinnr(1)
"    map + <C-W>+
"    map - <C-W>-
"endif
"

""""""""""""""""""""""
" Running script python
map <F2> <Esc>:!clear;python3 %<CR>

" Nerdthree
map <F3> <Esc>:NERDTree<CR>

" Tabs
map <F5> <Esc>:tab sball<CR>

" Save file
nmap <F4> :w!<CR>
vmap <F4> <C-C>:w!<CR>
imap <F4> <Esc>:w!<CR>

" Open file under cursor in new tab
map <F8> <Esc><C-W>gF<CR>:tabm<CR>

" Toggle line-wrap
map <F6> <Esc>:set wrap!<CR>

""""""""""""""""""""""

" Switch tabs
map 8 <Esc>:tabe
map 9 gT
map 0 gt

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pengaturan umum

set mouse=a
"set termwinsize=6x0
"let g:asyncrun_open=6
set splitbelow
let mapleader = ","      " Tentukan kunci <leader>
set nocompatible         " Pengaturan tidak kompatibel dengan mode vi asli 
filetype on              " Pengaturan untuk mengaktifkan deteksi jenis file 
filetype plugin on       " Mengatur plugin untuk memuat jenis file yang sesuai 
set noeb                 " Tutup peringatan kesalahan 
syntax enable            " Aktifkan penyorotan sintaks 
syntax on                " Penyorotan sintaks otomatis
set t_Co=256             " Aktifkan dukungan 256 warna 
set cmdheight=2          " Mengatur tinggi baris perintah 
set showcmd              " Mode pilih menunjukkan jumlah baris yang dipilih 
set ruler                " Selalu tunjukkan posisi kursor 
set laststatus=2         " Selalu tampilkan bilah status 
set number               " Nyalakan nomor tampilan baris 
set cursorline           " Menyorot garis saat ini 
set whichwrap+=<,>,h,l   " Mengatur tombol kursor di seluruh baris 
set ttimeoutlen=0        " Mengatur waktu respons tombol <ESC>
set virtualedit=block,onemore   " Memungkinkan kursor muncul setelah karakter terakhir 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Identasi kode dan typografi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " Atur identasi otomatis 
set smartindent          " Pilihan cetdas untuk jalannya (identasi) 
filetype indent on       " Indentasi cerdas untuk adaptasi bahasa adaptif 
set expandtab            " Memperluas tab ke spasi 
set tabstop=4            " Menetapkan jumlah ruang yang ditempati oleh tab selama pengeditan 
set shiftwidth=4         " Mengatur jumlah spasi yang ditempati oleh tab saat memformat 
set softtabstop=4        " Menetapkan 4 spasi sebagai tab 
set smarttab             " Gunakan tab di awal baris dan paragraf 
set wrap                 " Garis terlipat
set backspace=2          " Gunakan tombol enter untuk menangani indentasi, eol, start, dll. secara normal 
set sidescroll=10        " Mengatur jumlah karakter gulir ke kanan 
set nofoldenable         " Menonaktifkan kode lipat 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Penyelesainan kode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " Pelengkap cerdas mode baris bernama vim sendiri 
set completeopt-=preview " Tidak ada jendela yang ditampilkan saat menyelesaikan, hanya daftar penyelesaian 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pengaturan pencarian 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " Menyorot hasil pencarian 
set incsearch           " Aktifkan pencarian real time 
set ignorecase          " Pencarian yang tidak peka huruf besar/kecil 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pengaturan cache
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " Atur untuk tidak mencadangkan
set noswapfile          " Melarang pembuatan file sementara 
set autoread            " File telah dimodifikasi di luar vim dan secara otomatis dibaca ulang di 
set autowrite           " Mengatur penyimoanan secara otomatis 
set confirm             " Konfirmasi pop-up saat memproses file yang belum disimpan atau hanya-baca 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pengaturan kode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_ID.UTF-8
set helplang=id
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copot pemasangan plugin default UnPlug 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:deregister(repo)
let repo = substitute(a:repo, '[\/]\+$', '', '')
let name = fnamemodify(repo, ':t:s?\.git$??')
call remove(g:plugs, name)
endfunction
command! -nargs=1 -bar UnPlug call s:deregister(<args>)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Daftar Plugin 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'chxuan/vim-edit'
Plug 'chxuan/vim-buffer'
Plug 'chxuan/tagbar'
Plug 'Yggdroot/LeaderF'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-smooth-scroll'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'rust-lang/rust.vim',
Plug 'simrat39/rust-tools.nvim'

call plug#end()  

" Mengedit file konfigurasi terkait vimrc 
nnoremap <leader>e :edit $MYVIMRC<cr>

" Buka file bantuan vim untuk kata di mana kursor saat ini berada 
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr>

" Mengedit file konfigurasi terkait vimrc
nnoremap <leader>s :source $MYVIMRC<cr>

" Memasang, memperbarui, menghapus plug-in 
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>

" Gerakan jendela layar terpisah
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Menyalin pilihan saat ini ke papan klip sistem 
vmap <leader><leader>y "+y

" Menempelkan isi papan klip sistem ke dalam vim 
nnoremap <leader><leader>p "+p

" Buka file untuk menemukan posisi terakhir yang diedit secara otomatis 
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" Untuk mengatifkan fitur LSP rust analyzer
let g:rustfmt_autosave = 1
let g:rustfmt_command = "rustfmt"
let g:rustfmt_enable_edition_marker = 1
let g:rustfmt_set_edition = 2018
let g:rustfmt_use_lsp = v:true
let g:ale_linters = {'rust': ['rls', 'rust-analyzer']}
let g:ale_fixers = {'rust': ['rls', 'rust-analyzer']}
let g:ale_rust_rustfmt_use_clippy = 1

" Pengaturan tema 
set background=dark
let g:onedark_termcolors=256
colorscheme dracula

" airline
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" vim-buffer
nnoremap <silent> <c-p> :PreviousBuffer<cr>
nnoremap <silent> <c-n> :NextBuffer<cr>
nnoremap <silent> <leader>d :CloseBuffer<cr>
nnoremap <silent> <leader>D :BufOnly<cr>

" vim-edit
nnoremap Y :CopyText<cr>
nnoremap D :DeleteText<cr>
nnoremap C :ChangeText<cr>
nnoremap <leader>r :ReplaceTo<space>

" nerdtree
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

" tagbar
let g:tagbar_width = 30
nnoremap <silent> <leader>t :TagbarToggle<cr>

" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" vim-easymotion
let g:EasyMotion_smartcase = 1
map <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)

" nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }

" LeaderF
nnoremap <leader>f :LeaderfFile ~<cr>
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0

" ack
nnoremap <leader>F :Ack!<space>

" key binding rust analyze
nnoremap <silent> <leader>r :RustAnalyze<CR>


" tabular
"nnoremap <leader>l :Tab /\|<cr>
"nnoremap <leader>= :Tab /=<cr>

" vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
