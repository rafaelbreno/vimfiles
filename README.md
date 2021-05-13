## My vimfiles
- > $ git clone https://github.com/rafaelbreno/vimfiles.git nvim
- > $ mv nvim ~/.config
- > nvim
- > :PlugInstall

### Plugins
- [vim-go](https://github.com/fatih/vim-go)
- [NERDTree](https://github.com/preservim/nerdtree)
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [nerdcommenter](https://github.com/preservim/nerdcommenter)
- [vim-numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [material](https://github.com/kaicataldo/material.vim)

### Helpers
- NERDTree
	- Create File
		- > :NERDTree
		- > m
		- > a
		- > <enter file name with path\>
	- Open Files
		- > :NERDTree
		- > t (new tab)
		- > i (horizontal split)
		- > s (vertical split)


### Tutor
- _"A"_ - Go to the end of the line, with the cursor before the last character
- _"$"_ - GO to the end of the line, with the cursor after the last character
- _"nyy"_ 
    - Copy 'n' lines
- _"p"_ - paste lines
- "no" - add 'n' new lines below the current line
- "nO" - add 'n' new lines above the current line

### Cleaning
1. Pacman/Yay Cache
    - > $ du -sh /var/cache/pacman
        - Show cache size
    - > $ yay -Scc
        - Clear cache
2. Pacman/Yay unused dependencies
    - > $ yay -Qtdq
        - Show unused dependencies
    - > $ yay -Rns $(yay -Qtdq)
        - Delete unused dependencies
3. Arch cache
    - > $ du -sh ~/.cache/
        - Show cache size
    - > $ rm -rf ~/.cache
        - Delete cache
