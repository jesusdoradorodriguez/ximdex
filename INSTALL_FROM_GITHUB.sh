#!/bin/bash

  #####                                           #####  
 ###   Shell script for downloading and installing   ### 
###  Open Source Semantic CMS XIMDEX (www.ximdex.com) ###
 ###       (C) 2014 Open Ximdex Evolution SL         ### 
  #####                                           #####  


# INITIAL VARS
REPO_HOME="https://github.com/juanpri/ximdex/archive/"
REPO_BRANCH="develop"
SCRIPT1="1-MoveXimdexToDocRoot.sh"
SCRIPT2="2-AddXimdexToCrontab.txt"

# FOR AUTOMATIC INSTALLS
export AUTOMATIC_INSTALL=0
export CONFIG_FILE=""

# OPTIONS
INST_STEP=1
DO_DOWNLOAD=1
MOVEASROOT=0
 
# Trap ctr-c to activate back "echo" in terminal
trap ending SIGINT
trap ending SIGKILL

# Subroutines (Look for SCRIPT START to go to the beginning)

function ending() {
    echo ""
    echo "GOODBYE!"
    stty echo
    exit 1;
}

function usage() {
    echo "Usage: $0 [-h] [-d] [-a config_file] [-n ximdex_instance_name] [-t web_server_root_path] [-b branch]"
    echo "       Option -h for help"
    echo "       Option -d to skip download"
    echo "       Option -a to automatically install Ximdex using parameters from File"
    echo "       Option -t to assign web server root (where ximdex will reside)" 
    echo "       Option -n to assign instance name (default: ximdex)"
    echo "       Option -b to assign branch to download (default: master)"
}

function step_increase() {
    INST_STEP=`expr $INST_STEP + 1`
}

function step_decrease() {
    INST_STEP=`expr $INST_STEP - 1`
}

function LimpiaSlashes() {
	local mycad=$1
	# remove repeated slashes
	while [[ $mycad =~ "//" ]]; do
		mycad=$(echo $mycad | sed -e "s,//,/,g")
	done
	# remove last slash (collateral effect: remove ending spaces too)
	mycad=$(echo $mycad | sed -e "s,/$,,g")
	echo $mycad
}

function myquestion() {
    myquestion="$1"
    mydefault=${2-'@'}
  
    if [ $mydefault == "y" ] || [ $mydefault == "Y" ]
    then
        mydefault="Y"
        mycadena="(Y/n)"
    elif [ $mydefault == "n" ] || [ $mydefault == "N" ]
    then
        mydefault="N"
        mycadena="(y/N)"
    else
        mydefault=""
        mycadena="(y/n)"
    fi
  
    myoption=''
    ANSWER=""
    while [ "$myoption" != 'Y' ] && [ "$myoption" != 'y' ] && [ "$myoption" != 'n' ] && [ "$myoption" != 'N' ]
    do
        echo -n  "- $myquestion $mycadena? "
        read myoption
        if [ -n $mydefault ] && [ "$myoption" == '' ]; then
            myoption=$mydefault
        fi
    done
  
    if  [ "$myoption" == 'Y' ] || [ "$myoption" == 'y' ]; then
        ANSWER="Y"
    else
        ANSWER="N"
    fi
}


