# Web Stack Debugging #3

## 📚 Project Overview

This project focuses on debugging a web stack using advanced tools and automating fixes using **Puppet**.

The main objective is to identify the root cause of a server error using `strace`, fix it manually, and then automate the solution using Puppet.

---

## 🧠 Task: 0. Strace is your friend

### 🔍 Problem

The web server was returning:

HTTP/1.0 500 Internal Server Error

---

## 🛠️ Approach

1. Checked running processes:

   * Discovered that Apache was not running.

2. Attempted to start Apache:

   * Received error: `apache2: unrecognized service`

3. Root cause identified:

   * Apache was **not installed** on the server.

---

## ✅ Solution

* Installed Apache
* Ensured the service is running
* Automated the fix using Puppet

---

## ⚙️ Puppet Implementation

The fix is implemented using the following Puppet resources:

* `package`: installs Apache
* `service`: ensures Apache is running and enabled

---

## 📄 File

* `0-strace_is_your_friend.pp`: Puppet script to fix the issue

---

## 🚀 Usage

Apply the Puppet manifest:

```bash
sudo puppet apply 0-strace_is_your_friend.pp
```

---

## ✅ Expected Result

Before fix:

HTTP/1.0 500 Internal Server Error

After fix:

HTTP/1.1 200 OK

---

## ✍️ Author

Tiffany

