

echo " this will install the app with arguments passed to the script file"
echo "the first argument is $1, installing $1"
sudo apt install $1 -y
sudo "installed successfully $1"
echo "total arguments passed to the script file is $#" # kitne aadmi the
echo "all the arguments passed to the script file are $@"   # sabhi arguments print karne ke liye

