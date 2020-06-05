# made by https://github.com/CyberDemon-crypto
clear
sys='apt-get'
$sys install git

pre='https://github.com/CyberDemon-crypto/'
repos=($pre'Vowels_Consonants' $pre'P2P' $pre'matrix')

echo [1]Install
echo [2]Delete
read option
cd $HOME

case $option in
1)
mkdir cyberdemon
cd cyberdemon
for repo in ${repos[*]}
do
git clone "$repo"
done
clear
echo '(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧ my projects in:'
pwd
;;
2)
clear
rm -r -f cyberdemon
echo '(；⌣̀_⌣́) Deleted...'
;;
esac