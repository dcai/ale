scriptencoding utf-8
" Author: Dongsheng Cai <d@tux.im>
" Description: Fix Caddyfile

call ale#Set('caddy_executable', 'caddy')

function! ale#fixers#caddy#Fix(buffer) abort
    let l:executable = ale#Var(a:buffer, 'caddy_executable')
    return {
    \   'command': ale#Escape(l:executable) . ' fmt '
    \}
endfunction
