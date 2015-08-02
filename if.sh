if grep loremipsum < /etc/passwd; then
    ls -al /home
    echo "this if works a little different than other 'if's."
else
    echo "command did not work so well."
fi 


if [ $USER = 'ubuntu' ]; then
    echo 'I am ubuntu'
fi
