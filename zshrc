# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

autoload -Uz compinit colors
compinit
colors
bindkey -v

typeset -U path
# path=(${path[*]} ~/dotfiles/scripts ~/.gem/ruby/2.2.0/bin)
setopt PROMPT_SUBST
setopt NOBG_NICE
setopt NOHUP
# source .git_prompt

HISTSIZE=1000

function extract() {
    NAME=`echo ${1} | sed -e 's/\.[a-zA-Z0-9]*$//'`
    mkdir ${NAME}
    unzip -d ${NAME} ${1}
} 

# ssh aliases
alias ada="ssh grisam10@ada.evergreen.edu"
#####

alias devs="ls -lh /dev/sd*"
alias aur="bash <(curl aur.sh) -si"
alias pupdate="sudo pacman -Syu"
alias ipy="ipython2"
alias ranger="ranger -r ~/.ranger"

alias logisim="java -jar ~/.logisim/logisim-generic-2.7.1.jar"

alias gadd="git add"
alias gcommit="git commit"
alias gstat="git status"
alias gdiff="git diff"

alias nose="nosetests2"
alias gdb="gdb -silent"
alias gcc="gcc -Wall -std=gnu11"
alias feh="feh --auto-zoom --fullscreen --draw-filename"
alias df="df --human-readable"
alias shred="shred --zero --remove --verbose"
alias ls="ls -lhH --color"
alias lsd="ls -lh --color | grep -e \"^d\""
alias ..="cd .."
alias less="less -r"
alias cryptopen="sudo cryptsetup luksOpen"
alias cryptclose="sudo cryptsetup luksClose"
alias camshot="mplayer tv:// -tv width=1280:height=720 -fs -vf screenshot"

export LS_COLORS='di=32:ex=0;35;40'

export EDITOR="vim"
export LC_ALL="en_US.UTF-8"
export LANG=$LC_ALL

PROMPT='%{$fg[blue]%}%n%{$fg[yellow]%}@%{$fg[blue]%}%M %{$fg[red]%}%~%{$fg[yellow]%}>> %{$reset_color%}% '

ZSH_THEME=muse
