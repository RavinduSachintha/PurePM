# constants
DEFCMD='null'

# global variables: CMD, PWD

# main function
main() {
	CMD=$1
	PWD=$('pwd')
	checkCommands $CMD
}

# check input commands
checkCommands() {
	if [ $CMD == 'init' ]
	then 
		init
	fi
}

# init process
init() {
	echo "****** PurePM C-Client ******"
	echo "-----------------------------"
	echo " - Project initilizing at $PWD"
	mkdir pure_pkgs
	mkdir src
	mkdir dist
}

# program
main ${1:-$DEFCMD}

#echo "####### Pure-PM C-Client #######"
#echo

#echo "What do you need ?"
#echo -e " - 1. compile(object files)"
#echo -e " - 2. executable"
#echo -e " - 3. clean"

#read -p "Your choice : " varChoice

#echo "--------------------------------"

#if [ $varChoice -eq '1' ]
#then 
#	make compile
#	echo Hello
#elif [ $varChoice -eq '2' ]
#then 
#	make exec
#	echo Hello
#elif [ $varChoice -eq '3' ]
#then 
#	make clean
#	echo Hello
#else 
#	echo 'Please, make a correct a choice :-)'
#fi
