-- vim.cmd("! mkdir -p ~/.vim-sessions`pwd`")
-- vim.cmd("autocmd VimLeavePre * mks! ~/.vim-sessions`pwd`/session.vim")
--
-- vim.cmd("autocmd VimEnter * bd")

-- TODO:
-- Acildiginda no name bi buffer a falan gitsin, dosyanin syntax ini veremiyo
-- Gereksiz no name dosyalari gosteriyo, hem de 2 tane

vim.cmd([[
function! CleanNoNameEmptyBuffers()
    let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && empty(bufname(v:val)) && bufwinnr(v:val) < 0 && (getbufline(v:val, 1, "$") == [""])')
    if !empty(buffers)
        exe 'bd '.join(buffers, ' ')
    else
        echo 'No buffer deleted'
    endif
endfunction
]])

-- Load Session
vim.cmd("autocmd VimEnter * so ~/.vim-sessions`pwd`/session.vim | call CleanNoNameEmptyBuffers()")
vim.cmd("autocmd TermResponse * e!")

vim.cmd([[
function SaveSession()
  ! mkdir -p ~/.vim-sessions`pwd`
  mks! ~/.vim-sessions`pwd`/session.vim
  quit
endfunction
]])

-- vim.cmd("autocmd VimLeavePre * NERDTreeClose")
vim.cmd("autocmd VimLeave * call SaveSession()")
