#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la --color'
alias r='ranger'
alias gdrive='google-drive-ocamlfuse ~/Documents/GDrive'
alias connect-eduroam='sudo wpa_supplicant -c /etc/wpa_supplicant/wpa_supplicant.conf -i wlp0s20f3 -B'
alias ssh-notts='ssh hfyda2@bann.cs.nott.ac.uk'

PS1='[\u@\h \W]\$ '

# env vars
export PATH=~/scripts/bin:$PATH
export SUDO_EDITOR=vim
export GOPATH=$HOME/Workspace/go
