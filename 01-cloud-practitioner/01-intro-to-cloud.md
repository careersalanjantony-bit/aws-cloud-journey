# Module 1: Introduction to the Cloud

**Status:** ✅ Completed on 28 June 2026  
**Time spent:** ~45 minutes  
**Course:** AWS Cloud Practitioner Essentials (AWS Skill Builder)

---

## 🎯 What this module covers
An introduction to what cloud computing is, why AWS matters, the 
global infrastructure behind it, and who is responsible for what 
when you use AWS.

---

## 📘 Key concepts I learned

### 1. What is Cloud Computing?
- **Definition:** On-demand delivery of IT resources (servers, 
  storage, databases, networking) over the internet, with 
  pay-as-you-go pricing.
- **Real-world analogy:** Like electricity — you don't build your 
  own power plant, you just plug in and pay for what you use. 
  Same with cloud: you don't buy servers, you rent them by the hour.

### 2. Deployment models
- **Cloud-based:** Everything runs in AWS (most common today)
- **On-premises:** Everything runs in your own datacenter (traditional)
- **Hybrid:** Mix of both — some workloads in AWS, some on-premises

### 3. Benefits of the AWS Cloud
- **Pay as you go:** Only pay for what you use, no upfront cost
- **Economies of scale:** AWS's massive scale means lower prices for us
- **Stop guessing capacity:** Scale up or down instantly instead of 
  buying servers "just in case"
- **Speed and agility:** Deploy in minutes, not weeks
- **Stop maintaining datacenters:** AWS handles the hardware
- **Go global in minutes:** Deploy to any AWS region in a few clicks

### 4. AWS Global Infrastructure
- **Regions:** Physical locations around the world where AWS has 
  datacenters (e.g., `ap-south-1` = Mumbai, `us-east-1` = Virginia)
- **Availability Zones (AZs):** Isolated datacenters within a region 
  — each region has 2 or more AZs
- **Real-world analogy:** A Region is like a city (Mumbai), and AZs 
  are like separate buildings in that city — if one building has a 
  power failure, others keep running
- **Edge locations:** Smaller sites worldwide used by CloudFront (CDN) 
  to serve content faster to users

### 5. How to choose a Region
Four main factors:
1. **Compliance:** Local data laws may require data to stay in-country
2. **Proximity:** Closer to users = lower latency
3. **Available services:** Not all services exist in every region
4. **Pricing:** Costs vary by region

### 6. Shared Responsibility Model
The single most important security concept in AWS. Splits security 
responsibilities between AWS and the customer:

**AWS is responsible for security *of* the cloud:**
- Physical datacenters and hardware
- The underlying network
- The virtualization layer (hypervisor)
- Managed services' underlying infrastructure

**Customer is responsible for security *in* the cloud:**
- Operating system patches (on EC2)
- Application code and security
- Data (encryption, access control)
- IAM users and permissions
- Firewall rules (Security Groups)
- Network traffic protection

**Real-world analogy:** AWS is like a landlord who secures the 
building, entrances, and utilities. You're the tenant — you lock 
your own apartment door, decide who gets keys, and secure your 
belongings inside.

---

## 🔗 Real-world connection (my Bobcares background)
- The Shared Responsibility Model maps directly to what I already do 
  daily at Bobcares — on managed VPS servers, the datacenter handles 
  hardware, but I handle firewall rules (CSF), OS updates, malware 
  scanning, and application hardening
- Regions and AZs are the same reason we recommend geographically 
  distributed backup servers for critical clients
- The concept of "stop guessing capacity" solves exactly what 
  happens during traffic spikes on client PrestaShop/WooCommerce 
  sites — auto-scaling would eliminate manual server upgrades

---

## 🧠 Recall test (my own answers)

1. **What is cloud computing in one sentence?**  
   On-demand rental of IT resources over the internet, paid per use.

2. **Difference between a Region and an Availability Zone?**  
   Region = a geographic location (like Mumbai). AZ = an isolated 
   datacenter cluster within that region. Multiple AZs per region 
   for high availability.

3. **In the Shared Responsibility Model, who patches the operating 
   system on an EC2 instance?**  
   The customer (me). AWS handles the underlying hardware and 
   hypervisor, but the OS inside the EC2 is my responsibility.

4. **Name 3 benefits of using AWS instead of owning servers.**  
   Pay-as-you-go, no upfront cost, and global reach in minutes 
   instead of months.

---

## 💡 What clicked for me
The Shared Responsibility Model isn't a new concept — it's exactly 
how managed hosting works today, just formalized. I've been living 
this at Bobcares for two years without calling it by name.

---

## ❓ Questions I still have
- How does AWS decide pricing per region — is there a formula, or is 
  it purely based on operating costs?
- If an entire Region goes down, is my data lost, or does AWS 
  replicate across regions automatically?
- What's the practical difference between an Edge Location and an AZ?

*(Revisit after Module 4 — Networking)*

---

## 📌 Terms to remember for the exam
- Cloud computing, on-demand, pay-as-you-go
- Regions, Availability Zones (AZs), Edge Locations
- Shared Responsibility Model
- Cloud-based / On-premises / Hybrid deployment models
- CloudFront (mentioned briefly — CDN using Edge Locations)