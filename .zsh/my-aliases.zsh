# system
alias tcn="mv --force -t ~/.local/share/Trash/files"
alias cpv="rsync -ah --info=progress2"
alias src="source ~/.zshrc"
alias update="sudo apt update && sudo apt upgrade"
alias bat="batcat"

# matlab
alias mlb="tmux new -s matlab -d 'matlab .'"

# tmuxinator
alias mux="tmuxinator"

# functions
function cl() {
    DIR="$*"
    if [ $# -lt 1 ]; then
        DIR=$HOME
    fi
    builtin cd "${DIR}" &&
        ls -F --color=auto
}

function lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}
