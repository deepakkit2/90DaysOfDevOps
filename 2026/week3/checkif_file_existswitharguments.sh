#checking if file exists with arguments passed to the script file
if [$# -eq 0 ] # dolar hash calculates total no . of arguments.
then
echo "please pass an argument"
exit 1
fi
if [ -f $1 ] # this will check if the file exists or not. if the file exists then it will print the message "file exists" otherwise it will print "file does not exist"
then
echo "file exisits"
else
echo "file does not exist"
fi
