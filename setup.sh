#!/bin/bash
# made by https://github.com/CyberDemon-crypto
sys=$(lsb_release -si)

case $sys in
  ManjaroLinux|ArchLinux)
    pamac install git
    ;;
  *)
    apt-get install git
    ;;
esac

pre='https://github.com/CyberDemon-crypto/'
repos=('vowels_consonants' 'P2P' 'matrix')
clear
echo [1]Install
echo [2]Delete
read option
cd $HOME
clear

case $option in
  1)
    mkdir cyberdemon
    cd cyberdemon
    for repo in ${repos[*]}
      do
        printf "cloning into \u001b[95m%s$repo\u001b[0m...\n"
        git clone "$pre$repo" -q
        cd $repo
        chmod +x "$repo.py"
        cd ..
        printf '\u001b[1A\u001b[93mInstalled                                                                               \u001b[0m\n'
      done
    printf "(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧ \u001b[32mmy projects in:\n\u001b[97m%s$(pwd)\u001b[0m\n"
    ;;
  2)
    rm -r -f cyberdemon
    printf '(；⌣̀_⌣́) \u001b[91mDeleted\u001b[97m...\u001b[0m\n'
    ;;
esac
