## 🐧 Unix/Linux Admin Scripts

Welcome to my collection of powerful and practical Bash scripts! These were created to automate essential system administration tasks in a Unix/Linux environment. From user management to package installation, network diagnostics, disk cleanup, and file compression — this repo covers it all.

Each script is written with clarity and purpose, designed to save time, reduce errors, and make your sysadmin life a little more awesome. 💻✨

---

## 📁 What's Inside

| Description | Script |
|-------------|--------|
| Create a new user, add them to a group, and assign a default password | `create_user.sh` |
| Safely delete a user and their home directory after confirmation | `delete_user.sh` |
| Customize shell environment with aliases and path settings (manual files) | *(e.g., `.bashrc`, `.bash_aliases`)* |
| Install the `vim` package if it's not already installed | `install_vim.sh` |
| Update system packages and save the output to a log file | `update_packages.sh` |
| Check if the system can reach the internet by pinging `google.com` | `check_internet.sh` |
| Verify connectivity to Google DNS (`8.8.8.8`) | `check_dns_ip.sh` |
| Use `nslookup` to test DNS resolution for `example.com` | `check_dns_resolution.sh` |
| Clean out log and cache directories, then report freed disk space | `disk_cleanup.sh` |
| Compress `/etc` using both `gzip` and `bzip2`, then compare file sizes | `compress_files.sh` |

---

## 🧠 What I Used

- Bash scripting (with conditionals, functions, loops)
- `useradd`, `userdel`, and `passwd` for user management
- Environment customization via `.bashrc` and aliases
- Package management with `apt`
- File and disk tools like `df`, `du`, `rm`, `tar`, `gzip`, and `bzip2`
- Network tools like `ping` and `nslookup`
- Custom functions for file size comparison and directory cleanup

---

## 🚀 How to Run These Scripts

1. Clone the repo:
   ```bash
   git clone https://github.com/jcmercera/unix-linux-admin-scripts.git
   cd unix-linux-admin-scripts
