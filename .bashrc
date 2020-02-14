# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# git
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gst='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gci='git commit'
alias al='sudo cat /var/log/nginx/access.log | alp ltsv -c ~/alp.yml | less'
alias pt='sudo cat /var/log/mariadb/slow.log | pt-query-digest --limit 10 --report-format profile,query_report | less'
alias pp='go tool pprof -png -output ~/pprof/pprof.png http://localhost:6060/debug/pprof/profile'
alias pps='go tool pprof -png -output ~/pprof/pprof.png http://localhost:6060/debug/pprof/profile && slackcat -c 12yacropolisy -n pprof.png ~/pprof/pprof.png'
stty stop undef

alias deploy='/home/isucon/torb/webapp/go/scripts/deploy.sh'
alias applog='sudo journalctl -f -u torb.go'
