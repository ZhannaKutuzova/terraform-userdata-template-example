# Terraform EC2 Webserver with Dynamic UserData (Templatefile)

This repository demonstrates how to use **Terraform** and dynamic external files (`templatefile`) to automate the deployment and initial configuration of an AWS EC2 instance with Apache HTTPD installed.

---

## 🚀 **Features:**

- Launches an EC2 instance in AWS.
- Installs and configures Apache web server automatically via UserData script.
- Dynamically generates an HTML webpage using Terraform's templatefile function.

---

## 🛠 **Technologies Used:**

- **Terraform**
- **AWS EC2**
- **UserData scripts (Bash)**
- **HTML**

---

## 📄 **Files:**

- **`webserver.tf`** - Terraform configuration file for EC2.
- **`user_data.sh.tpl`** - UserData script template executed at instance launch.

---

## ⚙️ **How to Use:**

1. Clone this repository:
```bash
git clone https://github.com/ZhannaKutuzova/terraform-userdata-template-example.git
