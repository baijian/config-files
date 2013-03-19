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
    source ~/.git-completion.sh
    
    PS1="`a=$?;if [ $a -ne 0 ]; then echo -n -e "\[\e[01;32;41m\]{$a}"; fi`[\[\033[01;32m\]\u\[\033[01;34m\]@\[\033[01;31m\]\h\[\033[01;33m\]\w\[\033[01;32m\]$(__git_ps1 " (%s)")\[\e[00m\]]\n\[\033[01;34m\]\$\[\e[00m\]"
