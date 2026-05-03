# GitOps CI/CD workflow

This workflow builds and pushes the Docker image, then updates the Kustomize overlay so Argo CD can sync the new version.

## Flow
1. Push to `main`
2. Build the Go image
3. Tag it with a timestamp
4. Push to Docker Hub
5. Update the production Kustomize image tag
6. Commit the manifest change back to Git
7. Argo CD detects the Git change and deploys it

## Secrets required
- `DOCKERHUB_USERNAME`
- `DOCKERHUB_TOKEN`

## Notes
- This is a GitOps style pipeline because the deployment source of truth stays in Git.
- For stronger promotion controls, add PR approvals before changing the production overlay.
