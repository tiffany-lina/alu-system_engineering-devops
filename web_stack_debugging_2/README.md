# Web Stack Debugging 2

## Task: 0. Run software as another user

### Description

This project focuses on understanding how to run commands as another user using privilege escalation.

In Linux, the root user has full permissions and can execute commands as any other user. This task demonstrates how to safely run a command as a different user without switching the entire session.

### Requirements

- Write a Bash script that accepts one argument
- The script must run the `whoami` command as the user passed as an argument
- Use the appropriate command to execute as another user
- The script must be executable

### File

- `0-iamsomeoneelse`

### Usage

```bash
./0-iamsomeoneelse <username>
