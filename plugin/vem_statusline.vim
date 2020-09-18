" Vem Statusline. A lightweight statusline for Vim.
" Part of the Vem project
" Maintainer: Andrés Sopeña <asopena@ehmm.org>
" Licence: The MIT License (MIT)

" Sentinel to prevent double execution
if exists('g:loaded_vem_statusline')
    finish
endif
let g:loaded_vem_statusline = 1

scriptencoding utf-8

" Configuration variables
let g:vem_statusline_parts = get(g:, 'vem_statusline_parts', 'mbfienpP')
let g:vem_statusline_filename_format = get(g:, 'vem_statusline_filename_format', 'P')
let g:vem_statusline_project_marker = get(g:, 'vem_statusline_project_marker', '.git')
let g:vem_statusline_branch_function = get(g:, 'vem_statusline_branch_function', '')
let g:vem_statusline_mode_separator = get(g:, 'vem_statusline_mode_separator', '  ~ ')
let g:vem_statusline_branch_separator = get(g:, 'vem_statusline_branch_separator', ':')
let g:vem_statusline_right_separator = get(g:, 'vem_statusline_right_separator', ' ')
let g:vem_unnamed_buffer_label = get(g:, 'vem_unnamed_buffer_label', '[No Name]')

" Syntax highlighting
highlight default link VemStatusLineSeparator StatusLine
highlight default link VemStatusLineMode StatusLine
highlight default link VemStatusLineModeInsert StatusLine
highlight default link VemStatusLineBranch StatusLine
highlight default link VemStatusLineFileModified StatusLine
highlight default link VemStatusLineFileRO StatusLine
highlight default link VemStatusLinePosition StatusLine

" Default Theme
highlight VemStatusLineMode         cterm=bold ctermfg=192 guifg=#bae352 gui=bold
highlight VemStatusLineModeInsert   cterm=bold ctermfg=117 guifg=#8ac6f2 gui=bold
highlight VemStatusLineBranch       cterm=none ctermfg=246 guifg=#999999 gui=none
highlight VemStatusLineFileModified cterm=bold ctermfg=192 guifg=#cae682 gui=bold
highlight VemStatusLineFileRO       cterm=bold ctermfg=192 guifg=#e5786d gui=bold
highlight VemStatusLineSeparator    cterm=none ctermfg=246 guifg=#999999 gui=none
highlight VemStatusLinePosition     cterm=bold ctermfg=255 guifg=#f6f3e8 gui=bold

" Configure statusline
set statusline=%!vem_statusline#render()

