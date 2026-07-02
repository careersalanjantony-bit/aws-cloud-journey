# Project 1: Deploy Nginx on Amazon EC2

**Date:** 02 July 2026  
**Cost:** ₹0 (Free Tier)  
**Time taken:** ~30 minutes  
**Skills used:** EC2, AMI, Security Groups, User Data, Linux, Nginx

---

## 🎯 Goal
Launch an EC2 instance and auto-deploy Nginx using a user data 
script. Verify by opening the public IP in a browser.

---

## 🛠️ Steps I took
1. Signed into AWS Console, switched region to `ap-south-1` (Mumbai)
2. EC2 → Launch Instance
3. AMI: Amazon Linux 2023
4. Instance type: t2.micro (Free Tier eligible)
5. Created a new key pair (kept locally, NOT pushed to Git)
6. Security group: allow HTTP (port 80) and SSH (port 22)
7. Pasted user data script (see [user-data-script.sh](user-data-script.sh))
8. Launched instance
9. Copied public IP and opened in browser
10. Nginx welcome page loaded successfully ✅
11. Terminated instance to avoid charges

---

## 📸 Screenshots
- [Nginx welcome page](screenshots/nginx-welcome-page.png)

---

## 💡 What I learned
- User data scripts run once at first boot, as root
- Amazon Linux 2023 uses `dnf`, not `yum`
- Security groups are stateful — inbound rule automatically allows 
  response traffic back out
- Always terminate instances when done to avoid unexpected charges

---

## 🚧 What I'd improve next time
- Restrict SSH access to my own IP instead of `0.0.0.0/0`
- Use Elastic IP so the public IP stays fixed
- Add CloudWatch monitoring
- Rebuild with Terraform later

---

## 🔗 Related notes
- [Module 2: Compute in the Cloud](../../01-cloud-practitioner/02-compute.md)
