#!/bin/bash

services=("ssh" "apache2" "mysql")

while true; do
    echo "-------------------------------"
    echo " SERVICE STATUS CHECKER MENU"
    echo "-------------------------------"
    echo "1. Check SSH service"
    echo "2. Check Apache2 service"
    echo "3. Check MySQL service"
    echo "4. Check ALL services"
    echo "5. Exit"
    echo "-------------------------------"
    read -p "Enter your choice: " ch

    case $ch in
        1)
            status=$(systemctl is-active ssh)
            echo -n "Checking ssh service... "
            [[ $status == "active" ]] && echo "✅ Running" || echo "❌ Not Running"
            ;;
        2)
            status=$(systemctl is-active apache2)
            echo -n "Checking apache2 service... "
            [[ $status == "active" ]] && echo "✅ Running" || echo "❌ Not Running"
            ;;
        3)
            status=$(systemctl is-active mysql)
            echo -n "Checking mysql service... "
            [[ $status == "active" ]] && echo "✅ Running" || echo "❌ Not Running"
            ;;
        4)
            echo "🔍 Checking all services..."
            for service in "${services[@]}"; do
                status=$(systemctl is-active $service)
                echo -n "Checking $service service... "
                [[ $status == "active" ]] && echo "✅ Running" || echo "❌ Not Running"
            done
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac
done
