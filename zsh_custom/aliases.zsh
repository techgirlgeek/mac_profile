alias lstr='ls -ltrh'
alias ll='ls -lh'
alias workshuttleS="source /Users/kcassio/.zshrc;sshuttle -r kcassio@sea1l3vipcj01.davita.corp \`dig +search +short slack.com\`/32 10.9.0.0/16 10.10.0.0/16 10.12.0.0/16"
alias workshuttleD="sshuttle --dns -r kcassio@den3l1cliqa74077.davita.corp 0/0" 
alias homeshuttle='sshuttle -r kcassio@sea1l3vipcj01.davita.corp 10.9.0.0/16 10.10.0.0/16 10.12.0.0/16'
alias homeshuttleD='sshuttle --dns -r kcassio@den3l1cliqa74077.davita.corp 0/0'
alias ddig="dig +search +short drupal.slack.com"
alias sourcez="source /Users/kcassio/.zshrc"
alias gitprunedry="git remote prune origin --dry-run"
alias gitprune="git remote prune origin"
alias vssh="vagrant ssh "
alias vup="vagrant up "
alias vdestroy="vagrant destroy "
alias vprov="vagrant provision "
alias vstat="vagrant status"
alias vhalt="vagrant halt "
alias artifactoryport="ssh 10.9.35.205 -L 1178:localhost:1178"
alias evalbundle='eval "$(<env.sh)"'
alias clear_dns='sudo killall -HUP mDNSResponder; sleep 2; echo macOS DNS Cache Reset'
alias morpa_rvm='rvm use ruby-2.3.3'

# K8s aliases
alias k='kubectl'
alias kns='kubens'
alias knx='kubectx'
alias kpon='kubeon'
alias kpoff='kubeoff'
alias ke='k get events --sort-by={.lastTimestamp}'
alias kpodw='k get pods -o wide'
alias kpod='k get pods'

# Elastic
alias cerebro='docker run -p 9000:9000 lmenezes/cerebro'

# LDAP
alias myldap='ldapsearch -o ldif-wrap=no  -H ldaps://den3ha.adldap.davita.corp/ -b dc=davita,dc=corp -D kcassio@davita.corp -W "(samAccountName=kcassio)" memberof'
#alias userldap='ldapsearch -o ldif-wrap=no  -H ldaps://den3ha.adldap.davita.corp/ -b dc=davita,dc=corp -D kcassio@davita.corp -W "(samAccountName=$1)" memberof'
#userldap() {
#    ldapsearch -o ldif-wrap=no  -H ldaps://den3ha.adldap.davita.corp/ -b dc=davita,dc=corp -D kcassio@davita.corp -W "(samAccountName=$1)" memberof
#}
alias mytest="echo Make it say: $1"
