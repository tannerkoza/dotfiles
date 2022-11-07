# system
alias tcn="mv --force -t ~/.local/share/Trash/files"
alias cpv="rsync -ah --info=progress2"
alias open="xdg-open ."
alias src="source ~/.zshrc"

# functions
function cl() {
    DIR="$*"
    if [ $# -lt 1 ]; then
        DIR=$HOME
    fi
    builtin cd "${DIR}" &&
        ls -F --color=auto
}
