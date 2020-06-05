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
        echo "cloning into $repo..."
        git clone "$pre$repo" -q
        cd $repo
        chmod +x "$repo.py"
        cd ..
      done
    echo '(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧ my projects in:'
    pwd
    ;;
  2)
    rm -r -f cyberdemon
    echo '(；⌣̀_⌣́) Deleted...'
    ;;
esac
