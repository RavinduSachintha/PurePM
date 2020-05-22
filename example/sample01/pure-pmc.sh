echo "####### Pure-PM C-Client #######"
echo

echo "What do you need ?"
echo -e " - 1. compile(object files)"
echo -e " - 2. executable"
echo -e " - 3. clean"

read -p "Your choice : " varChoice

echo "--------------------------------"

if [ $varChoice -eq '1' ]
then 
	make compile
elif [ $varChoice -eq '2' ]
then 
	make exec
elif [ $varChoice -eq '3' ]
then 
	make clean
else 
	echo 'Please, make a correct a choice :-)'
fi
