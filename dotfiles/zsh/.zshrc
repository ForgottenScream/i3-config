source "$XDG_CONFIG_HOME/zsh/aliases"

autoload -Uz compinit; compinit

#Autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

fpath=($ZDOTDIR/external $fpath)

autoload -Uz prompt_purification_setup; prompt_purification_setup
