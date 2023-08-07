" FEATURES TO IMPLEMENT FROM THOUGHTBOT:
" - Fuzzy File Search
" - Tag Jumping
" - Autocomplete
" - File Browsing
" - Snippets
" - Build Integration

"-----------------------------------------------
" BASIC SETUP:
"-----------------------------------------------

" Enter current millenium.
set nocompatible

" Enable syntax and plugins (for newrw)
syntax enable
filetype plugin on

"-----------------------------------------------
" FINDING FILES:
"-----------------------------------------------

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu
