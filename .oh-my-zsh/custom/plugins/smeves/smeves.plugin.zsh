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

rjr() {
  heroku "$@" -a rjr-quikly-prod
}

rjr_staging() {
  heroku "$@" -a rjr-quikly-staging
}

newrelic() {
  if [ -n "$1" ]
  then
    heroku addons:open newrelic -a "$1"
  else
    heroku addons:open newrelic -a quikly-prod
  fi
}

librato() {
  if [ -n "$1" ]
  then
    heroku addons:open librato -a "$1"
  else
    heroku addons:open librato -a quikly-prod
  fi
}

logentries() {
  if [ -n "$1" ]
  then
    heroku addons:open logentries -a "$1"
  else
    heroku addons:open logentries -a quikly-prod
  fi
}

alias h='heroku'
alias f='heroku local -f Procfile.local'
alias redis='redis-cli -h $BOXEN_REDIS_HOST -p $BOXEN_REDIS_PORT'
