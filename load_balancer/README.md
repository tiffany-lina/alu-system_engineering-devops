# Load Balancer Setup

This directory contains scripts to set up web servers behind a load balancer.

## Script

- 0-custom_http_response_header: Configures Nginx with a custom HTTP header X-Served-By showing the server hostname.
# Load Balancer Setup - HAProxy

This directory contains a Bash script to install and configure HAProxy on a new Ubuntu machine as a load balancer.

## Files

- `1-install_load_balancer`: Bash script to install and configure HAProxy
- `README.md`: This file

## How to Use

1. Clone the repository:

```bash
git clone git@github.com:<YOUR_USERNAME>/alu-system_engineering-devops.git
cd alu-system_engineering-devops/load_balancer
