" Toggle Nerdtree tree explorer.
map <C-N> :NERDTreeToggle<CR>

" Close Vim if NERDTree is the only window left.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeChDirMode = 2
let g:NERDTreeRespectWildIgnore = 1

