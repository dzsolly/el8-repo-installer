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

