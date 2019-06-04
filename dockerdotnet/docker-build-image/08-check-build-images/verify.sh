(( $(docker ps --all | grep 'test' | grep '"dir"' 2>/dev/null | wc -l) >= 1 )) && echo \"done\"

(( docker container cp $(docker ps --all --filter "ancestor=test" --quiet | head -1):/demo.ts /dev/null )) && echo \"done\" 