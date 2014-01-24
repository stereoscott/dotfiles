s() { cd ~/src/$1; }
_s() { _files -W ~/src -/; }
compdef _s s

c() { cd ~/Code/$1; }
_c() { _files -W ~/Code -/; }
compdef _c c

mcd() { /usr/local/bin/memcached -d; }

alias h='heroku'