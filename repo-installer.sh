
#!/bin/bash

# Repository Installer Script for RHEL 8.x and Compatible Distros
# Supported distros: AlmaLinux, Rocky Linux, EuroLinux, Oracle Linux (desktop environments)
# Use this script to enable optional third-party repositories easily.

# Exit on error
set -e

# Check if running on a RHEL 8 compatible system
if ! grep -q "release 8" /etc/redhat-release; then
    echo "Error: This script is intended for RHEL 8.x or compatible distributions only."
    exit 1
fi

echo "====================================="
echo " Third-Party Repository Installer"
echo " For RHEL 8.x and compatible distros"
echo "====================================="
echo

echo "Please choose an option:"
echo "1) Enable Remi Repository"
echo "2) Enable EPEL Repository"
echo "3) Enable RPMFusion Free Repository"
echo "4) Enable RPMFusion Nonfree Repository"
echo "5) Enable ELRepo Repository"
echo "6) Enable ALL repositories"
echo "7) Exit"

read -rp "Enter your choice [1-7]: " choice

case $choice in
    1)
        echo "Installing Remi repository..."
        yum install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm
        ;;
    2)
        echo "Installing EPEL repository..."
        yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
        ;;
    3)
        echo "Installing RPMFusion Free repository..."
        yum localinstall -y --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm
        dnf install -y rpmfusion-free-release-tainted
        ;;
    4)
        echo "Installing RPMFusion Nonfree repository..."
        yum localinstall -y --nogpgcheck https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-8.noarch.rpm
        dnf install -y rpmfusion-nonfree-release-tainted
        ;;
    5)
        echo "Installing ELRepo repository..."
        rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
        rpm -Uvh https://www.elrepo.org/elrepo-release-8.el8.elrepo.noarch.rpm
        ;;
    6)
        echo "Installing ALL repositories..."
        yum install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm
        yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
        yum localinstall -y --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm
        yum localinstall -y --nogpgcheck https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-8.noarch.rpm
        rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
        rpm -Uvh https://www.elrepo.org/elrepo-release-8.el8.elrepo.noarch.rpm
        dnf install -y rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted
        ;;
    7)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice."
        exit 1
        ;;
esac

echo
echo "Installation complete!"

