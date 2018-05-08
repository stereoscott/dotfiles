s() { cd ~/src/$1; }
_s() { _files -W ~/src -/; }
compdef _s s

c() { cd ~/Code/$1; }
_c() { _files -W ~/Code -/; }
compdef _c c

mcd() { /usr/local/bin/memcached -d; }

prod() {
  heroku "$@" -a quikly-prod
}

staging() {
  heroku "$@" -a quikly-staging
}

alias h='heroku'
alias f='heroku local -f Procfile.dev'
alias redis='redis-cli -h $BOXEN_REDIS_HOST -p $BOXEN_REDIS_PORT'
alias scale='~/src/heroku-scaler/scaler.rb'
alias le='heroku addons:open logentries -a quikly-prod'