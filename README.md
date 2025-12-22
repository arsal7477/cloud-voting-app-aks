# Scalable Multi-Tier Cloud Voting Application

## 📋 Project Overview
A cloud-native voting application deployed on Azure Kubernetes Service (AKS) demonstrating auto-scaling, fault tolerance, and efficient data handling for unpredictable workloads. This project implements a microservices architecture with containerized services managed by Kubernetes.

### Tier Breakdown
- **Presentation Tier**: Vote (Python) and Result (Node.js) web interfaces
- **Application Tier**: Worker service processing votes asynchronously
- **Data Tier**: Redis (in-memory cache) + PostgreSQL (persistent storage)

### Service Model Mapping
- **IaaS**: AKS node VMs (Standard_B2s)
- **PaaS**: Azure Kubernetes Service (managed control plane)
- **SaaS**: Not applicable (all services self-hosted)

## 🚀 Deployment

### Prerequisites
- Azure account with subscription
- Azure CLI installed
- kubectl installed
- Docker (for local testing)

### Quick Deployment Script
```bash
# 1. Create resource group
az group create --name voting-app-rg --location southeastasia

# 2. Create AKS cluster (1 node, B2s VM for cost optimization)
az aks create \
  --resource-group voting-app-rg \
  --name voting-aks-cluster \
  --node-count 1 \
  --node-vm-size Standard_B2s \
  --generate-ssh-keys

# 3. Connect to cluster
az aks get-credentials --resource-group voting-app-rg --name voting-aks-cluster

# 4. Deploy application
kubectl apply -f kubernetes-manifests/

cloud-voting-project/
├── kubernetes-manifests/     # Kubernetes deployment files
│   ├── vote-deployment.yaml      # Vote service
│   ├── result-deployment.yaml    # Result service
│   ├── redis-deployment.yaml     # Redis cache
│   ├── db-deployment.yaml        # PostgreSQL database
│   └── worker-deployment.yaml    # Worker service
├── azure-backups/            # Azure resource templates
└── documentation/            # Project documentation
