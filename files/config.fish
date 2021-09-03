# Variables

set -gx CLICOLOR '1'
set -gx COMPLETION_WAITING_DOTS 'true'
set -gx EDITOR 'nvim'
set -gx GO111MODULE 'auto'
set -gx GOPATH "$HOME/Developer/go"
set -gx HISTCONTROL 'ignoreboth'
set -gx HISTFILESIZE "32768"
set -gx HISTIGNORE "&:bg:clear:exit:fg:history:jobs:pwd:* --help:* --version"
set -gx HISTSIZE '32768'
set -gx LANG 'en_US.UTF-8'
set -gx LC_ALL 'en_US.UTF-8'
set -gx NODE_REPL_HISTORY_SIZE '32768'
set -gx PATH $PATH $GOPATH/bin
set -gx PYTHONIOENCODING 'UTF-8'
set -gx fish_greeting

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

alias bu 'bundle'
alias bue 'bundle exec'
alias buer 'bundle exec rails'
alias buerc 'bundle exec rails console'
alias bues 'bundle exec rspec'
alias bui 'bundle install'

alias cd.. 'cd ..'
alias cd... 'cd ../..'
alias cd.... 'cd ../../..'
alias cd..... 'cd ../../../..'
alias cd...... 'cd ../../../../..'

alias cdd "cd $HOME/Developer"
alias cddo "cd $HOME/.dotfiles"
alias cdg "cd $HOME/Developer/go/src"
alias cdw "cd $HOME/Developer/go/src/github.com/willfaught"

alias cl 'clear'

alias cp 'cp -i'

alias dad 'date +"%d-%m-%Y"'
alias dat 'date +"%T"'

alias diff 'colordiff'

alias dsflush 'dscacheutil -flushcache'

alias dnsrestart 'sudo killall -HUP mDNSResponder'

alias dr 'docker'
alias drc 'docker-compose'
alias drm 'docker-machine'

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
alias gild 'git log --decorate short'
alias gilo 'git log --decorate short --oneline'
alias gilog 'git log --decorate short --oneline --graph'
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
alias girb 'git rebase'
alias girba 'git rebase --abort'
alias girbc 'git rebase --continue'
alias girbi 'git rebase -i'
alias girbim 'git rebase -i master'
alias girbm 'git rebase master'
alias girbom 'git rebase origin/master'
alias girs 'git reset'
alias girsh 'git reset --hard'
alias girshm 'git reset --hard master'
alias girshom 'git reset --hard origin/master'
alias girt 'git remote'
alias girta 'git remote add'
alias girtao 'git remote add origin'
alias girtrm 'git remote remove'
alias girtrn 'git remote rename'
alias girts 'git remote set-url'
alias girtsp 'git remote set-url --push'
alias girtspo 'git remote set-url --push origin'
alias girtso 'git remote set-url origin'
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
alias gol 'gometalinter --deadline 30s --enable-all --disable lll --disable test --disable testify --tests --vendor'
alias golf 'gometalinter --deadline 30s --enable-all --disable lll --disable test --disable testify --fast --tests --vendor'
alias gom 'goimports -d -w .'
alias gor 'go run *.go'
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

alias lscleanup "/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user; and killall Finder"

alias macappinfo 'codesign -dvv'
alias macappstartup 'lsal /Library/LaunchAgents /Library/LaunchDaemons /Library/StartupItems'
alias macappverify 'codesign -vv'
alias macpkgexpand 'pkgutil --expand'
alias macpkgverify 'pkgutil --check-signature'
alias macprintgatekeeper 'spctl --status'

alias mk 'make'

alias mkdir 'mkdir -p'

alias mv 'mv -i'

alias nv 'nvim'

alias prfilescommand 'sudo lsof -c'
alias prfilesestablished 'lsof -P -i4 | grep ESTABLISHED'
alias prfileslisten 'lsof -P -i4 | grep LISTEN'
alias prfilespid 'sudo lsof -p'
alias prpath "string replace -a ':' '\n' $PATH"
alias prpidsdir 'sudo lsof +d'

alias rgi 'rg -i'
alias rgni 'rg --no-ignore'

alias up1 'cd ..'
alias up2 'cd ../..'
alias up3 'cd ../../..'
alias up4 'cd ../../../..'
alias up5 'cd ../../../../..'

alias vi 'vim'

alias web 'python -m SimpleHTTPServer 8080'

# Functions

function drop-lines
  awk "{l[NR] = \$0} END {for (i=1+$1; i<=NR; i++) print l[i]}"
end

function drop-lines-last
  awk "{l[NR] = \$0} END {for (i=1; i<=NR-$1; i++) print l[i]}"
end

function gibdrb
  git checkout master; and git pull origin; and git checkout $argv[1]; and git rebase master; and git checkout master; and git branch -d $argv[1]
end

function kcrp
  kubectl run -i -t --image $argv[1] --restart Never --rm $argv[2]
end

function port
  lsof -Pn -iTCP:$argv[1]
end

function take-lines
  awk "{l[NR] = \$0} END {for (i=1; i<=$1; i++) print l[i]}"
end

function take-lines-last
  awk "{l[NR] = \$0} END {for (i=NR-$1+1; i<=NR; i++) print l[i]}"
end

function temp-cpu
  sudo powermetrics --samplers smc -i 1 -n 1 | grep -i 'CPU die temperature' | cut -d ' ' -f 4,5
end

function temp-gpu
  sudo powermetrics --samplers smc -i 1 -n 1 | grep -i 'GPU die temperature' | cut -d ' ' -f 4,5
end

function up
  cd ..
  while test (pwd) != "/"; and test (basename (pwd)) != $argv[1]
    cd ..
  end
end

# Setup

# status --is-interactive; and source (nodenv init - | psub)
# status --is-interactive; and source (pyenv init - | psub)
# status --is-interactive; and source (rbenv init - | psub)

# Local

test -r ~/.config/fish/local.fish; and source ~/.config/fish/local.fish
