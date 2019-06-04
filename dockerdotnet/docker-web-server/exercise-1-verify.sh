(( $(docker ps -a | grep 'nginx' | grep '4000->80' 2>/dev/null | wc -l) >= 1 )) && echo \"done\"
