#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

[[ $- == *i* ]] && source /usr/share/blesh/ble.sh --noattach


### Bash config
shopt -s checkwinsize
shopt -s autocd

# XDG aliases
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"
alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"

### The very epic aliases ###
alias venv='source venv/bin/activate'
alias open='xdg-open'

alias ls='exa'
alias l='exa -lbF --git'
alias ll='exa -lbGF --git'
alias llm='exa -lbGd --git --sort=modified'
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale'

alias pacinstall="pacman -Slq | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk \"{print \$2}\")' --layout=reverse | xargs -ro sudo pacman -S"
alias aurinstall="paru -Slq | fzf -m --preview 'cat <(paru -Si {1}) <(paru -Fl {1} | awk \"{print \$2}\")' --layout=reverse | xargs -ro sudo paru -S"
alias pacbrowse="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | $PAGER)'"
alias aurbrowse="paru -Qqm | fzf --preview 'paru -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | $PAGER)'"

### Bash init stuff ###
eval "$(starship init bash)"
eval "$(zoxide init bash)"

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}


[[ ${BLE_VERSION-} ]] && ble-attach
