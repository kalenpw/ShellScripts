#!/bin/bash

#Laptop wallpaper utility

handle_toggle(){
    to_toggle=$1
    complete_dir="$root_wallpaper$current$to_toggle"
    if [ -d "$complete_dir" ]; then
        handle_remove $to_toggle
    else
        handle_add $to_toggle
    fi
}

handle_add(){
    to_add=$1
    complete_dir="$root_wallpaper$current$to_add"
    if [ -d "$complete_dir" ]; then
        echo "$to_add is already in current"
    else
        if [ -d "$root_wallpaper$to_add" ]; then
            mv $root_wallpaper$to_add $root_wallpaper$current
        else
            echo "Failed to add $to_add"
        fi
    fi
}

handle_remove(){
    to_remove=$1
    complete_dir="$root_wallpaper$current$to_remove"
    if [ -d "$complete_dir" ]; then
        mv $complete_dir $root_wallpaper$to_remove
    else
        echo "$to_remove was not in current"
    fi
}

print_directories(){
    echo "Currently in use:"
    ls $root_wallpaper$current
    echo ""
    echo "Currently inactive:"
    ls $root_wallpaper
}

action="$1"
directory="$2"
current="Current/"
root_wallpaper="/home/kalenpw/Pictures/Wallpaper/"

if [ ! $# == 2 ]; then
    print_directories
    exit
fi

if [ "$action" == "toggle" ]; then
    handle_toggle $2
elif [ "$action" == "add" ]; then
    handle_add $directory
elif [ "$action" == "remove" ]; then
    handle_remove $directory
else
    print_directories
fi



