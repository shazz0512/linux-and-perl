#!/bin/bash

check_user_exists() {
    local username=$1
    if id -u "$username" >/dev/null 2>&1; then
        echo "User '$username' exists."
        display_user_info "$username"
    else
        create_user "$username"
    fi
}

display_user_info() {
    local username=$1
    local user_id=$(id -u "$username")
    local user_uid=$(id -u -r "$username")
    local user_gid=$(id -g -r "$username")
    echo "User ID: $user_id"
    echo "UID (Real): $user_uid"
    echo "GID (Real): $user_gid"
}

create_user() {
    local username=$1
    sudo useradd -m "$username"
    echo "User '$username' created successfully."
    display_user_info "$username"
}

while true; do
    clear
    echo "=== User Management ==="
    echo "1. Check if user exists"
    echo "2. Exit"
    echo "======================="
    echo -n "Please enter your choice: "
    read choice

    case $choice in
        1)
            echo -n "Enter the username: "
            read username
            check_user_exists "$username"
            ;;
        2)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice! Please try again."
            ;;
    esac

    read -n 1 -s -r -p "Press any key to continue..."
    echo
done

