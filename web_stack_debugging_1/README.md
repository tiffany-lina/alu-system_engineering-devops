# 0-nginx_likes_port_80

This script ensures that Nginx is running and listening on port 80 for all IPv4 addresses in an Ubuntu 20.04 container.  
It stops Apache if it is running and reloads Nginx if needed.

## Usage

```bash
./0-nginx_likes_port_80
curl 0:80
