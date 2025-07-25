        #!/bin/bash

        USERID$(id -u)

        if [ $USERDID -ne 0 ]

        then

        echo "EORROR:: you must have suco access to execute this script"

        exit 1

        fi

        dnf install mysql -y

        if [ $? -ne 0 ]

        then

       echo "ERROR installing mysql failure.."

       exit 1

       else 
        echo "installing mysql successfull.."

        fi
        dnf install git -y

       if [$? -ne 0 ]
       then
       echo "ERROR installing git failure..."

       exit 1

       else 
    "installing git succesull..."
    fi