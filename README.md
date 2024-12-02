# Three-Tier Cloud Architecture with Terraform

## Overview
This project demonstrates how to implement a **three-tier cloud architecture** using **Terraform** on AWS. The architecture is designed for scalability, security, and performance, making it an ideal solution for organizations such as a **large orthopedic surgery practice** transitioning its IT infrastructure to the cloud. 

With automated infrastructure deployment and a modular design, this solution enables rapid provisioning, seamless scaling, and secure management of resources, meeting both operational and compliance requirements.

Obviously, I wanted to show case my Terraform and IaC knowledge, but the real project could not be uploaded to GitHub as it is a working production for said Orthopedic Office, so this is a generic version of the deployment I did. 
---

## Architecture Highlights

### 1. **Web Tier**
- Elastic Load Balancer (ELB) for distributing incoming traffic.
- Auto Scaling Group (ASG) for scaling EC2 instances dynamically based on demand.

### 2. **Application Tier**
- EC2 instances configured to handle business logic and application processing.
- IAM roles for secure access to AWS resources.

### 3. **Database Tier**
- Amazon RDS (MySQL) deployed in private subnets for secure data storage.
- Managed database features such as encryption and automated backups.

### 4. **Networking**
- Virtual Private Cloud (VPC) with public, private, and database subnets.
- NAT Gateway for controlled internet access for private resources.

### 5. **Security**
- Security Groups with tier-specific access rules.
- IAM policies following the principle of least privilege.

---

## Use Cases for a Large Orthopedic Surgery Practice

### **Enhanced Patient Management**
Securely store and access patient records, schedule appointments, and integrate with Electronic Health Record (EHR) systems.

### **Scalable Imaging System**
Handle the storage and processing of large medical imaging files (e.g., X-rays, MRIs) with high performance and scalability.

### **Secure Remote Access**
Enable doctors and staff to securely access systems remotely, maintaining HIPAA compliance with data protection measures.

### **Cost Efficiency**
Dynamically scale resources based on usage, optimizing costs during peak and off-peak hours.

### **Regulatory Compliance**
Ensure compliance with healthcare standards through secure networking, data encryption, and access controls.

---

## Deployment Instructions

### **1. Prerequisites**
- AWS account with sufficient permissions.
- Terraform installed on your local machine.
- Basic understanding of Terraform and AWS services.

### **2. Steps to Deploy**
1. Clone the repository:
   ```bash
   git clone https://github.com/JoshBaneyCS/devops-example-three-tier-architecture
