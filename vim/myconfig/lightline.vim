
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lightline status bar

let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste', 'coc-status' ],
  \             [ 'gitbranch' ],
  \             [ 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component': {
  \   'coc-status': '%{coc#status()}',
  \   'gitbranch': '%{FugitiveStatusline()}',
  \ },
  \ 'component_function': {
  \   'filetype': 'LLFiletype',
  \   'fileformat': 'LLFileformat',
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' },
  \ }

function! LLFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! LLFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

