My config files
===

###git config(http://git-scm.com/book/en/Customizing-Git)
---
* 1.Example:

    `git config --system user.name 柏健`

    `git config --global user.name 柏健`

    `git config --local user.name 柏健`

* 2.File location

    /etc/gitconfig

    ~/.gitconfig

    repo/.git/config

###vim config
---
+ first should install ctags
+ .vim directory to home directory
+ .vimrc file to home directory

###bashrc config
---
####some concepts
+ /bin/bash => the bash executable
+ /etc/profile => the systemwide initialization file, executed for login shells
+ ~/.bash_profile => the personal initialization file, executed for login shells
+ ~/.bashrc => the individual per-interactive-shell startup file(it is only read by a shell that's both interactive and non-login)
+ ~/.bash_logout => the individual login shell cleanup file, executed when a login shell exits
 
    Most of time in ~/.bashr_profile, there is 
    `if [ -f ~/.bashrc ]; then 
        source ~/.bashrc
    fi`
    So, you put PATH, PS1... settings to ~/.bashrc to apply to both file.

####confs added to ~/.bashrc
    
    PS1='$(git branch &>/dev/null; if [ $? -eq 0 ]; then echo "[\[\e[0;32m\]\u\[\e[01;34m\]@\[\e[0;31m\]\h\[\e[0;33m\]\w\[\e[01;33m\](\[\e[01;34m\]$(git branch | grep ^*|sed s/\*\ //) $(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; if [ "$?" -eq "0" ]; then echo "\[\e[01;32m\]clean"; else echo "\[\e[01;31m\]dirty"; fi)\[\e[01;33m\])\[\e[0m\]]\n\[\e[01;34m\]\$\[\e[0m\]"; else echo "[\[\e[0;32m\]\u\[\e[01;34m\]@\[\e[0;31m\]\h \[\e[0;33m\]\w\[\e[m\]]\n\[\e[01;34m\]\$"; fi) \[\e[0m\]'
