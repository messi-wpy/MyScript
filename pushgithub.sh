# !/bin/bash
git add .
git status

echo "输入commit message(输入q退出):"
read message

if [  $message != 'q' ] 
then
  git commit -m "$message"
  git push origin master
else
  echo"exit!"
fi


