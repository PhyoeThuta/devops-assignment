# Ansible project

This project:
- updates OS packages
- installs Docker
- configures Docker log rotation
- runs an NGINX container with a custom HTML page
- installs Node Exporter as a systemd service using a dedicated non-login user

## Layout
- `inventory.ini` - local inventory
- `install.yml` - main playbook
- `requirements.yml` - Ansible collection requirements
- `templates/index.html.j2` - custom HTML template
- `files/docker-daemon.json` - Docker daemon logging config
- `group_vars/all/main.yml` - variables

## Install collection
```bash
ansible-galaxy collection install -r requirements.yml
```

## Run playbook
```bash
ansible-playbook -i inventory.ini install.yml
```
