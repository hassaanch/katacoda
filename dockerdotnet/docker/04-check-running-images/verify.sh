(( $(docker ps -a | grep 'ubuntu:16.04' | grep 'ps' 2>/dev/null | wc -l) >= 1 )) && echo \"done\"