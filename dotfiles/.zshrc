# If you come from bash you might have to change your $PATH.
export PYENV_ROOT="$HOME/.pyenv"
export QT_QPA_PLATFORM=xcb
export PATH=$PYENV_ROOT/bin:$HOME/bin:/usr/local/bin:$PATH
#bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# eval "$(pyenv init -)"
# eval "$(pyenv init --path)"
# eval "$(pyenv virtualenv-init -)"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="ys"
ZSH_THEME="robbyrussell"
# ZSH_THEME="fletcherm"
# ZSH_THEME="passion"
# ZSH_THEME="fwalch"
# ZSH_THEME="mikeh"
# ##########################$$*********8
#
#
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"








##################3 EXPERIMENTAL ENV CHANGE ################################
#
#

virtualenv_prompt_info() {
    if [[ -n "$VIRTUAL_ENV" ]]; then
        echo "($(basename "$VIRTUAL_ENV"))"
    fi
}

PROMPT='$(virtualenv_prompt_info) %n@%m %~ %# '
#
#
#
# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

HISTSIZE=100000
SAVEHIST=100000 
HISTFILE=~/.zsh_history


setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS 
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git virtualenv pyenv)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
 export LANG=en_US.UTF-8
 DRI_PRIME=1

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
alias zshc="nvim ~/.zshrc"
# alias omz="nvim ~/.oh-my-zsh"
#
export EDITOR=nvim
export VISUAL=nvim
# export TERM="xterm-256color"
export LESS="-R"
export MANPAGER="less -R"
# export LESS_TERMCAP_mb=$'\e[0;32m'
# export LESS_TERMCAP_md=$'\e[1;32m'
# export LESS_TERMCAP_me=$'\e[0m'
# export LESS_TERMCAP_se=$'\e[0m'
# export LESS_TERMCAP_so=$'\e[01;33m'
# export LESS_TERMCAP_ue=$'\e[0m'
# export LESS_TERMCAP_us=$'\e[1;4;31m'


export LD_LIBRARY_PATH="/usr/local/lib"



# export MANPAGER='less -R'
# export LESS='-R'
# export MANPAGER="nvim -c 'set ft=man' -"
### "vim" as manpager
# export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

#-----------------------------

#####################

#-----------------
#aliases
# alias ls="colorls"
alias python_venv= "source ~/.pyenv/versions/3.12.2/lib/python3.12/venv/scripts/common/activate"
alias pacman="sudo pacman"
alias fetch="fastfetch"
alias cat="bat"
alias apt="sudo apt"
alias suspend="systemctl suspend"
# alias lc="colorls -lA --sd"
alias nala="sudo nala"
alias storage="cd ~/Storage"
alias apt-get="sudo apt-get"
alias checkbattery="upower -i $(upower -e | grep 'BAT')"
alias checkcpu="auto-cpufreq --stats"
alias checkdisk="sudo smartctl -a /dev/sda6"
alias raylib_game="cd $HOME/dev/c-development/projects/raylib_game/"





###############33 UNREAL ENV AND ALIAS @@@@@@@@@@@@@@@@
#

alias ue5="/home/stalone/Downloads/unreal/Engine/Binaries/Linux/UnrealEditor"



#
###############################################3
###############################################3
#
#alias dw="alacritty -e nvim $HOME/.config/dwm/config.def.h "
# alias dw="alacritty -e cd $HOME/.config/dwm/ && nvim config.def.h && ~/.config/dwm/auto_restart.sh"

# alias dw='alacritty -e zsh -c "cd $HOME/.config/dwm && nvim config.def.h && ~/.config/dwm/auto_restart.sh"'
# dw(){
#
# }
alias ff="alacritty -e fman"
# alias la="colorls -a"
# alias ll="colorls"
alias poweroff="systemctl poweroff"
alias suspend="systemctl sleep"
alias reboot="systemctl reboot"
MANGOHUD=0
export FZF_DEFAULT_OPTS="
--height=70%
--layout=reverse
--border
--inline-info
--bind=ctrl-r:toggle-sort
"

# this is for fzf finding man-pages
fmanc(){
  man -aw $(man -k . | awk '{print $1l}') \
  | xargs zcat 2>/dev/null \
  | rg --color=always "$1" \
  | fzf --ansi --preview "echo {}"
}

fman() {
  man -k . \
  | fzf \
    --ansi \
    --prompt='man> ' \
    --preview 'man {1} {2} | grep --color=always -E "^|^NAME|^SYNOPSIS|^DESCRIPTION|^OPTIONS"' \
    --preview-window=right:70%:wrap \
  | awk '{print $1, $2}' | xargs man
}
#old fman
# fman() {
#   man -k . \
#   | fzf \
#     --prompt='man> ' \
#     --preview 'man {1} | col -bx' \
#     --preview-window=right:70%:wrap \
#   | awk '{print $1, $2}' | xargs man
# }


fastfetch -c $HOME/.config/fastfetch/config.jsonc --logo ~/ascii_folder/ascii_brand.txt --color yellow 
. "$HOME/.cargo/env"

# Created by `pipx` on 2024-02-10 16:24:28
export PATH="$PATH:$HOME/.local/bin"

#enable fzf key bindings and auto-completion :
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



# bun completions
# [ -s "/home/garage1/.bun/_bun" ] && source "/home/garage1/.bun/_bun"

# bun
export FZF_ALT_C_OPTS="--preview 'ls -la --color=always {} | head -200'"
source /usr/share/fzf/key-bindings.zsh
bindkey '^R' fzf-history-widget

