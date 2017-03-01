#!/bin/bash
echo "Setting up alex-chou/vim."

if [ ! $(command -v curl) ] ; then
    echo "You do not have curl installed, would you like to install it?"
    select yn in "Yes" "No" ; do
        case $yn in
            Yes ) sudo apt-get -y install curl; break;;
            No ) exit;;
        esac
    done
fi

if [ -f $HOME/.vimrc ] ; then
    echo "You have an existing .vimrc. Would you like to overwrite your current .vimrc?"
    select yn in "Yes" "No" ; do
        case $yn in
            Yes ) break;;
            No ) exit;;
        esac
    done
fi

ln -sf "$(dirname "$(readlink -f "$0")")/vimrc" $HOME/.vimrc
echo "Linked $(dirname "$(readlink -f "$0")")/vimrc to $HOME/.vimrc"
