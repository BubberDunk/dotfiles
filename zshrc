autoload -U compinit colors
compinit
colors

setopt NOBG_NICE
setopt NOHUP

HISTSIZE=1000

function extract() {
    NAME=`echo ${1} | sed -e 's/\.[a-zA-Z0-9]*$//'`
    mkdir ${NAME}
    unzip -d ${NAME} ${1}
}
alias shutdown now="shutdown now 2>shutdownErrors"
alias gclone="git clone"
alias gcommit="git commit"
alias gstat="git status"
alias gdiff="git diff"
alias gdb="gdb -silent"
alias gcc="gcc -Wall -std=gnu11"
alias feh="feh --auto-zoom --fullscreen --draw-filename"
alias df="df --human-readable"
alias shred="shred --zero --remove --verbose"
alias ls="ls -lhH --color"
alias lsd="ls -lh --color | grep -e \"^d\"" alias ..="cd .."
alias cls="clear"
alias less="less -r"
alias cryptopen="cryptsetup luksOpen"
alias cryptclose="cryptsetup luksClose"
alias camshot="mplayer tv:// -tv width=1280:height=720 -fs -vf screenshot"
alias python="ipython2"
alias pingg="ping google.com"
alias lsblk="lsblk -f"

PROMPT="%{$fg[blue]%}%n@%M %{$fg[red]%}%~%{$reset_color%} >> "
export LS_COLORS='di=0;34;40:ex=0;35;40'
export EDITOR="vim"
