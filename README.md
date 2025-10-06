# Service Uptime Checker

## Overview
**Service Uptime Checker** is a lightweight script that monitors critical system services like **SSH**, **Apache2**, and **MySQL**. It checks whether the services are running and alerts the user if any service is **not active**. This tool is useful for system administrators, developers, or anyone who wants to ensure that essential services are always up.

---

## Features
- ✅ Check if multiple services are running simultaneously.
- ⚡ Display clear and concise status for each service.
- 🔔 Alert the user when a service is not running.
- 🧩 Easily customizable – add or remove services to monitor.
- 🐚 Works on Linux systems using **Bash** or **Python**.
- ⏱️ Can be automated using **cron** for periodic checks.
- 📄 Provides a simple output format suitable for logs or notifications.

---

## How It Works
1. The script contains a **list of services** to monitor.
2. For each service, it runs:
   ```bash
   
