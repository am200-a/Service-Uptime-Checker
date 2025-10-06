#!/bin/bash
services=("ssh" "apache2" "mysql")
echo "🔍 Checking system services..."
echo "-------------------------------"
for service in "${services[@]}"; do
    echo -n "Checking $service service... "
    status=$(systemctl is-active $service)
    if [ "$status" == "active" ]; then
        echo "✅ Running"
    else
        echo "❌ Not Running (Restart Required)"
    fi
done
echo "-------------------------------"
echo "✅ Service check completed."
