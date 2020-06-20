#usr/bin/bash
if [ -f /data/data/com.termux/files/home/.gem/specs/rubygems.org%443/quick/Marshal.4.8/gist-5.1.0.gemspec ];
  then
      clear
  else
      echo " [!] gist not found !"
      echo ""
      echo " Installing Gist"
      pkg install ruby -y
      gem install gist
      echo "installation of Gist ......DONE !"
  fi
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
clear
echo '   ____ _     _    ____      _'   
echo '  / ___(_)___| |_ / ___|__ _| |_'
echo ' | |  _| / __| __| |   / _` | __|'
echo ' | |_| | \__ \ |_| |__| (_| | |_ '
echo '  \____|_|___/\__|\____\__,_|\__|'
echo
echo '=================================='
echo
echo [ 1 ] Run Again
echo [ 2 ] Update GistCat
echo [ 3 ] Exit
echo
read -p"[ ? ] Choose : " tab


if [ $tab = 1 ]
then
clear
sh run.sh
fi

if [ $tab = 2 ]
then
clear
cd
rm -rf GistCat
git clone https://github.com/hadiislam/GistCat
chmod +x *
sh run.sh
fi

if [ $tab = 3 ]
then
clear
exit
fi
