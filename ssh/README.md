# SSH Scripts

This directory contains Bash scripts for connecting to remote servers using SSH.

## Scripts

### 0-use_a_private_key
This script connects to a remote server using the private key `~/.ssh/school` with the user `ubuntu`.  

**Usage:**

```bash
./0-use_a_private_key
# SSH Key Generation Script

This directory contains Bash scripts for SSH operations.

## Scripts

### 1-create_ssh_key_pair
This script generates an RSA key pair with the following specifications:

- Private key name: `school`
- Public key: `school.pub`
- Key length: 4096 bits
- Passphrase: `betty`

**Usage:**

```bash
./1-create_ssh_key_pair
