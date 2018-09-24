#!/bin/bash

#Laptop wallpaper utility

# move all directories out of current
reset_current(){
    for d in $root_wallpaper$current*; do
        mv $d $root_wallpaper
    done
}

add_all(){
    for d in $root_wallpaper*; do
        if [ ! "$d/" == "$root_wallpaper$current" ]; then
            mv $d $root_wallpaper$current
        fi
    done
}

handle_default(){
    defaults=("Nature" "City" "CalvinAndHobbes")
    reset_current
    for i in "${defaults[@]}"; do
        handle_add $i
    done
}

handle_set(){
    to_set=$1
    reset_current
    handle_add $to_set
}

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
    if [ "$1" == "default" ]; then
        handle_default
    elif [ "$1" == "all" ]; then
        add_all
    elif [ "$1" == "none" ]; then
        reset_current
    else
        print_directories
    fi
    exit
fi

if [ "$action" == "toggle" ]; then
    handle_toggle $directory
elif [ "$action" == "add" ]; then
    handle_add $directory
elif [ "$action" == "remove" ]; then
    handle_remove $directory
elif [ "$action" == "set" ]; then
    handle_set $directory
else
    print_directories
fi
