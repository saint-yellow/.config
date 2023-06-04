eval "$(starship init zsh)"

function set_window_title() {
    echo -ne "\033]0; ${PWD} \007"
}

precmd_functions+=(set_window_title)

