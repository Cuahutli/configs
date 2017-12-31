#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] '
. ~/.bash_prompt2
alias cd..="cd .."
alias path="echo -e ${PATH//:/\\n}"
alias ping="ping -c 5"
alias task="ps aux |grep "
alias ls="ls --color=auto"
#alias projects="cd /media/sf_projects/dev"


