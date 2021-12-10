"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-GO
"Disable things that COC can do
let g:go_doc_keywordprg_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_code_completion_enabled = 0
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []
let g:go_jump_to_error = 0
let g:go_fmt_command = "goimports"
let g:go_auto_sameids = 0

"extra highlighting
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

"options
let g:go_def_reuse_buffer = 1
let g:go_debug_mappings = {
\ '(go-debug-continue)': {'key': 'c', 'arguments': '<nowait>'},
\ '(go-debug-stop)': {'key': 'q'},
\ '(go-debug-next)': {'key': 'n', 'arguments': '<nowait>'},
\ '(go-debug-step)': {'key': 's'},
\ '(go-debug-breakpoint)': {'key': 'b'},
\}


