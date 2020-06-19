#usr/bin/bash
clear
echo '   ____ _     _    ____      _'   
echo '  / ___(_)___| |_ / ___|__ _| |_'
echo ' | |  _| / __| __| |   / _` | __|'
echo ' | |_| | \__ \ |_| |__| (_| | |_ '
echo '  \____|_|___/\__|\____\__,_|\__|'
echo
echo '=================================='
echo
echo
echo
read -p"[ Write Your Gist ] : " gistcat
echo
echo
echo $gistcat >gistcat.txt
read -p"[ File Name ] : " cat
mv gistcat.txt $cat
echo
gist --login
echo
gist $cat
rm -rf $cat
sh run.sh
