#
# ~/.bashrc
#

# doas tab completion
complete -cf doas
# terminal VI mode
set -o vi


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ls setup
alias ls='ls --color'
LS_COLORS='di=01;36:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=32:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=0;34:*.docx=00;34:*.odt=00;34:*.csv=02:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=00;35:*.mp3=106'
export LS_COLORS

# Aliases
alias d='/home/kiryuin/.scripts/dockUdock.sh'
alias rstudio='rstudio-bin --no-sandbox'
alias g='/home/kiryuin/.scripts/rclone.sh'
alias r='/home/kiryuin/.scripts/redshift.sh'
alias network='/home/kiryuin/Linux/git/networkmanager-dmenu/networkmanager_dmenu'
alias update='doas pacman -Syu'
alias work='/home/kiryuin/.scripts/workTime.sh'
alias s='systemctl suspend'
alias z='zathura'
alias cim='nvim --clean'
alias amount='/home/kiryuin/.scripts/mtpAndroid.sh'

PS1='[\u@\h \W]\$ '

#An additional paths for Arduino IDE to work as needed for ee109 course.
export PATH=/usr/local/bin:/usr/local/avr/bin:$PATH:/home/kiryuin/.cargo/bin:~/.local/bin

export LEDGER_FILE=~/Documents/Finances/2022.journal
