# /bin/bash
# this is a  simple script to create a new user on the local training hardware
# and ensure the user has required materials in the home-directory

# throw and error if no arguments are provided
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "Usage: ./setup_student_vm.sh <USERNAME> <HOST_IP>"
    exit 1
fi

# first argument of the script is the username
USERNAME=$1
# second argument is the IP of the student-vm
HOST_IP=$2

echo "USERNAME=`echo $USERNAME`"
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo "HOST_IP=`echo $HOST_IP`"
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

# execute commands over ssh
