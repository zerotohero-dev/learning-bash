#!/usr/bin/env bash

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


select option in "Display disk space" "Display users" "Display memory usage" "Exit program"; do
    case $option in
        "Exit program")
            break;;
        "Display disk space")
            disk_space;;
        "Display users")
            who_is_on;;
        "Display memory usage")
            mem_usage;;
        *)
            clear;
            echo "Sorry, wrong selection."
    esac
done