function CreateScriptToSetPermsAndMove() {
    XIMDEX_PATH="$REPO_NAME"
    declare -a arr_command=()
    
    arr_command+=("echo -n 'RUNNING GENERATED SCRIPT AS '\n")
    arr_command+=("whoami\n\n")

    arr_command+=("if [ -d $XIMDEX_TARGET_DIR ]; then\n")
    arr_command+=("  echo \"TARGET DIRECTORY $XIMDEX_TARGET_DIR EXISTS!!!\"\n")
    arr_command+=("  echo \"Please, remove it and run the script as root again.\"\n")
    arr_command+=("  exit 0\n")
    arr_command+=("fi\n\n\n")

    command="chown -R ${USER_APACHE}:${GROUP_APACHE} ./${REPO_NAME}"
    arr_command+=("$command\n")

    #command="chmod -R u+x ./$REPO_NAME/install/*sh ./$REPO_NAME/install/scripts/*.sh"
    #arr_command+=("$command\n")

    command="mv ./${REPO_NAME} $DOCROOT"
    arr_command+=("$command\n")

    
    echo -e "\nCreating script for setting ownership and permissions for $REPO_NAME ..."

    echo "#!/bin/bash" > $SCRIPT1

    echo "" >> $SCRIPT1
    echo "# BASH FILE AUTOMATICALLY GENERATED BY XIMDEX INSTALL TO BE RUN AS ROOT" >> $SCRIPT1
    echo "" >> $SCRIPT1
    echo "# Verify that target directory $DOCROOT is a directory" >> $SCRIPT1
    echo "# Verify that target directory $XIMDEX_TARGET_DIR does not exist" >> $SCRIPT1
    echo "" >> $SCRIPT1
    echo -e " ${arr_command[*]}" >> $SCRIPT1

    if [ -e $SCRIPT1 ]; then
        echo -e "Script $SCRIPT1 created.\n"
    else
        echo "Can not create $SCRIPT1 file. I need writting permission here:"
        pwd -P
    fi
    
    chmod +x $SCRIPT1
}

function RunScriptAsRoot() {
    if [ $USER_UNIX != 'root' ]; then
        echo "Running through sudo. Enter your password when requested..."
        sudo bash ./$SCRIPT1 2> /dev/null
        if [ $? -ne 0 ]; then 
            echo "Can not run via sudo. Trying as root direclty. Enter password for root when requested..."
            su -c "bash ./$SCRIPT1 2> /dev/null"
        fi
    fi
}

