# 🔧 Rustin Systems .dotfiles

> **Production-grade configuration management for high-efficiency Linux environments.**

This repository hosts the configuration files (dotfiles) and installation scripts used to deploy and maintain my personal and professional Linux workstations. It reflects an evolution from manual configuration to automated environment provisioning across multiple distributions.

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Distro: Arch](https://img.shields.io/badge/Distro-Arch_Linux-1793D1?logo=arch-linux&logoColor=white)
![Distro: Fedora](https://img.shields.io/badge/Distro-Fedora-51A2DA?logo=fedora&logoColor=white)
![WM: Hyprland](https://img.shields.io/badge/WM-Hyprland-00A4CC?logo=linux&logoColor=white)

## 📂 Repository Structure

The configurations are organized by component to allow modular deployment:

| Component | Description |
| :--- | :--- |
| **hyprland/** | Tiling window manager config (animations, rules, inputs). |
| **nvim/** | Neovim IDE setup (LSP, Treesitter, Autocomplete). |
| **waybar/** | Custom status bar configuration for Wayland. |
| **kitty/** | GPU-accelerated terminal emulator config. |
| **plasma/** | KDE Plasma shortcut exports and KWin scripts. |
| **xremap/** | Global key remapping service for ergonomic workflows. |
| **scripts/** | Custom automation scripts (monitor mirroring, backup tools). |

---

## 🚀 Installation & Provisioning

### 1. Arch Linux (Hyprland Setup)
*Optimized for performance and minimal resource usage.*

<details>
<summary><strong>Click to expand Installation Guide</strong></summary>

#### Phase 1: Base Install
1.  **Boot Live ISO:** Connect to Wi-Fi using `iwctl`.
2.  **Archfi Script:** Automate base install using `archfi`.
    ```bash
    curl -LO archfi.sf.net/archfi && sh ./archfi
    ```
3.  **User Configuration:**
    * Create user with `wheel` group privileges.
    * Configure `sudo` via `visudo` (Uncomment `%wheel ALL=(ALL:ALL) ALL`).

#### Phase 2: Environment Deployment
1.  **Core Packages:**
    ```bash
    sudo pacman -S hyprland kitty gtk3 git base-devel
    ```
2.  **Hyprland Config:**
    * Clone [SolDoesTech HyprV4](https://github.com/SolDoesTech/HyprV4) as a base foundation.
    * Run `set-hypr` script.

#### Phase 3: Dotfiles Application
1.  Clone this repository:
    ```bash
    git clone [https://github.com/rustinsystems/.dotfiles.git](https://github.com/rustinsystems/.dotfiles.git) ~/.dotfiles
    ```
2.  Symlink configurations to `~/.config`:
    ```bash
    ln -s ~/.dotfiles/hyprland ~/.config/hyprland
    ln -s ~/.dotfiles/nvim ~/.config/nvim
    # Repeat for other components
    ```

#### Phase 4: Software Stack
* **Dev Tools:** `vim`, `neovim`, `git-lfs`, `docker`
* **Audio/Video:** `pipewire`, `wireplumber`, `obs-studio`
* **Productivity:** `obsidian`, `libreoffice`, `visual-studio-code-bin` (AUR)

</details>

### 2. Fedora Linux (KDE Plasma Workstation)
*Optimized for stability and enterprise compatibility.*

<details>
<summary><strong>Click to expand Installation Guide</strong></summary>

#### Phase 1: System Optimization
Edit `/etc/dnf/dnf.conf` to accelerate package management:
```ini
fastestmirror=True
max_parallel_downloads=10
defaultyes=True
keepcache=True
```

Phase 2: Repository Expansion

Enable RPM Fusion and Flathub to access non-free and proprietary software required for production workflows (e.g., proprietary drivers, codecs).
Phase 3: Package Provisioning
Bash

# Development Tools
sudo dnf groupinstall "Development Tools" "Development Libraries"

# Core Utilities
sudo dnf install timeshift fastfetch kitty neovim

# Flatpak Applications
flatpak install flathub com.visualstudio.code md.obsidian.Obsidian com.obsproject.Studio

Phase 4: Workflow Restoration

    Shortcuts: Import plasma/shortcuts.kksrc via System Settings.

    Tiling: Install Polonium KWin script for auto-tiling functionality.

    Backup: Restore user config via konsave (if available).

</details>

🛠️ Custom Scripts & Automation

This repository includes custom Bash scripts developed to solve specific hardware/software friction points:

    monitor-mirror.sh: Automates display mirroring logic for hybrid presentations.

    xremap-autostart: Systemd service / Autostart entry to initialize global key remapping with elevated privileges on login.

    dnf-optimiser: Applies parallel download and caching rules to Fedora's DNF configuration.

📜 Distro History (The Journey)

My daily driver has evolved to meet increasing technical demands:

    2025: Debian Stable (KDE) / Arch (Hyprland) - Focus: Stability & Customization

    2024: Fedora (KDE + Polonium) - Focus: Enterprise grade reliability with tiling

    2023: Arch Linux (Hyprland) - Focus: Wayland adoption & performance

    2022: Manjaro (KDE) - Focus: Rolling release introduction

    2020-2021: Ubuntu/Debian - Focus: Linux fundamentals

<div align="center">
<p><i>Managed by <a href="https://rustinsystems.com">Rustin Systems</a></i></p>
<p>Bridging Hardware Constraints & Software Architecture</p>
</div>
