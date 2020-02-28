#!/bin/bash
cd ~/bin
if git pull echo 'YESS' || echo 'N OOOO'
read N

echo -e "\e[36m                        ____                                                                     \n /'\_/ \               /\  _ \   /'\_/ \                                                         \n/\      \    __  __    \ \ \L\ \/\      \                                                        \n\ \ \__\ \  /\ \/\ \    \ \ ,__/\ \ \__\ \                                                       \n \ \ \_/\ \ \ \ \_\ \    \ \ \/  \ \ \_/\ \                                                      \n  \ \_\\ \_\ \/ ____ \    \ \_\   \ \_\\ \_\                                                     \n   \/_/ \/_/   /___/> \    \/_/    \/_/ \/_/                                                     \n                 /\___/                                                                          \n\e[0m"
echo

echo $1
read w
echo
echo
PS3='Please enter your choice: '
options=("Create Express backend" "Create React app" "Create React Native App with Expo"  "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Create Express backend")
            bash expressbackendGenerator.sh $1
            break
            ;;
	    "Create React app")
            bash webReactAppGenerator.sh $1
            break
            ;;
        "Create React Native App with Expo")
            bash reactNativeAppGenerator.sh $1
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

echo -e "\e[33m=== \e[36mEnjoy Coding !\e[33m ===\e[0m"