# Hello-Helm: AKS + Helm + Terraform + CI/CD (GitHub Actions)

This repository contains a simple "Hello, World!" Go app packaged by Helm and deployed into an Azure Kubernetes Service (AKS) cluster provisioned by Terraform. The CI/CD pipeline applies Terraform, builds and pushes the Docker image to Azure Container Registry (ACR), and installs the Helm chart into AKS.

## Quick start (non-technical)

1. Create an Azure service principal and save the JSON credentials as the `AZURE_CREDENTIALS` secret in your GitHub repository.
```
az ad sp create-for-rbac --name "github-actions-sp" --role contributor --scopes /subscriptions/{{subscriptionID}} --sdk-auth
```
2. Push this repository to your GitHub account.
3. Open the Actions tab in GitHub, run the workflow on the `main` branch.
4. The workflow will provision resources, push the image, and deploy the Helm chart.
```
To test you can click or visit the URL provided in the "Wait for LoadBalancer external IP" step of the Work Flow
