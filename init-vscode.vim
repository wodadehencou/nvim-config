for f in split(glob("$HOME/.config/nvim/vim.d/*"), '\n')
    exe 'source' f
endfor
