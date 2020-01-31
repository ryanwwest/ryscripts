# kill specified port
kp() { lsof -ti:"$@" | xargs kill -9; }
