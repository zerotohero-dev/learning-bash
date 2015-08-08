#/usr/bin/env bash

# Using dialog to create menus.

temp=$(mktemp -t test.XXXXXX)
temp2=$(mktemp -t test.XXXXXX)

function disk_space {
    df -k > $temp
    dialog --textbox $temp 20 60
}

function who_is_on {
    who > $temp
    dialog --textbox $temp 20 50
}

function mem_usage {
    cat /proc/meminfo > $temp
    dialog --textbox $temp 20 50
}

while [ 1 ]; do
    dialog --menu "Sys Admin Menu" 20 30 10 1 "Display Disk Space" 2 "Display Users" 3 "Display Memory Usage" 0 "Exit" 2> $temp2

    if [ $? -eq 1 ]; then
        break
    fi

    selection=$(cat $temp2)

    case $selection in
        1) disk_space;;
        2) who_is_on;;
        3) mem_usage;;
        0) break ;;
        *) dialog --msgbox "Sorry, invalid selection :(" 10 30
    esac
done

rm -f $temp 2> /dev/null
rm -f $temp2 2> /dev/null
