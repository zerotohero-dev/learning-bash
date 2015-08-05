!/usr/bin/env bash

function disk_space {
    clear
    df -k
}

function who_is_on {
    clear
    who
}

function mem_usage {
    clear
    cat /proc/meminfo
}

function menu {
    clear
    echo
    echo -e "\t\tSys Admin Menu\n"
    echo -e "\t1. Display disk space"
    echo -e "\t2. Display logged on users"
    echo -e "\t3. Display memory usage"
    echo -e "\t0. Exit program\n\n"
    echo -en "\t\tEnter option: "

    read -n 1 option
}

while [ 1 ]; do
    menu

    case $option in
        0) break;;
        1) disk_space;;
        2) who_is_on;;
        3) mem_usage;;
        *) clear
           echo "Sorry, wrong selection.";;
    esac

    echo -en "\n\n\t\t\tHit any key to continue…"
    read -n 1 line
done

clear