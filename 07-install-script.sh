        #!/bin/bash

        USERID$(id -u)

        if [ $USERID -ne 0 ]

        then
           echo "EORROR:: you must have suco access to execute this script"

             exit 1

        fi
           dnf list installed mysql
             if [ $? -ne 0 ]
        then

          dnf install mysql -y
             if [ $? -ne 0 ]
        then
           echo "installing MYSQL... FAILURE"
           exit 1
       else
          echo "installing MYSQL... SUCCESSFULL"


#         if [ $? -ne 0 ]

#         then

#        echo "ERROR installing mysql failure.."

#        exit 1

#        else 
#         echo "installing mysql successfull.."

#         fi
         dnf list installed git
           if [ $? -ne 0 ] 
        then
            dnf install git -y 

            if [ $? -ne 0 ]

        then
            echo "installing GIT FAILURE"
        exit 1
         else
             echo "install GIT SUCCESSFULL"


         fi


#         dnf install git -y

#        if [$? -ne 0 ]
#        then
#        echo "ERROR installing git failure..."

#        exit 1

#        else 
#     "installing git succesull..."
#     fi