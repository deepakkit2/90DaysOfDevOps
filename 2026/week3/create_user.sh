<< usage
— take user name as input
— take password as inpvt
- check if the user already exists or not
— create the user
usage
read -p " enter the username" username
read -p "enter the password" password
if id "$username" &>/dev/null; # here and greator basically redirects the output to devnull and return true or false.
then
echo "The user $username exists, exiting the script"
exit 1
else
echo "The user $username does not exist and will be created. "
fi

sudo useradd -m $username -p $password
echo "user $username added successfully"