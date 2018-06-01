#!/usr/bin/env zsh

export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME='robbyrussell'

fpath=(/usr/local/share/zsh-completions $fpath)
plugins=(colored-man-pages copydir copyfile docker gitfast git-extras github golang history-substring-search jsontools osx ssh-agent sudo terminalapp thefuck tmux urltools wd web-search z)

source "$ZSH/oh-my-zsh.sh"
autoload -U zmv

eval "$(thefuck --alias)"

source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
source ~/.fzf.zsh

type _zsh_autosuggest_start &>/dev/null || source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
type _zsh_highlight &>/dev/null || source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
zstyle :omz:plugins:ssh-agent agent-forwarding on

for file in ~/.{exports,aliases,functions,local}
do
	test -f "$file" && test -r "$file" && source "$file"
done