function SetDocRootForXimdex() {
	
	echo "Determining Apache user and group... "
	GROUP_APACHE="`ps -eo 'group args'|grep 'httpd\|apache' |grep 'start\|bin'|grep -v grep|grep -v root|grep -v USER|awk 'NR<=1 {print $1; }'|cut -d ' ' -f 1,1 `"
	USER_APACHE="`ps -eo 'user args'|grep 'httpd\|apache' |grep 'start\|bin'|grep -v grep|grep -v root|grep -v USER|awk 'NR<=1 {print $1; }'|cut -d ' ' -f 1,1 `"
		
	#if [ -z $USER_APACHE ]; then
	#	echo "Can not get the User for Web Server... using your 'username' instead..."
	#	USER_APACHE=$USER_UNIX
	#fi
	#if [ -z $GROUP_APACHE ]; then
	#	echo "Can not get the Group for Web Server... using your 'group' instead..."
	#	GROUP_APACHE=$GROUP_UNIX
	#fi
	
	#GROUP_APACHE=${GROUP_APACHE:-$USER_APACHE}
		
	# Determining apache directory
	apache_conf_file=`find /etc -name httpd.conf 2>/dev/null`
	apachefile=$(basename "$apache_conf_file" )
	apachedir=$(dirname "$apache_conf_file" )
	
	APACHE_DOCROOT=$(grep -rho "DocumentRoot.*" /etc/apache2 | sed "s/DocumentRoot\s\+//" | sort | uniq | tr "\n" " ")
	
	echo -e "\nXimdex is a web app and it has to be deployed under your web document root ..."
	
	# Choose parameters for final installation
	declare -a arr_dires=( $(echo "$APACHE_DOCROOT") )
	declare -a arr_DOCROOTS=()
	for dire in "${arr_dires[@]}"
	do
		if [ -d "$dire" ]; then
			arr_DOCROOTS+=("$dire")
		fi
	done
	
	docrootask=0
	if [ "${#arr_DOCROOTS[@]}" -ne "0" ]; then
		echo "We have located some suitable directories to install Ximdex."
		echo "Please, choose one of them or select 'none' to ask you for a target directory."
		echo ""
		echo "Select a target directory for Ximdex:"
		echo ""
	
		arr_DOCROOTS=( $(echo "$APACHE_DOCROOT") "None of these. I'll write the target path directly." )
		i=1
		for dire in "${arr_DOCROOTS[@]}"
		do
			echo "$i. $dire"
			i=$(expr $i + 1)
		done
	
	
		option=0
		while [ -z $option ] || [ $option -lt "1" ] || [ $option -gt ${#arr_DOCROOTS[@]} ] ; do
			echo -ne "Choose one [1-${#arr_DOCROOTS[@]}]: "
			read option;
		done
		if [ "$option" -eq "${#arr_DOCROOTS[@]}" ]; then
			docrootask=1
		else 
			option=$(expr $option - 1)
			DOCROOT="${arr_DOCROOTS[$option]}"
		fi
	else
		docrootask=1
	fi
	
	while [ $docrootask -eq "1" ]; do 
		echo -n "Please, type a path to the directory (web server document root): "
		read pathdoc
		if [ -d "$pathdoc" ]; then
			DOCROOT=$pathdoc
			docrootask=0
		fi
	done
	
	# remove repeated slashes
	while [[ $DOCROOT =~ "//" ]]; do
		DOCROOT=$(echo $DOCROOT | sed -e "s,//,/,g")
	done
	
	# remove last slash (collateral effect: remove ending spaces too)
	DOCROOT=$(echo $DOCROOT | sed -e "s,/$,,g")
	
}

function DetermineApacheUserGroup() {
	echo -e "\nUnix user launching the script: $USER_UNIX (group $GROUP_UNIX)"
	echo "I will list some files at $DOCROOT to show you user/group in use there:"
	ls -l $DOCROOT | head -10
	
	if [ ! -z $USER_APACHE ]; then
		echo -e "\nI've got that your Web server User is: $USER_APACHE"
		option="x"
	else 
		echo -e "\nI can not determine your Web Server User..."
		option="y"
	fi
	
	myquestion "Do you want to modify it" "N"
	
	name=""
	if [ "$ANSWER" == "Y" ]; then
		while [ -z $name ]
		do
			echo -n "Who will be the 'owner' of the files? "
			read name
			valid=$(id -gn $name 2>/dev/null)
			if [ -z $valid ]; then
				myquestion "User $name does not exist. Do you want to type it again"
			fi
		done 
		USER_APACHE=$name
	fi
	
	echo -e "File's owner will be $USER_APACHE\n"
	
	if [ ! -z $GROUP_APACHE ]; then
		echo "I've got that your Web server group is: $GROUP_APACHE"
		option="x"
	else 
		echo "I can not determine your Web Server Group..."
		option="y"
	fi
	
	myquestion "Do you want to modify it" "N"
	
	name=""
	if [ "$ANSWER" == "Y" ]; then
		while [ -z $name ]
		do
			echo -n "What will be the 'group' for the files? "
			read name
			valid=$(grep "^$name:" /etc/group 2>/dev/null)
			if [ -z $valid ]; then
				myquestion "Group $name does not exist. Do you want to type it again"
			fi
		done 
		GROUP_APACHE=$name
	fi
	
	echo -e "File's Group will be $GROUP_APACHE\n"
	echo -e "Ownership will be set to '$USER_APACHE:$GROUP_APACHE'\n"
		
	#grep -i 'DocumentRoot' httpd.conf
	#grep -i 'DocumentRoot' /etc/httpd/conf/httpd.conf
	#grep -i 'DocumentRoot' /usr/local/etc/apache22/httpd.conf
}


function CheckFinalDirectory() {
	echo "Final Ximdex directory will be -->$XIMDEX_TARGET_DIR<--"
	if [ -e $XIMDEX_TARGET_DIR ]; then 
		echo -e "A file or directory named $XIMDEX_TARGET_DIR does already exist."
		echo -e "Ximdex will be configured for this path and only will work there."
		echo -e "If you continue, you will have to overwrite that path!\n"
	
		myquestion "Do you want to continue with the installation" "Y"

		if [ "$ANSWER" == 'N' ]; then
                	echo "Aborting configuration for $REPO_NAME"
                	exit 1;
        	fi
	fi
}


# Print instructions
function PrintInstructions() {
	echo "The main steps are:"
	echo ""
	echo "1.- Downloading Ximdex ($REPO_BRANCH branch) to directory '$REPO_NAME'"
	echo "    located at $LOCALPATH"
	echo ""
	echo "2.- Execute configuration scripts to create Database, set parameters, etc."
	echo ""
	echo "3.- Move Ximdex into your web server document root and assign permissions." 
	echo "This last step will require superuser privileges. A bash script will be generated to be run as root later if you prefer to control the execution."
	echo ""
}

# STEP Download from Github
function Step_Download() {
	ZIP_FILE="$REPO_BRANCH.zip"
	REPO_FILE="$REPO_HOME$ZIP_FILE"
	echo "Creating directory $REPO_NAME ... "
	
	mkdir $REPO_NAME
	if [ $? -ne 0 ]; then echo -e "\nCan not create directory ($REPO_NAME)! Please, remove it or choose another name." ; exit 1; fi
	rmdir $REPO_NAME
	echo "done!"
	
	echo -n "Downloading branch $REPO_BRANCH from $REPO_HOME ... "
	wget "$REPO_FILE" -O $ZIP_FILE
	if [ $? -ne 0 ]; then echo -e "\nERROR: Can not Download Ximdex ($REPO_FILE) from Github"; exit 1; fi
	
	echo -n "Unzipping file $ZIP_FILE ... "
	unzip $ZIP_FILE > /dev/null
	if [ $? -ne 0 ]; then echo -e "\nERROR: Can not unzip file $ZIP_FILE"; exit 1; fi
	echo "done!"
	
	mv "ximdex-$REPO_BRANCH" $REPO_NAME
	rm "$REPO_BRANCH.zip"
}

function DieIfNotInstallable() {
	cd $REPO_NAME 
	if [ $? -ne 0 ]; then 
		echo -e "\nCan not enter $REPO_NAME directory!" 
		exit 1 
	elif [ -d install ] && [ -d data ] && [ -d inc ]; then
		echo -e "It looks like a Ximdex."
	else
		echo -e "It does not look like a Ximdex to be installed. Exiting!"
		exit 1
	fi

	cd ..
}

function SetInstallStatus() {
	if [ -n $1 ]; then
		echo $1 > $STATUSFILE
	fi
}

function GetInstallStatus() {
	if [ -n $STATUSFILE ] && [ -f $STATUSFILE ]; then
		cat $STATUSFILE
	else
		echo ""
	fi
}

# STEP Checking ximdex dependencies
function Step_Dependencies() {
	echo "STEP1: Checking required components as PHP, MySQL, etc."
	$(chmod +x $SCRIPT_PATH/scripts/ximdex_installers_CheckDependencies.sh)
	( $SCRIPT_PATH/scripts/ximdex_installers_CheckDependencies.sh )
	result="$?"
	if [ "$result" != 0 ]; then
		echo "Some dependencies for Ximdex are not on your system."
		myquestion "Do you want to continue with the installation" "Y"
		if [ "$ANSWER" == 'N' ]; then
			echo "Aborting configuration for $REPO_NAME"
			exit 1;
		fi
	fi
}

# STEP Database creation
function Step_CreateDB() {
	echo "STEP2: Creating Database"
	$(chmod +x $SCRIPT_PATH/scripts/ximdex_installer_CreateDatabase.sh)
	( $SCRIPT_PATH/scripts/ximdex_installer_CreateDatabase.sh -i )
	result="$?"
	if [ "$result" != 0 ]; then
		echo "It seems that the Database has not been created"
	        myquestion "Do you want to continue with the installation" "Y"
	        if [ "$ANSWER" == 'N' ]; then
	                echo "Aborting configuration for $REPO_NAME"
	                exit 1;
	        fi
	fi
}


# STEP Setting Ximdex internal parameters
function Step_Configurator() {
	echo "STEP3: Setting Ximdex working parameters in config ($REPO_NAME/conf)"
	$(chmod +x $SCRIPT_PATH/scripts/ximdex_installer_Configurator.sh)
	( $SCRIPT_PATH/scripts/ximdex_installer_Configurator.sh -i -t -n -w -x "$XIMDEX_TARGET_DIR" )
	result="$?"
	if [ "$result" != 0 ]; then
		echo "Configuration have not ended correclty."
	        myquestion "Do you want to continue with the installation" "Y"
	        if [ "$ANSWER" == 'N' ]; then
	                echo "Aborting configuration for $REPO_NAME"
	                exit 1;
	        fi
	fi
}


# STEP Setting Ximdex internal components
function Step_Maintenance() {
	echo "STEP4: Setting Ximdex components"
	$(chmod +x $SCRIPT_PATH/scripts/ximdex_installer_MaintenanceTasks.sh)
	
	( $SCRIPT_PATH/scripts/ximdex_installer_MaintenanceTasks.sh -x "$XIMDEX_TARGET_DIR" )
	result="$?"
	if [ "$result" != 0 ]; then
		echo "Component paramerization have not ended correclty."
	        myquestion "Do you want to continue with the installation" "Y"
	        if [ "$ANSWER" == 'N' ]; then
	                echo "Aborting configuration for $REPO_NAME"
	                exit 1;
	        fi
	fi
}


# STEP Setting Ximdex projects
function Step_ProjectsAndCrontab() {
	echo "STEP5: Installing some projects and configuring crontab"
	$(chmod +x $SCRIPT_PATH/scripts/ximdex_installer_InitializeInstance.sh)
	
	( $SCRIPT_PATH/scripts/ximdex_installer_InitializeInstance.sh -x "$XIMDEX_TARGET_DIR" -m 0 -i 0 -p 0 -c $SCRIPT2)
	result="$?"
	if [ "$result" != 0 ]; then
		echo "Projects may have been not installed." 
	        myquestion "Do you want to continue with the installation" "Y"
	        if [ "$ANSWER" == 'N' ]; then
	                echo "Aborting configuration for $REPO_NAME"
	                exit 1;
	        fi
	fi
	
	echo "If you want to publish into remote servers in the cloud, ..."
	echo "Ximdex decoupled publishing system has to be periodically launched ..."
	echo "File $SCRIPT2 has these commands you should add to crontab:"
	( cat $SCRIPT2 )
}

# STEP launch mv to final destination as root 
function Step_LaunchAsRoot() {

	if [ $AUTOMATIC_INSTALL = 1 ]; then
		if [ "$MOVEASROOT" = 1 ]; then
			ANSWER='Y'
		else
			ANSWER='N'
		fi
	else
		myquestion "Do you want me to run the script $SCRIPT1 as root"
	fi
	
	if [ "$ANSWER" == 'Y' ]; then
		RunScriptAsRoot
	else
		echo -e "YOU HAVE TO RUN SCRIPT $SCRIPT1 AS ROOT TO END THE INSTALLATION\n"
	fi
	
	
	echo -e "Thanks for installing Ximdex. Write to help@ximdex.org if you need help.\n"
	
	if [ -e install ]; then 
	echo "********************************************************************************"
	echo "Ximdex has been downloaded as:"
	pwd -P
	echo ""
	echo "To end the installation:"
	echo "1.- Move it to your Web Server Root (i.e.: 'sudo mv $REPO_NAME /var/www/')"
	echo "2.- Execute 'sudo /var/www/$REPO_NAME/install/install.sh' to configure it..."
	echo "********************************************************************************"
	fi
}


# SCRIPT START

clear
echo "Welcome to Ximdex downloader & installer"
echo "----------------------------------------"
echo ""

while getopts 'a:hdn:b:t:' OPTION;
do
    case $OPTION in
        a)
	    AUTOMATIC_INSTALL=1
	    CONFIG_FILE="$OPTARG"
            ;;
        t)
	    REPO_ROOT=$OPTARG
            ;;
        n)
	    REPO_NAME=$OPTARG
            ;;
	b)
	    REPO_BRANCH=$OPTARG
            ;;
	d)
	    DO_DOWNLOAD=0
            ;;
        h)
	    usage
	    exit 0
	    ;;
        *)
	    echo "ERROR"
	    usage
	    exit 0
	    ;;
    esac
