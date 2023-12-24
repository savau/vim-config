" Enable the use of the mouse for all modes
set mouse=a

" Show line numbers
set number

" Break lines
set linebreak

" Wrap lines
set wrap
" preserve indentation when wrapping lines
set breakindent
" add two additional spaces
" let &showbreak='  '

" Allow reusing the same window and switch from an unsaved buffer without saving it first
" (Also allows undo history for multiple files)
set hidden

" Highlight search
set hlsearch

" Use smartcase for search
set smartcase

" Use 2 spaces instead of tabs
set expandtab
set shiftwidth=2
set smarttab
set softtabstop=2

" Smart indent lines
set smartindent

" Show the current row and column position
set ruler

" Replace pesky beep sound with visual bell...
set visualbell
" ... and reset terminal code for the visual bell to disable notification entirely
set t_vb=

" 'Modern' backspace behaviour
set backspace=indent,eol,start

" Set update interval to 100ms instead of 4000ms (reduce gitgutter update time)
set updatetime=100

" Stop vim from automatically adding a linebreak at the end of a file
set nofixendofline

" Enable syntax highlighting
syntax enable

" Allow intelligent auto-indenting for each filetype, and for plugins that are filetype-specific
filetype indent plugin on


""" COLORS

" Change Pmenu background color from pink to something less painful to look at
highlight Pmenu ctermbg=Black ctermfg=White

" Change SignColumn background to Black
highlight SignColumn ctermbg=Black

" Recolor vim-gitgutter signs
highlight GitGutterAdd ctermbg=Black ctermfg=Green
highlight GitGutterChange ctermbg=Black ctermfg=LightBlue
highlight GitGutterChangeDelete ctermbg=Black ctermfg=LightBlue
highlight GitGutterDelete ctermbg=Black ctermfg=Red

" Recolor ALE lints
highlight ALEError ctermbg=DarkRed ctermfg=White
highlight ALEErrorSign ctermbg=Black ctermfg=Red
highlight ALEWarning ctermbg=DarkYellow ctermfg=White
highlight ALEWarningSign ctermbg=Black ctermfg=DarkYellow

" Recolor Coc lints
"highlight CocErrorHighlight ctermfg=Red cterm=underline
"highlight CocErrorFloat ctermbg=Black ctermfg=Black
"highlight CocWarningHighlight ctermfg=DarkYellow cterm=underline
"highlight CocWarningFloat ctermbg=DarkYellow ctermfg=Black
"highlight CocInfoHighlight ctermfg=DarkGreen cterm=underline
"highlight CocInfoFloat ctermbg=DarkGreen ctermfg=Black
"highlight CocInfoSign ctermbg=Black ctermfg=Green


""" CUSTOM VMAPS

" r: Replace selected text region with current buffer without copying
"vmap r "_dP

" d: Shorthand for deleting selected text region without saving it to the buffer
"vmap d "_d


""" VIM AIRLINE

" Automatically display all buffers when there is only one tab open
let g:airline#extensions#tabline#enabled = 1

" Define straight tabs
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Use unique_tail_improved as default path formatter
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Enable powerline fonts for airline
let g:airline_powerline_fonts = 1

" let g:powerline_pycmd = 'py3'


""" NERDTree

" Automatically start vim with NERDTree opened
autocmd VimEnter * NERDTree
" ... but move the cursor into the main window when doing so
"     to avoid starting with the cursor in NERDTree
autocmd VimEnter * wincmd p
" ... and also quit vim if there is no active buffer anymore
"     besides NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


""" Telescope

" A few handy shortcuts
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


""" VimTeX

let g:vimtex_view_general_viewer = 'evince'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
