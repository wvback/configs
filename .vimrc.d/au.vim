" go to last pos. in file on read
autocmd BufReadPost *
\ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
\ |   exe "normal! g`\""
\ | endif

" don't continue comments on newlines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" auto reload xresources on write
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