done


# Default options
if [ -z $REPO_NAME ] ; then
	REPO_NAME="ximdexJAP"
fi

if [ -z $REPO_BRANCH ] ; then
	REPO_BRANCH="develop"
fi


if [ "$AUTOMATIC_INSTALL" = 1 ]; then
	if [ -f "$CONFIG_FILE" ]; then
		echo "AUTOMATIC mode starting..."
	else
		echo "Can not find $CONFIG_FILE for automatic installation. Exiting!"
		exit 90
	fi
fi

SCRIPT_PATH="./${REPO_NAME}/install"
STATUSFILE="$SCRIPT_PATH/_STATUSFILE"
LOCALPATH=$( pwd -P )
USER_UNIX=`whoami`
GROUP_UNIX=`id -gn`

# printing instructions
PrintInstructions

# STEP_DOWNLOAD
if [  $DO_DOWNLOAD -ne 0 ]; then
	Step_Download
else
	echo -e "Downloading skipped"
fi

# Check if the directory is accesible and if it seems a ximdex
DieIfNotInstallable


if [ "$AUTOMATIC_INSTALL" = 1 ]; then
	echo "Starting automatic install"
	. $SCRIPT_PATH/scripts/ximdex_installer_LoadAutomaticParams.sh "$CONFIG_FILE"
        result="$?"
        if [ "$result" != 0 ];
        then
                exit $result
        fi

	# Determine params from setup
	mycad=$( LimpiaSlashes "$XIMDEX_PARAMS_PATH")
	DOCROOT=${mycad%/*}
	REPO_ROOT=$DOCROOT
fi

if [ "$AUTOMATIC_INSTALL" = 0 ]; then
	# determine web server info (user, group, document root), path document root
	if [ -z $REPO_ROOT ] || [ ! -d "$REPO_ROOT" ] ; then
		SetDocRootForXimdex
		REPO_ROOT=$DOCROOT
	fi

	echo "You have chosen [$DOCROOT] to install the Ximdex instance."
	DetermineApacheUserGroup
else
	echo "Directory [$DOCROOT] will store Ximdex instance $REPO_NAME."
fi

# Determine FINAL DIRECTORY where Ximdex will be as web application
XIMDEX_TARGET_DIR=$( LimpiaSlashes "$DOCROOT/$REPO_NAME")
CheckFinalDirectory

# Set Permission/owners to local username to run configurator
echo "Setting temporary owners to ${USER_UNIX}:${GROUP_UNIX}"
chown -R ${USER_UNIX}:${GROUP_UNIX} ./${REPO_NAME}

echo "Setting permissions to writable directories"
$(chmod -R 2770 ${REPO_NAME}/data)
$(chmod -R 2770 ${REPO_NAME}/logs)

# Launch installations
mystatus=$( GetInstallStatus )
if [ -d $SCRIPT_PATH ]; then
    echo "Ximdex instance downloaded. Running configuration scripts..."
    [ -z $mystatus ] && SetInstallStatus "DOWNLOADED"
else
    echo "$REPO_NAME does not look a Ximdex instance. Skipping installation"
    exit 1
fi

# Launch steps
Step_Dependencies && SetInstallStatus "CHECKED"
Step_CreateDB && SetInstallStatus "CREATED_DB"
Step_Configurator && SetInstallStatus "CONFIGURED"
CreateScriptToSetPermsAndMove && Step_LaunchAsRoot
exit 0
Step_Maintenance
Step_ProjectsAndCrontab

