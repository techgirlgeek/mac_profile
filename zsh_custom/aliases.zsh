alias lstr='ls -ltrh'
alias ll='ls -lh'
alias workshuttle="source /Users/kcassio/.zshrc;sshuttle -r kcassio@sea1l3vipcj01.davita.corp `dig drupal.slack.com | egrep "^drupal" | awk '{print \$5}'`/32 10.9.0.0/16 10.10.0.0/16"
alias homeshuttle='sshuttle -r kcassio@sea1l3vipcj01.davita.corp 10.9.0.0/16 10.10.0.0/16'
alias ddig="dig drupal.slack.com | egrep "^drupal" | awk '{print \$5}'"
alias sourcez="source /Users/kcassio/.zshrc"
