# constants
DEFCMD='null'
BASE_URL='https://raw.githubusercontent.com/RavinduSachintha/PurePM/master/base/'

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
	curl -LO "${BASE_URL}Makefile"
	mkdir pure_pkgs && cd pure_pkgs
	curl -LO "${BASE_URL}pure_pkgs/Makefile"
	cd .. && mkdir src && cd src
	curl -LO "${BASE_URL}src/Makefile"
	curl -LO "${BASE_URL}src/main.c"
	cd .. && mkdir dist
}

# program
main ${1:-$DEFCMD}
