function banner
  toilet -w (tput cols) $argv
end

function finish
  eval $argv; and finished $argv
end

function gibdrb
  git checkout master; and git pull origin; and git checkout $argv[1]; and git rebase master; and git checkout master; and git branch -d $argv[1]
end

function drop-lines
  awk "{l[NR] = \$0} END {for (i=1+$1; i<=NR; i++) print l[i]}"
end

function drop-lines-last
  awk "{l[NR] = \$0} END {for (i=1; i<=NR-$1; i++) print l[i]}"
end

function notify
  set command
  if test -n $argv[1]
    set command "$command with title $argv[1]"
  end
  if test -n $argv[2]
    set command "$command subtitle $argv[2]"
  end
  if test -n $argv[3]
    set command "$command sound name $argv[3]"
  end
  set command "display notification \"$argv[4..-1]\"$command"
  osascript -e $command
end

function notify-alert
  notify 'Alert' "$1" 'Ping.aiff' $argv[2..-1]
end

function notify-beginning
  note 'Beginning' $argv
end

function notify-ending
  note 'Ending' $argv
end

function notify-failed
  warning 'Failed' $argv
end

function notify-finished
  alert 'Finished' $argv
end

function notify-note
  notify 'Note' "$1" 'Pop.aiff' $argv[2..-1]
end

function notify-starting
  note 'Starting' $argv
end

function notify-stopping
  note 'Stopping' $argv
end

function notify-succeeded
  alert 'Succeeded' $argv
end

function notify-warning
  notify 'Warning' "$1" "Basso.aiff" $argv[2..-1]
end

function page
  $argv ^&1 | less -F
end

function port
  lsof -ni ":$1" | grep LISTEN
end

function take-lines
  awk "{l[NR] = \$0} END {for (i=1; i<=$1; i++) print l[i]}"
end

function take-lines-last
  awk "{l[NR] = \$0} END {for (i=NR-$1+1; i<=NR; i++) print l[i]}"
end

function up
  while test (pwd) != "/"; and test (basename (pwd)) != $argv[1]
    cd ..
  end
end
