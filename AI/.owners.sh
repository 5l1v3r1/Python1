clear
echo "You are about to access the restricted owners panel (y-yes n-no)"
read ans
if [ $ans = 'y' ]
then
  echo "Okay"
else
  echo "goodbye"
  exit
fi
echo "Please enter your owners id"
read input
pass=$(echo "$input" | openssl enc -base64)
if [ "$pass" = 'MTgxMgo=' ] 
then
  echo "Welcome Nathan"
elif [ "$pass" = 'MTIxOAo=' ]
then
  echo "Welcome Gy"
  else
  echo "Incorrect"
  exit 
fi
echo "What would you like to view?"
read view
if [ $view = 'users' ]
then
  echo $1
  else 
  echo "No support"
  exit
fi
