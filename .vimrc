set nocompatible

syntax enable
colorscheme koehler

try
	source ~/.vimrc.d/ops.vim
catch
	" file doesn't exist, ignore it
endtry

try
    source ~/.vimrc.d/keys.vim
catch
	" file doesn't exist, ignore it
endtry

try
    source ~/.vimrc.d/au.vim
catch
	" file doesn't exist, ignore it
endtry
