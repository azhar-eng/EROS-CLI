#! /bin/bash

source ~/env/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/eros_ws_1/install/setup.bash

x=$1
case $x in
	main_gui)
		echo -e '\E[00;35m'"\033[1m[krsbi] Debugging main_gui.\033[0m"
		roslaunch eros eros_main_gui.launch
	;;
	main_cli)
		echo -e '\E[00;35m'"\033[1m[krsbi] Debugging main_cli.\033[0m"
		roslaunch eros eros_main_cli.launch
	;;
	vision_gui)
		echo -e '\E[00;35m'"\033[1m[krsbi] Debugging vision_gui.\033[0m"
		roslaunch eros soccer_vision_gui.launch
	;;
	vision_cli)
		echo -e '\E[00;35m'"\033[1m[krsbi] Debugging vision_cli.\033[0m"
		roslaunch eros soccer_vision_cli.launch
	;;
	intelligent)
		echo -e '\E[00;35m'"\033[1m[krsbi] Debugging intelligent.\033[0m"
		roslaunch eros eros_intelligent.launch
	;;
	rqt)
		rqt
	;;
	*)
		echo -e '\E[00;31m'"\033[1m[krsbi] There is something wrong.\033[0m"
	;;
esac
sleep 3
echo -e "\033[1mdone.\033[0m"
