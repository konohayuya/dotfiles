" 見た目回り
" 色をつける
syntax on

" カーソルのある行 列をハイライトする
set cursorcolumn
set cursorline
"
" 閉じ括弧が入力されたとき、対応する括弧を見やすくする
set showmatch

" カーソルの上下に表示される最小限の行数(これの意味解ってない
set scrolloff=10

" ステータスラインを常に表示
set laststatus=2

" ファイル選択のメニューを表示しない
set nowildmenu

" 動作周り

" バックアップを作成しない
set nobackup
" swapファイルを作成しない
set noswapfile

" j kで表示の行通りに移動する
nnoremap j gj
nnoremap k gk

" backspaceキーの動作
set backspace=indent,eol,start 

" 改行コードにカーソルを当てられるようにする
set virtualedit=onemore

" 開いてるファイルを自動で読み込み直す
set autoread

" それなりに賢いインデント
set smartindent

" マウス操作
set mouse=a

" 行番号の表示
set number

" 自動インデントの各段階に使われる空白の数
set shiftwidth=2

" コマンドをステータスラインに表示する
set showcmd

" 補完の設定
set wildmode=list:longest,full

" 検索時のハイライトをESC3回で消す
nmap <ESC><ESC><ESC> :nohlsearch<CR><ESC>
" 検索時ハイライトする
set hlsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan 
" 小文字での検索時 大文字小文字を区別しない
set ignorecase
set smartcase
" インクリメンタルサーチ
set incsearch

" tab周りの設定
" ハードタブの見た目を変更
set list listchars=tab:\▸\-
" soft tab
set expandtab
" tabキーを押して入力されるスペースの数
set softtabstop=2
" TAB文字のvim上での表示サイズ
set tabstop=2
" clipboard連携
set clipboard&
set clipboard^=unnamedplus,unnamed

call plug#begin('~/.vim/plugged') 
Plug 'NLKNguyen/papercolor-theme'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-surround'
Plug 'Lokaltog/vim-easymotion'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

" theme
syntax enable

if (has("termguicolors"))
  set termguicolors
endif

"PeperColor
set background=dark
colorscheme PaperColor

" lightline config
let g:lightline = {
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }
set noshowmode

