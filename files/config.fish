# Variables

set -gx EDITOR nvim
set -gx GOPATH "$HOME/Library/Application Support/go"
set -gx PATH /opt/homebrew/bin /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/sbin /sbin $GOPATH/bin

# Aliases

alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'
alias ...... 'cd ../../../../..'

alias br 'brew'
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

alias cdb "cd $HOME/Developer/willfaught.github.io"
alias cdd "cd $HOME/Developer"
alias cdp "cd $HOME/Developer/paige"
alias cds "cd $HOME/Developer/setup"

alias cl 'clear'

alias cp 'cp -i'

alias cu 'curl --show-error --silent'

alias diff 'colordiff'

alias dr 'docker'

alias dig 'dig @8.8.8.8 +noall +answer +multiline'

alias gia 'git add'
alias giax 'git add *'
alias giap 'git add -p'
alias giapx 'git add -p *'
alias gib 'git branch'
alias gibd 'git branch -d'
alias gibdf 'git branch -D'
alias gic 'git checkout'
alias gicb 'git checkout -b'
alias gicl 'git clone'
alias gicm 'git checkout master'
alias gicmn 'git checkout main'
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
alias gidcw 'git diff --cached --word-diff=color'
alias gidm 'git diff master'
alias gidom 'git diff origin/master'
alias gidomn 'git diff origin/main'
alias gidw 'git diff --word-diff=color'
alias gif 'git fetch'
alias gifo 'git fetch origin'
alias gil 'git log'
alias gilo 'git log --oneline'
alias gilog 'git log --oneline --graph'
alias gim 'git merge'
alias gima 'git merge --abort'
alias gimc 'git merge --continue'
alias gip 'git pull'
alias gipp 'git pull; and git push'
alias gipu 'git push'
alias gir 'git rm'
alias girb 'git rebase'
alias girba 'git rebase --abort'
alias girbc 'git rebase --continue'
alias girbi 'git rebase -i'
alias girbim 'git rebase -i master'
alias girbimn 'git rebase -i main'
alias girbm 'git rebase master'
alias girbmn 'git rebase main'
alias girbtmn 'git rebase --strategy-option theirs main'
alias girbom 'git rebase origin/master'
alias girbomn 'git rebase origin/main'
alias girbotmn 'git rebase --strategy-option theirs origin/main'
alias girs 'git reset'
alias girsh 'git reset --hard'
alias girshm 'git reset --hard master'
alias girshmn 'git reset --hard main'
alias girshom 'git reset --hard origin/master'
alias girshomn 'git reset --hard origin/main'
alias girsl 'git reset HEAD^'
alias girt 'git remote'
alias girta 'git remote add'
alias girts 'git remote set-url'
alias girtv 'git remote -v'
alias gis 'git status'
alias gish 'git show'
alias gishw 'git show --word-diff=color'
alias gist 'git stash'
alias gistd 'git stash drop'
alias gistp 'git stash pop'

alias gob 'go build ./...'
alias gobv 'go build -v ./...'
alias god 'go doc'
alias godu 'go doc -u'
alias gof 'go fmt ./...'
alias gog 'go generate ./...'
alias goi 'go install ./...'
alias gom 'go mod'
alias gomt 'go mod tidy'
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

alias vi 'nvim'

alias vif 'nvim ~/.config/fish/config.fish; test -r ~/.config/fish/config.fish; and source ~/.config/fish/config.fish; true'
alias vifl 'nvim ~/.config/fish/local.fish; test -r ~/.config/fish/local.fish; and source ~/.config/fish/local.fish; true'

# Functions

function cuj
  curl -Ss -H 'Accept: application/json' -H 'Content-Type: application/json' $argv | jq
end

function gibdrbm
  git checkout master
  and git pull origin
  and git checkout $argv[1]
  and git rebase master
  and git checkout master
  and git branch -d $argv[1]
end

function gibdrbmn
  git checkout main
  and git pull origin
  and git checkout $argv[1]
  and git rebase main
  and git checkout main
  and git branch -d $argv[1]
end

function giprbm
  set -l branch (git branch --show-current)
  git checkout master
  and git pull origin
  and git checkout $branch
  and git rebase master
end

function giprbmn
  set -l branch (git branch --show-current)
  git checkout main
  and git pull origin
  and git checkout $branch
  and git rebase main
end

function git-rename
  for old_file in $argv[3..-1]
    set new_file (echo $old_file | perl -pe "s/$argv[1]/$argv[2]/")
    if test $old_file != $new_file
      git mv $old_file $new_file
    end
  end
end

function kcrp
  kubectl run -i -t --image $argv[1] --restart Never --rm $argv[2]
end

function lines-drop
  sed -E "1,$argv[1]d"
end

function lines-drop-if
  egrep -v $argv[1]
end

function lines-drop-last
  sed -E -n -e :a -e "1,$argv[1]!{P;N;D;};N;ba"
end

function lines-drop-while
  awk "{ if (\$0 !~ /$argv[1]/) start = 1; if (start) print \$0; }"
end

function lines-take
  head -n $argv[1]
end

function lines-take-if
  egrep $argv[1]
end

function lines-take-last
  tail -n $argv[1]
end

function lines-take-while
  sed -E -n "/$argv[1]/p;/$argv[1]/!q"
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

function rename
  for old_file in $argv[3..-1]
    set new_file (echo $old_file | perl -pe "s/$argv[1]/$argv[2]/")
    if test $old_file != $new_file
      mv $old_file $new_file
    end
  end
end

function repeat
  argparse -n repeat 'n=' -- $argv
  or return
  if set -q _flag_n
    for x in (seq 1 $_flag_n)
      $argv
    end
  else
    while true
      $argv
    end
  end
end

function replace
  find . ! -name .DS_Store -type f -exec sed -E -i '' -e "s/$argv[1]/$argv[2]/g" {} \;
end

function search
  rg -e $argv[1] $argv[2..-1]
end

function up
  cd ..
  while test (pwd) != "/"; and test (basename (pwd)) != $argv[1]
    cd ..
  end
end

# Local

test -r ~/.config/fish/local.fish; and source ~/.config/fish/local.fish
