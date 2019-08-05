source "$HOME/.bash/path"
source "$HOME/.bash/alias"
#source "$HOME/.bash/PS1"

~/.scripts/cowsaysfortune.sh
source ~/.scripts/prompt.sh

eval "$(fasd --init auto)"

eval "$(dircolors .dircolors)"

NORMAL=$(echo -e "\001\033[00m\002")
GREEN=$(echo -e "\001\033[01;32m\002")
RED=$(echo -e "\001\033[01;31m\002")
BLUE=$(echo -e "\001\033[01;94m\002")
YELLOW=$(echo -e "\001\033[01;33m\002")
MAGENTA=$(echo -e "\001\033[01;35m\002")
CYAN=$(echo -e "\001\033[01;36m\002")

set colored-completion-prefix on
#set menu-complete-display-prefix on

source "$HOME/.bash/function"
