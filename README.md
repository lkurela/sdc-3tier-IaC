# Azure 3-Tier Infrastructure using Terraform

## Project Overview

This project demonstrates how to deploy a **secure and scalable 3-Tier Architecture on Microsoft Azure using Terraform**.

The infrastructure follows enterprise cloud architecture principles including:

* Infrastructure as Code (IaC)
* Modular Terraform design
* Private Endpoints
* Web Application Firewall (WAF)
* CI/CD automation with GitHub Actions

---

# Architecture

The solution deploys a **3-Tier architecture** consisting of:

Frontend Tier

* Azure Application Gateway (WAF)

Application Tier

* Azure App Service

Data Tier

* Azure SQL Database
* Azure Storage Account

Networking

* Virtual Network
* Subnets
* Private Endpoints
* Network Security Groups

---

# Technologies Used

* Microsoft Azure
* Terraform
* GitHub Actions
* Azure App Service
* Azure SQL Database
* Azure Application Gateway (WAF)
* Azure Virtual Network
* Private Endpoints

---

# Project Structure

modules/
Reusable Terraform modules for each infrastructure component

network
Creates VNet, subnets and networking components

application_gateway
Deploys Application Gateway with WAF

appservice
Deploys Azure App Service

sqldb
Creates Azure SQL Server and Database

storage
Creates Azure Storage Account

private_endpoints
Configures private connectivity to services

---

# Deployment Steps

## 1 Clone the Repository

git clone https://github.com/<your-username>/azure-3tier-terraform-infrastructure.git

cd azure-3tier-terraform-infrastructure

## 2 Initialize Terraform

terraform init

## 3 Validate Configuration

terraform validate

## 4 Plan Deployment

terraform plan

## 5 Apply Infrastructure

terraform apply

---

# CI/CD Pipeline

GitHub Actions is used to automate:

Terraform Init
Terraform Plan
Terraform Apply

This ensures infrastructure deployments follow DevOps best practices.

---

# Security Features

Web Application Firewall (WAF)
Private Endpoints
Network Isolation
Secure Database Connectivity

---

# Use Cases

Enterprise cloud architecture training
DevOps practice projects
Terraform learning
Azure infrastructure automation

---

# Author

Lakshmi Narayana Kurela
Cloud | DevOps | Azure Infrastructure
