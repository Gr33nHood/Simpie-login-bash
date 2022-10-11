!/bin/bash
trap '' 2
X=0
read -p "Username: " username
until [ $X -gt 3 ]
        do
                read -s -p "Password: " password
                echo
                read -s -p "Password again: " password2
                echo
[ "$password" = "123" ] && [ "$password2" = "321" ] && [ "$username" = "green" ] && echo -e \nI'm in lets the hacking begin" && break || echo "try again" && ((X=X+1))

if [ $X = 3 ]
then
kill -9 $PPID
fi

done
trap 2




