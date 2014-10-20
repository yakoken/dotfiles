export LANG=ja_JP.UTF-8

#setopt prompt_subst
#PROMPT='%{'$'\e[35m%}%U%B%m$%b%{'$'\e[m%}%U%$%u '
RPROMPT='%{'$'\e[36m%}[%~]%{'$'\e[m%}'

# Setting PATH for Python 2.7
#export PATH=/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}

# MacPorts Installer addition on 2011-06-07_at_22:19:45: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:${PATH}:.
# Finished adapting your PATH environment variable for use with MacPorts.

alias cls=clear
alias openme="open ."
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias tmuxconf="vim ~/.tmux.conf"
alias macvim="mvim --remote-tab-silent"
alias scr="screen-4.1.0 -r"
alias nkg="nkf -g *"
alias nku="nkf -u --overwrite"
alias nks="nkf -s --overwrite"
alias nke="nkf -e --overwrite"
alias zim="vim ~/.zshrc"
alias zo="source ~/.zshrc"
#ls
alias l="ls -l"
alias la="ls -lAF"
alias ls="ls -G"

#server sshやscpするためのalias
source ~/.aliases/server

#java Mac用の設定
alias javac="javac -J-Dfile.encoding=UTF-8"
alias java="java -Dfile.encoding=UTF-8"
alias jar="jar -Dfile.encoding=UTF-8"
alias igo="java -cp igo-0.4.3.jar net.reduls.igo.bin.Igo ipadic"
alias hozo="cd  /Users/jun/Dropbox/k-lab/hozo/oe53_2jp ;java -cp lib/commons-httpclient.jar:lib/commons-logging.jar:lib/jdom-1.0.jar:lib/jakarta-slide-webdavlib-2.1.jar:oe5.jar hozo.oe.OntologyEditorHZ"

#export SEN_HOME=/usr/local/sen
#export CLASSPATH=${SEN_HOME}/lib/sen.jar:${SEN_HOME}/lib/commons-logging.jar:/Library/Java/Extensions/htmlparser.jar:.

#KanColle LogBook
alias logbook="java -XstartOnFirstThread -jar /Users/jun/Dropbox/KanColle/macosx-x64/logbook.jar"


export MANPATH=/opt/local/man:${MANPATH}
export ANT_HOME=/usr/local/apache-ant
if [ -z "${PATH}" ]; then
	export PATH=${PATH}:${ANT_HOME}/bin
fi

	#2012.07.02
export JavaExtensions=/Library/Java/Extensions
export Dia=/Users/jun/enshu/OpenDialogSystem
	#2012.09.06
export WEBDB=/Applications/XAMPP/xamppfiles/htdocs/webdb
export jDB=/Users/jun/Dropbox/DB/jDB
	#2012.10.05
export APP=/Applications
	#2012.10.16 ゼミに充てて
export chat=/Users/jun/Dropbox/k-lab/chat
	#2012.10.29 法造を入れたので起動用に~/sh/hozo.shを作成
export hozo=/Users/jun/Dropbox/k-lab/hozo
export hozocore=/Users/jun/Dropbox/k-lab/hozo/HozoCore_1_18_bin
	#2012.11.18
export oedata3=/Users/jun/Dropbox/k-lab/hozo/oe53_2jp/data3/
	#2012.12.30
export Product=/Users/jun/Dropbox/k-lab/Product
alias Server="java sample.ChatServer"
alias Client="java sample.ChatClient"
alias Bot="java bot.ChatBot"
alias Compile="javac bot/ChatBot.java"
	#2013.11.1
	###MySQL Path Setting
	export PATH=$PATH:/usr/local/mysql/bin

	#2013.11.12
	##Java6,7Change
alias Java6="sudo rm /Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk"
alias Java7="sudo ln -s /Users/jun/JavaVirtualMachines/jdk1.7.0_45.jdk /Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk"

	#usb unmount
alias usbumount="diskutil umount /dev/disk1s1"

	#2014.04.10 Perlの授業に宛てて
export PERL=/Users/jun/Dropbox/pg/perl

	#らーめんたいまー
source ~/.aliases/ramenTimer

#cpamnに宛てて
export PATH=$PATH:/opt/local/bin/perl

#2014.06.27 tmuxに宛てて。全開作成のセッションを開く
alias ta="tmux a"

#2014.06.30 zsh起動時にnvmをsourceする
if [[ -s /Users/jun/.nvm/nvm.sh ]] ; then
	source /Users/jun/.nvm/nvm.sh ; 
	echo "Now use nvm \c" ; 
	nvm version;
fi

#2014.07.14
hash -d vimwiki=/Users/jun/Dropbox/k-lab/vimwiki
hash -d latex=/Users/jun/Dropbox/LaTeX/
hash -d WorkSpace=/Users/jun/Dropbox/WorkSpace
hash -d plan=/Users/jun/Dropbox/WorkSpace/Research/plan_2014nagatani/

hash -d PerlMiniProject=/Users/jun/Dropbox/pg/perl/MiniProject
hash -d iPhoneBackup=/Users/jun/Library/Application\ Support/MobileSync/Backup

#ここからお遊び

# 色設定
autoload -U colors; colors

# もしかして機能
setopt correct

# PCRE 互換の正規表現を使う
setopt re_match_pcre

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

# プロンプト指定
#PROMPT="
#[%m] %{${fg[yellow]}%}%~%{${reset_color}%}
#%{${fg[magenta]}%}% %m%{${reset_color}%} %{${fg[yellow]}%}%~%{${reset_color}%}
PROMPT="
%{${fg[magenta]}%}% [%m]%{${reset_color}%}
%(?.%{${fg[green]}%}.%{${fg[blue]}%})%(?!(*'-') <!(*;-;%)? <)%{${reset_color}%} "

# プロンプト指定(コマンドの続き)
PROMPT2='[%m]> '

# もしかして時のプロンプト指定
SPROMPT="%{$fg[red]%}%{$suggest%}(*'~'%)? < もしかして %B%r%b %{$fg[red]%}かな? [そう!(y), 違う!(n),a,e]:${reset_color} "

# 右プロンプト
RPROMPT='%{'$'\e[36m%}[%~]%{'$'\e[m%}'


# 授業で使う用
alias gcc="/Users/jun/Dropbox/pg/c/c-beginner/gcc.sh"

#2014.10.20 pyenv導入
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#2014.10.20 pipで入れたbottleが動かなかったのでパス追加
export PYTHONPATH=/Users/jun/.pyenv/versions/2.7.5/lib/python2.7/site-packages
