# DevSecOps CI/CD Pipeline using GitHub Actions, Terraform, tfsec, Trivy, and Sealed Secrets

This project demonstrates a secure and automated CI/CD pipeline using **Terraform**, **GitHub Actions**, **tfsec**, **Trivy**, and **Sealed Secrets** to deploy infrastructure and applications to AWS securely.

## 🔧 Tools & Technologies

- **Terraform** – Infrastructure as Code for AWS provisioning
- **GitHub Actions** – CI/CD automation
- **tfsec** – Static analysis for Terraform security issues
- **Trivy** – Vulnerability scanner for Dockerfiles and file systems
- **Sealed Secrets** – Securely manage Kubernetes secrets in GitOps

## ⚙️ CI/CD Workflow Overview

On every push to the `main` branch:

1. **Checkout Code** – Pulls source code from the repository
2. **Terraform Init** – Initializes the Terraform working directory
3. **tfsec** – Runs a security scan on the Terraform files
4. **Trivy** – Runs a vulnerability scan on the file system
5. **Apply Sealed Secret** – Deploys Kubernetes secrets using `kubeseal`
6. **Terraform Plan & Apply** – Provisions AWS resources

## 🛡️ Security Checks

- `tfsec` ensures Terraform code follows best practices and flags misconfigurations.
- `Trivy` detects OS and dependency vulnerabilities in your project’s filesystem.

## 🔑 Secrets Management

Secrets are sealed using Bitnami Sealed Secrets and committed to the repository safely. They are decrypted only inside the cluster using a public-private key pair.

## 🚀 Deployment

This pipeline provisions AWS infrastructure and deploys resources securely using Terraform, ensuring security checks pass before infrastructure changes are applied.

