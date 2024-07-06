# system
alias tcn="mv --force -t ~/.local/share/Trash/files"
alias cpv="rsync -ah --info=progress2"
alias src="source ~/.zshrc"
alias update="sudo apt update && sudo apt upgrade"

# matlab
alias mlb="tmux new -s matlab -d 'matlab .'"

# functions
function cl() {
    DIR="$*"
    if [ $# -lt 1 ]; then
        DIR=$HOME
    fi
    builtin cd "${DIR}" &&
        ls -F --color=auto
}
