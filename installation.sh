echo "Here is the inventory of our system"

echo "======================================================"

#read ans

#touch $ans

for OS in $(cat /etc/os-release | grep PRETTY_NAME= | awk -F '"' '{print$2}' | awk -F ' ' '{print$1}')

do
	        mkdir $OS
		        cd $OS
		done

		touch info

		echo "Our kernel version is" >> info
		uname -r >> info
		echo " ====================================" >> info
		echo "The memory is ou system is" >> info
		free -m >> info
		echo " ====================================" >> info
		echo "The version of our system(bits) is" >> info
		arch >> info
		echo " ====================================" >> info
		echo "Here is the numer of processors on this system" >> info
		nproc >> info


cat info
