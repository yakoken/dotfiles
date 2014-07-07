export LANG=ja_JP.UTF-8

setopt prompt_subst
PROMPT='%{'$'\e[35m%}%U%B%m$%b%{'$'\e[m%}%U%$%u '
RPROMPT='%{'$'\e[36m%}[%~]%{'$'\e[m%}'

# Setting PATH for Python 2.7
export PATH=/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}

# MacPorts Installer addition on 2011-06-07_at_22:19:45: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:${PATH}:.
# Finished adapting your PATH environment variable for use with MacPorts.

alias macvim="mvim --remote-tab-silent"
alias scr="screen-4.1.0 -r"
alias nkg="nkf -g *"
alias nku="nkf -u --overwrite"
alias nks="nkf -s --overwrite"
alias nke="nkf -e --overwrite"
alias zim="vim ~/.zshrc"
alias zource="source ~/.zshrc"
#ls
alias l="ls -l"
alias la="ls -lAF"
alias ls="ls -G"

#server sshやscpするためのalias
source .aliases/server

#java
alias javac="javac -J-Dfile.encoding=UTF-8"
alias java="java -Dfile.encoding=UTF-8"
alias jar="jar -Dfile.encoding=UTF-8"

export JavaExtensions=/Library/Java/Extensions
export Dia=/Users/yakoken/enshu/OpenDialogSystem
#MySQL Path Setting
export PATH=$PATH:/usr/local/mysql/bin

##Java6,7切り替え用
alias Java6="sudo rm /Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk"
alias Java7="sudo ln -s /Users/yakoken/JavaVirtualMachines/jdk1.7.0_45.jdk /Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk"

#usb unmount
alias usbumount="diskutil umount /dev/disk1s1"

	#らーめんたいまー
source .aliases/ramenTimer

#cpamnに宛てて
export PATH=$PATH:/opt/local/bin/perl

#tmuxに宛てて。前回のセッションを開く
alias ta="tmux a"

#2014.06.30 zsh起動時にnvmをsourceする
if [[ -s /Users/yakoken/.nvm/nvm.sh ]] ; then
	source /Users/yakoken/.nvm/nvm.sh ; 
	echo "Now use nvm \c" ; 
	nvm version;
fi
