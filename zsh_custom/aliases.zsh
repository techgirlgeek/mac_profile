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
alias evalbundle='eval "$(<env.sh)"'
alias clear_dns='sudo killall -HUP mDNSResponder; sleep 2; echo macOS DNS Cache Reset'
alias morpa_rvm='rvm use ruby-2.3.3'

# Vagrant
alias vssh="vagrant ssh "
alias vup="vagrant up "
alias vdestroy="vagrant destroy "
alias vprov="vagrant provision "
alias vstat="vagrant status"
alias vhalt="vagrant halt "

# K8s aliases
alias k='kubectl'
alias kns='kubens'
alias knx='kubectx'
alias kpon='kubeon'
alias kpoff='kubeoff'
alias ke='k get events --sort-by={.lastTimestamp}'
alias kpodw='k get pods -o wide'
alias kpod='k get pods'
alias kpvc='k get pvc'
alias kpvcd='k describe pvc '

# Elastic
alias cerebro='docker run -p 9000:9000 lmenezes/cerebro'

# LDAP
alias myldap='ldapsearch -o ldif-wrap=no  -H ldaps://den3ha.adldap.davita.corp/ -b dc=davita,dc=corp -D kcassio@davita.corp -W "(samAccountName=kcassio" memberof'

mbrldap() {
  # Defaults to current user
  if [ -z ${1} ]; then
    export TM=${USER}
  else
    export TM=${1}
  fi

  echo "Teammate is ${TM}"
  ldapsearch -o ldif-wrap=no  -H ldaps://den3ha.adldap.davita.corp/ -b dc=davita,dc=corp -D kcassio@davita.corp -W "(samAccountName=${TM})" memberof
}

# Vault
setvtoken() {
  if [ -z ${VAULT_TOKEN+x} ]; then
    echo "VAULT_TOKEN is unset, log in to set"
    export VAULT_TOKEN=$(vault login -field=token -method=ldap username=kcassio)
  else
    echo "VAULT_TOKEN is set, continuing..."
  fi
}

# Artifactory CLI
alias artifactoryport="ssh 10.9.35.205 -L 1178:localhost:1178"
# CLI Command: jfrog rt u sourcefile target_repo/target_file
# brew install jfrog-cli
jfup() {
  # Show current config
  jfrog rt c show
  # Argument $1 file to upload
  # Argument $2 repo in Artifactory
  jfrog rt u ${1} ${2}/${1}
}

# Clear config and update configs/pwd
alias jfreset='jfrog rt c clear && jfrog rt c'

# Make sure right version of ruby
alias get-morpheus='rvm use 2.7.0;which morpheus'
