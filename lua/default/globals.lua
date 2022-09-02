vim.cmd([[
function! CleanNoNameEmptyBuffers()
    let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && empty(bufname(v:val)) && bufwinnr(v:val) < 0 && (getbufline(v:val, 1, "$") == [""])')
    if !empty(buffers)
        exe 'bd '.join(buffers, ' ')
    endif
endfunction
]])

vim.cmd([[
function SaveSession()
  ! mkdir -p ~/.vim-sessions`pwd`
  mks! ~/.vim-sessions`pwd`/session.vim
  quit
endfunction
]])

