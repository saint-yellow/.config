source ${HOME}/.zi/zi.zsh

zi ice lucid wait="0" atload="_zsh_autosuggest_start"
zi light zsh-users/zsh-autosuggestions

zi ice lucid wait="0" atinit="zpcompinit"
zi light zdharma-continuum/fast-syntax-highlighting

zi ice lucid wait="0"
zi light zthxxx/zsh-history-enquirer 

zi ice depth=1
zinit light jeffreytse/zsh-vi-mode

zi wait lucid for z-shell/zsh-fancy-completions

zinit light Aloxaf/fzf-tab

