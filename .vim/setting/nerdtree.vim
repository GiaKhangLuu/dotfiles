"""""""""""""""""""""""''""""""""""""""""""""""
" MAPPING "
" """"""""""""""""""""""""""""""""""""""""""""


nnoremap <silent> <Leader>t :NERDTreeToggle<CR>
nnoremap  <Leader>f :NERDTreeFind<CR>
" Open files, directories and bookmarks
nnoremap <silent> o :NERDTree-o<CR>
" Open selected file, but leave cursor in the NERDTree
nnoremap <silent> O :NERDTree-go<CR>
" Open selected node/bookmark in a new tab
nnoremap <silent> t :NERDTree-t<CR>
" Same as 't' but keep the focus on the current tab
nnoremap <silent> T :NERDTree-T<CR>
" Open selected file in a new vsplit
nmap  vo s
" Same as vo, but leave the cursor on the NERDTree
nmap  Vo gs
" Open selected file in a split window
nmap ho i
" Same as i, but leave the cursor on the NERDTree
nmap Ho gi


" Git status icon
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" Change arrow to expand/collapse tree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree')&& b:NERDTree.isTabTree() | quit | endif


" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


