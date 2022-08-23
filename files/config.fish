# Variables

set -gx EDITOR 'nvim'
set -gx GOPATH "$HOME/Developer/go"
set -gx PATH $PATH $GOPATH/bin

# Aliases

alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'
alias ...... 'cd ../../../../..'

alias br 'brew'
alias brc 'brew cleanup'
alias brd 'brew doctor'
alias bri 'brew install'
alias brl 'brew list'
alias brn 'brew info'
alias brr 'brew reinstall'
alias brs 'brew search'
alias bru 'brew uninstall'
alias brup 'brew upgrade'
alias brupc 'brew upgrade; and brew cleanup'

alias cd.. 'cd ..'
alias cd... 'cd ../..'
alias cd.... 'cd ../../..'
alias cd..... 'cd ../../../..'
alias cd...... 'cd ../../../../..'

alias cdd "cd $HOME/Developer"
alias cds "cd $HOME/Developer/setup"

alias cl 'clear'

alias cp 'cp -i'

alias diff 'colordiff'

alias dig 'dig @8.8.8.8 +noall +answer +multiline'

alias edf 'nvim ~/.config/fish/config.fish; test -r ~/.config/fish/config.fish; and source ~/.config/fish/config.fish; true'
alias edfl 'nvim ~/.config/fish/local.fish; test -r ~/.config/fish/local.fish; and source ~/.config/fish/local.fish; true'

alias gia 'git add'
alias gib 'git branch'
alias gibd 'git branch -d'
alias gibdf 'git branch -D'
alias gic 'git checkout'
alias gicb 'git checkout -b'
alias gicl 'git clean -dfx'
alias gicm 'git checkout master'
alias gico 'git commit'
alias gicoa 'git commit -a'
alias gicoad 'git commit -a --amend'
alias gicoaf 'git commit -a --fixup'
alias gicoam 'git commit -a -m'
alias gicod 'git commit --amend'
alias gicodr 'git commit --amend --no-edit --reset-author'
alias gicof 'git commit --fixup'
alias gicom 'git commit -m'
alias gicp 'git cherry-pick'
alias gicpa 'git cherry-pick --abort'
alias gicpc 'git cherry-pick --continue'
alias gid 'git diff'
alias gidc 'git diff --cached'
alias gidcw 'git diff --cached --word-diff color'
alias gidm 'git diff master'
alias gidom 'git diff origin/master'
alias gidw 'git diff --word-diff color'
alias gif 'git fetch'
alias gifo 'git fetch origin'
alias gil 'git log'
alias gilo 'git log --oneline'
alias gilog 'git log --oneline --graph'
alias gilm 'git log master'
alias gilom 'git log origin master'
alias gim 'git merge'
alias gima 'git merge --abort'
alias gimc 'git merge --continue'
alias gip 'git pull'
alias gipom 'git pull origin master'
alias gipp 'git pull; and git push'
alias gipu 'git push'
alias gipuf 'git push --force'
alias gipuo 'git push origin'
alias gipuof 'git push origin --force'
alias gir 'git reset'
alias girh 'git reset --hard'
alias girhm 'git reset --hard master'
alias girhom 'git reset --hard origin/master'
alias girb 'git rebase'
alias girba 'git rebase --abort'
alias girbc 'git rebase --continue'
alias girbi 'git rebase -i'
alias girbim 'git rebase -i master'
alias girbm 'git rebase master'
alias girbom 'git rebase origin/master'
alias girt 'git remote'
alias girta 'git remote add'
alias girts 'git remote set-url'
alias girtv 'git remote -v'
alias girv 'git rm'
alias gis 'git status'
alias gish 'git show'
alias gishw 'git show --word-diff color'

alias gob 'go build ./...'
alias god 'go doc'
alias godu 'go doc -u'
alias gof 'go fmt ./...'
alias gog 'go generate ./...'
alias goi 'go install ./...'
alias gom 'goimports -d -w .'
alias gor 'go run'
alias got 'go test ./...'
alias gotr 'go test -run'
alias gotrv 'go test -v -run'
alias gotv 'go test -v ./...'

alias gore 'gore -autoimport'

alias hi 'history'

alias jo 'jobs'

alias kc 'kubectl'
alias kcd 'kubectl describe'
alias kcg 'kubectl get'
alias kcl 'kubectl logs'
alias kcr 'kubectl run'
alias kn 'kubens'
alias kx 'kubectx'

alias lsa 'ls -A'
alias lsal 'ls -Ahl'
alias lsl 'ls -hl'

alias ln 'ln -i'

alias mk 'make'

alias mkdir 'mkdir -p'

alias mv 'mv -i'

alias nv 'nvim'

alias mac-cmd-files 'sudo lsof -c'
alias mac-dir-pids 'sudo lsof +d'
alias mac-files-established 'lsof -P -i4 | head -n 1; lsof -P -i4 | grep ESTABLISHED'
alias mac-files-listen 'lsof -P -i4 | head -n 1; lsof -P -i4 | grep LISTEN'
alias mac-pid-files 'sudo lsof -p'

alias rgi 'rg -i'
alias rgn 'rg --no-ignore'

alias up1 'cd ..'
alias up2 'cd ../..'
alias up3 'cd ../../..'
alias up4 'cd ../../../..'
alias up5 'cd ../../../../..'

alias vi 'vim'

# Functions

function gibdrb
  git checkout master; and git pull origin; and git checkout $argv[1]; and git rebase master; and git checkout master; and git branch -d $argv[1]
end

function kcrp
  kubectl run -i -t --image $argv[1] --restart Never --rm $argv[2]
end

function lines-drop
  awk "{l[NR] = \$0} END {for (i=1+$argv[1]; i<=NR; i++) print l[i]}"
end

function lines-drop-last
  awk "{l[NR] = \$0} END {for (i=1; i<=NR-$argv[1]; i++) print l[i]}"
end

function lines-take
  awk "{l[NR] = \$0} END {for (i=1; i<=$argv[1]; i++) print l[i]}"
end

function lines-take-last
  awk "{l[NR] = \$0} END {for (i=NR-$argv[1]+1; i<=NR; i++) print l[i]}"
end

function mac-port-cmds
  lsof -Pn -iTCP:$argv[1]
end

function mac-temp-cpu
  sudo powermetrics --samplers smc -i 1 -n 1 | grep -i 'CPU die temperature' | cut -d ' ' -f 4,5
end

function mac-temp-gpu
  sudo powermetrics --samplers smc -i 1 -n 1 | grep -i 'GPU die temperature' | cut -d ' ' -f 4,5
end

function up
  cd ..
  while test (pwd) != "/"; and test (basename (pwd)) != $argv[1]
    cd ..
  end
end

# Local

test -r ~/.config/fish/local.fish; and source ~/.config/fish/local.fish
