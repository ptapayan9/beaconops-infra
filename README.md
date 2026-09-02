# beaconops-infra
A GitOps-Managed Uptime Platform on AWS EKS

## File Structure
terraform/ owns AWS resources.
gitops/ describes everything Argo CD deploys into Kubernetes.
app/ contains the Go API and checker.
terraform/bootstrap/ will create resources Terraform itself depends upon, such as remote state storage.