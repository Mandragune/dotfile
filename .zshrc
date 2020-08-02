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
  builtin cd "$@" && clear && echo ------------------------------------------------------------------------------------------------------------------------------------------------------- && pwd && echo ------------------------------------------------------------------------------------------------------------------------------------------------------- && lsd -1 && echo -------------------------------------------------------------------------------------------------------------------------------------------------------
}

nmcli d wifi
echo -------------------------------------------------------------------------------------------------------------------------------------------------------

ZLE_RPROMPT_INDENT=0

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
alias da='clear && lsd -1A && echo ------------------------------------------------------------------------------------------------------------------------------------------------------- && pwd && echo -------------------------------------------------------------------------------------------------------------------------------------------------------'
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
alias d='clear && echo ------------------------------------------------------------------------------------------------------------------------------------------------------- && pwd && echo ------------------------------------------------------------------------------------------------------------------------------------------------------- && lsd -1 && echo -------------------------------------------------------------------------------------------------------------------------------------------------------'
alias e='cd'
alias q='cd .. && d'
alias ew='clear && e /home/ridho/.wine'
alias ea='clear && e /home/ridho/Videos/Anime'
alias ef='clear && e /home/ridho/Videos/film'
alias ed='clear && e /home/ridho/Downloads'
alias emd='clear && e /home/ridho/Private/megasync_download_folder'
alias ep='clear && e /home/ridho/Private'
alias epp='clear && e /home/ridho/Private/Program'
alias ec='e /home/ridho/.config && da'
alias qq='clear && e ~'
alias jj='wine'
alias vx='xplayer'
alias vc='vlc'
alias vm='mpv'
alias fj='sh'
alias qqq='clear && e /'
alias xxx='shutdown now'
alias x-iso-='sudo dd=4M if='
alias x-dev-='of='
alias ez='clear && e /home/ridho/.oh-my-zsh'
alias ev='clear && e /home/ridho/.vim'
#alias vj='bindkey -v'

### APT ###
alias fuck='clear && cat /home/ridho/Documents/aliasing/aliasing.txt'
alias fuckup='clear && sudo apt update'
alias fuckab='clear && sudo apt show'
alias fuckl='clear && sudo apt list'
alias fuckin='clear && sudo apt install'
alias fuckr='clear && sudo apt reinstall'
alias fuckd='clear && sudo apt download'
alias fuckm='clear && sudo apt remove'
alias fucka='clear && sudo apt autoremove'
alias fuckp='clear && sudo apt purge'
alias fuckc='clear && sudo apt autoclean'
alias fuckg='clear && sudo apt upgrade'
alias fuckgl='clear && sudo apt list --upgradable -a'

###Flatpak###
alias install='clear && flatpak install && echo -------------------------------------------------------------------------------------------------------------------------------------------------------'
alias update='clear && echo ------------------------------------------------------------------------------------------------------------------------------------------------------- && flatpak update'
alias uninstall='clear && flatpak uninstall && echo -------------------------------------------------------------------------------------------------------------------------------------------------------'
alias clean='clear && flatpak uninstall --unused && echo -------------------------------------------------------------------------------------------------------------------------------------------------------'
alias fl='clear && nmcli d wifi && echo ------------------------------------------------------------------------------------------------------------------------------------------------------- && echo List Software Flatpak && echo ------------------------------------------------------------------------------------------------------------------------------------------------------- && flatpak list --app && echo -------------------------------------------------------------------------------------------------------------------------------------------------------'
alias info='clear && flatpak info'
alias config='clear && flatpak config'
alias repair='clear && flatpak repair'
alias run='clear && flatpak run'
alias search='clear && flatpak search'

### Git ###
alias ginit='git init'
alias add='git add -v'
alias remote='git remote add origin'
alias push='git push -u origin'
alias cm='git commit'
alias gD='git rm -r'
alias gyu='git mv'
alias gbr='git branch'
alias ck='git checkout'
alias eg='e /home/ridho/Private/gitrepo'

###CAPSLOCKESCAPE###

alias sss='xmodmap /home/ridho/.config/.capesc'


# Set up the prompt

autoload -Uz promptinit
#romptinit
#prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
#bindkey -e
bindkey -v
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
###autoload -Uz compinit
###compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


#########################################################################################
#########################################################################################
#########################################################################################

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ridho/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
