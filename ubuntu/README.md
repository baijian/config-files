My config files
===

## [Git Config](http://git-scm.com/book/en/Customizing-Git).
---
* 1.Example:

    `git config --system user.name baijian`

    `git config --global user.name baijian`

    `git config --local user.name baijian`

* 2.File location

    /etc/gitconfig

    ~/.gitconfig

    repo/.git/config

##vim config
---
+ first should install ctags
+ .vim directory to home directory
+ .vimrc file to home directory

##bashrc config
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

```text
PS1='$(git branch &>/dev/null; if [ $? -eq 0 ]; then echo "[\[\e[0;32m\]\u\[\e[01;34m\]@\[\e[0;31m\]\h\[\e[0;33m\]\w\[\e[01;33m\](\[\e[01;34m\]$(git branch | grep ^*|sed s/\*\ //) $(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; if [ "$?" -eq "0" ]; then echo "\[\e[01;32m\]clean"; else echo "\[\e[01;31m\]dirty"; fi)\[\e[01;33m\])\[\e[0m\]]\n\[\e[01;34m\]\$\[\e[0m\]"; else echo "[\[\e[0;32m\]\u\[\e[01;34m\]@\[\e[0;31m\]\h \[\e[0;33m\]\w\[\e[m\]]\n\[\e[01;34m\]\$"; fi) \[\e[0m\]'

export CATALINA_HOME="/to/your/directory/apache-tomcat-7.0.39"
export JAVA_HOME="/usr/lib/jvm/java-6-openjdk-amd64"
export PATH=$PATH:/usr/lib/jvm/java-6-openjdk-amd64/bin

PROJECTS=$HOME/your/directory/place-android-sdk/

ANDROID_SDK=$PROJECTS/android-sdk-linux
ANDROID_SDK_TOOLS=$ANDROID_HOME/tools
ANDROID_SDK_PLATFORM_TOOL=$ANDROID_SDK/platform-tools
PATH=$PATH:$ANDROID_SDK_TOOLS:$ANDROID_SDK_PLATFORM_TOOL

export ANDROID_HOME=$ANDROID_SDK
export PATH=$PATH

alias adbk='$ANDROID_SDK_PLATFORM_TOOL/adb kill-server'
alias adbs='sudo $ANDROID_SDK_PLATFORM_TOOL/adb devices'
alias adbr='adbk && adbs'
````
