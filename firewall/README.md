This script sets up ufw to block all incoming traffic except:
- 22 (SSH)
- 80 (HTTP)
- 443 (HTTPS)

⚠️ Note: The script cannot run in restricted containers that do not allow kernel firewall access. It works on a real Ubuntu VM or server with root privileges.
