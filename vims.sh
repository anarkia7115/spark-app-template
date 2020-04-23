#!/bin/bash
f="$1"

tmux new-session -d -s spark-shell -n scala
#tmux send-keys -t spark-shell:scala "cd /my/directory" Enter
shell_cmd="\\\"/home/gaojx/spark/bin/spark-shell --jars /home/gaojx/git/covid-19-data-analysis-spark/target/covid-19-analysis-0.1.jar\\\""
tmux send-keys -t spark-shell:scala $"vim . -c \"VimuxRunCommand($shell_cmd)\"" Enter
tmux attach -t spark-shell:scala

#vim $f -c ""
