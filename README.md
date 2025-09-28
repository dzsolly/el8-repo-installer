# Third-Party Repository Installer for RHEL 8.x and Compatible Distros

This script allows you to easily enable popular third-party repositories on **RHEL 8.x** and its desktop-compatible derivatives such as **AlmaLinux, Rocky Linux, EuroLinux, Oracle Linux**.

⚠️ **Important**: This script is intended for **desktop environments only**, not for production servers.

---

## 📦 Included Repositories

### 1. Remi Repository

Provides the latest versions of PHP and related modules. Essential for developers who need modern PHP releases.

### 2. EPEL (Extra Packages for Enterprise Linux)

Offers additional open-source packages not included in the base RHEL repos. Useful for general software enhancements.

### 3. RPMFusion Free

Contains multimedia-related packages (codecs, tools) and software not shipped by Red Hat due to legal reasons, but free to use.

### 4. RPMFusion Nonfree

Includes proprietary software and codecs (like NVIDIA drivers, non-free codecs). Recommended if you need enhanced multimedia support.

### 5. ELRepo

Specializes in hardware-related packages such as kernel modules and drivers (e.g., updated GPU, network, and filesystem drivers).

---

💻 Getting the Base System ISO

Before using this script, you need a RHEL 8.x or compatible system installed. You can download official ISO images from the following sources:

RHEL 8.x – Red Hat Customer Portal - https://developers.redhat.com/products/rhel/download#publicandprivatecloudreadyrhelimages
While Red Hat Enterprise Linux (RHEL) is generally a subscription-based distribution, you can access it for free through the Red Hat Developer Subscription. This provides full access to RHEL 8.x for development and testing purposes, but is not intended for production servers.

AlmaLinux 8.x – AlmaLinux Downloads - https://almalinux.org/get-almalinux/

Rocky Linux 8.x – Rocky Linux Downloads - https://rockylinux.org/download

EuroLinux 8.x – EuroLinux Downloads (Discontinued)

Oracle Linux 8.x – Oracle Linux Downloads - https://yum.oracle.com/oracle-linux-isos.html

⚠️ Note: Make sure to select the version matching your system (e.g., 8.x) and the desktop edition if you are using this script in a desktop environment.


---

## 🚀 Installation Steps

1. Clone this repository:

   ```bash
   git clone https://github.com/YOUR_USERNAME/rhel8-repo-installer.git
   cd rhel8-repo-installer
   ```

2. Make the script executable:

   ```bash
   chmod +x repo-installer.sh
   ```

3. Run the script:

   ```bash
   ./repo-installer.sh
   ```

4. Choose which repository (or all) you want to enable.

5. After installation:
If any packages were installed or repositories enabled, it's recommended to run:

```bash
sudo dnf update
 ```
6. Then reboot your system to ensure all changes take effect:
```bash
sudo reboot

 ```
---

## ⚡ Example Use Cases

* **Remi + EPEL**: PHP developers who need modern versions of PHP and dependencies.
* **RPMFusion Free + Nonfree**: Desktop users who want better multimedia support (video/audio codecs, NVIDIA drivers).
* **ELRepo**: Users with newer hardware who need updated drivers or kernel modules.

---

## ✅ Supported Distros

* RHEL 8.x
* AlmaLinux 8.x
* Rocky Linux 8.x
* EuroLinux 8.x
* Oracle Linux 8.x

---

## 🛠️ Notes

* This script installs repositories only. You still need to install actual packages afterwards using `dnf install <package>`.
* Make sure you run this script with **root privileges**.

---

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
