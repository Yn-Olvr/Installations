#!/bin/bash
#Author: Yann-Olvier Mbella
#date: 06 Avril 2022
#Description: We are creating a script to inventory any system

for OS in $(cat /etc/os-release | grep PRETTY_NAME= | awk -F '"' '{print$2}' | awk -F ' ' '{print$1}')

do
	        mkdir $OS
		        cd $OS

			touch info

			echo "Our kernel version is" >> info
			#sleep 3
			uname -r >> info
			echo " ====================================" >> info
			echo "The memory is ou system is" >> info
			#sleep 3
			free -m >> info
			echo " ====================================" >> info
			echo "The version of our system(bits) is" >> info
			arch >> info
			echo " ====================================" >> info
			echo "Here is the numer of processors on this system" >> info
			#sleep 3
			nproc >> info

		done

		echo "A file with the name of your linux flavor has been created with a file named "info"

		You can cat that file to see the inventory of your system

		Thank you !"
