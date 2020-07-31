
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

###prompt always on bottom when start###
#printf '\n%.0s' {1..100}

###custom start command###
function cd {
  builtin cd "$@" && clear && lsd -1
}

###NAVIGATION###
alias v='vim' 
alias sv='sudo vim'
alias vrc='v "/home/ridho/.vimrc" && d'
alias zrc='v "/home/ridho/.zshrc" && d'
alias zrt='v "/home/ridho/.p10k.zsh" && d'
alias repo='sv "/etc/apt/sources.list.d/official-package-repositories.list" && d'
alias nf='mkdir'
alias snf='sudo mkdir'
#alias f='d'
alias da='clear && lsd -1A'
alias f='ranger "$@" && d' 
alias yu='mv'
alias syu='sudo mv'
alias yy='cp -r'
alias syy='sudo cp -r'
alias D='trash -f'
alias sD='sudo trash -f'
alias tt='sudo trash-empty'
alias tr='restore-trash'
alias tl='trash-list'
alias d='clear && lsd -1'
alias e='cd'
alias q='cd .. && d'
alias ew='clear && e /home/ridho/.wine'
alias ea='clear && e /home/ridho/Videos/Anime'
alias ef='clear && e /home/ridho/Videos/film'
alias ed='clear && e /home/ridho/Downloads'
alias emd='clear && e /home/ridho/Private/megasync_download_folder'
alias ep='clear && e /home/ridho/Private'
alias epp='clear && e /home/ridho/Private/Program'
alias ec='clear && e /home/ridho/.config'
alias qq='clear && e ~'
alias jj='wine'
alias vx='xplayer'
