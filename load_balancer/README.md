# Load Balancer Project

## Scripts

### 0-custom_http_response_header
Installs Nginx on a web server and adds X-Served-By HTTP header with the hostname.

### 1-haproxy_setup.sh
Installs HAProxy and configures it to load balance web-01 and web-02 in round-robin.

## Servers

| Name       | IP              | Purpose         |
|------------|----------------|----------------|
| web-01     | 34.203.218.185 | Web server 1   |
| web-02     | 44.202.164.145 | Web server 2   |
| lb-01      | 44.212.25.228  | Load balancer  |

## Usage

Run on web servers:

```bash
ssh -i ~/ssh/web-01 ubuntu@WEB_SERVER_IP 'bash -s' < 0-custom_http_response_header
