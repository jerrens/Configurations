# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# Add Helper Shell scripts to path
PATH="$PATH:$HOME/code/shell"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#export PS1='[\u@\h:\w]\$ '
#export PS1="\e[0;32m[\t] \u@\h \e[0;33m\w\e[0;32m>\$\e[m " # [Time] Username@Hostname PWD>$
# export PS1='\[\e[0;32m\][\t]\[\e[0m\] \[\e[0;36m\]\u\[\e[0m\]@\[\e[0;34m\]\h\[\e[0m\] \[\e[0;37m\]\w\[\e[0m\]\[\e[0;32m\]>\$\[\e[0m\] '
export PS1='\[\e[0;32;3m\][\t] \[\e[0;36m\]\u\[\e[0m\]@\[\e[0;34m\]\h \[\e[0;37;3m\]\w\[\e[0;32m\]>\$\[\e[0m\] '
export PS2='           \[\e[0;32m\]>\[\e[m\]  '
export PS4='           \[\e[0;32m\]+\[\e[m\]  '

# Other available prompt codes
# \t - Current time in HH:MM:SS (24h format)
# \A - Current time in HH:MM (24h format)
