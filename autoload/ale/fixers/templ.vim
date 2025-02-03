scriptencoding utf-8
" Author: Dongsheng Cai <d@tux.im>
" Description: Fix templ for go

call ale#Set('templ_executable', 'templ')
call ale#Set('templ_executable_options', '')

function! ale#fixers#templ#Fix(buffer) abort
    let l:executable = ale#Var(a:buffer, 'templ_executable')
    let l:options = ale#Var(a:buffer, 'templ_executable_options')

    return {
    \   'command': ale#Escape(l:executable)
    \     . ' fmt '
    \     . (empty(l:options) ? '' : ' ' . l:options)
    \}
endfunction
