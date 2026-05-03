**Candidate Assignment Instructions:**

The sample application is developed using Go. Our development team would like to deliver this application to Production. As a DevOps engineer, you are responsible to complete the tasks by following these key areas: High Availability, Scalability, Security.

**Tasks:**

1. Create a **Dockerfile** and **.dockerignore** for a given application (Bonus Point: ***Docker Hardened Images*** and ***multi-stage build***)

    **Expected Output:** Dockerfile

2. Build the image using the Dockerfile and push to Docker Hub, *DO NOT* use `latest` tag.

    **Expected Output:** Build and push command and Docker Hub URL

3. Create a Kustomize manifest to deploy the image from the previous step. The Kustomize should have flexibility to allow Developer to adjust values without having to rebuild the Kustomize frequently

    **Expected Output:** Kustomize manifest file to deploy the application with production-grade workload resilience (resource requests/limits, health probes, rolling updates, PDB, anti-affinity, and security context).

4. Setup GKE cluster with the related resources to run GKE like VPC, Subnets, etc. by following GKE Best Practices using any IaC tools (Terraform, OpenTufo, Pulumi) (Bonus point: use Terraform/Terragrunt)

    **Expected Output:** IaC code

    * ***Important Condition***: Avoid injecting the generated GCP access keys to the application directly. **Expected Output:** Kustomize manifest, IaC code or anything to complete this task.


5. Use ArgoCD to deploy this application. To follow GitOps practices, we prefer to have an ArgoCD application defined declaratively in a YAML file if possible.

    **Expected output:** Yaml files and instruction how to deploy the application or command line

6. Setting up centralized observability stacks to monitoring our infrastructure 

    **Expected Outputs:** Dashboard to monitoring infrastructure end-to-end included Metrics, Logs and Traces and configuration your stacks (Bonus point: using LGTM stacks)

7. Create CICD workflow using GitOps pipeline to build and deploy application 

    **Expected output:** GitOps pipeline (Github, Gitlab, Bitbucket, Jenkins) workflow or diagram

8. Using Ansible Playbooks, to install and managed Linux package following requirements
    - Update OS packages
    - Install Docker, configure docker daemon for logs rotation 
    - Run NGINX Docker image with custom HTML page from template, restart policy always and expose port.
    - Install Node Exporter as systemd service with a dedicated non-login system user

    **Expected Outputs:** A fully structured Ansible project directory and execution command
