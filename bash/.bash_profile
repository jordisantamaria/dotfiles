source ~/.profile

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH=/usr/local/php5/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
alias ..='cd ..'
alias commit='git commit -am'
alias push='git push'
alias apuntesbash='cat /Users/jordisantamariaportoles/Downloads/apuntes_bash.txt'
alias editprofile='vim ~/.bash_profile'
alias saveprofile='source ~/.bash_profile'
alias ide='bash ~/scripts/ide.sh'
alias editvim='vim ~/.vimrc'
export PATH=$PATH:/Applications/calibre.app/Contents/console.app/Contents/MacOS


# Setting PATH for Python 3.9
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH
