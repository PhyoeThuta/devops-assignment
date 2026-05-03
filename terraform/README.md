# GKE Terraform

This folder provisions:
- VPC
- regional subnet with secondary ranges
- Cloud NAT
- private GKE cluster
- managed node pool
- Workload Identity
- logging and monitoring configuration

## Notes
- No GCP access keys are embedded in the application.
- Authentication should be done with Google Cloud ADC or workload identity.
- Copy `terraform.tfvars.example` to `terraform.tfvars` and fill in your project ID.

## Apply
1. `terraform init`
2. `terraform plan`
3. `terraform apply`
