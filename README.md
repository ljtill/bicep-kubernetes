# Kubernetes

This repository contains the infra-as-code components for rapidly provisioning Azure Kubernetes Service clusters.

_Please note these artifacts are under development and subject to change._

---

## Getting Started

Before creating the Deployment Stack, the Bicep parameter file needs to be updated (`src/main.bicepparam`).

```bash
az stack sub create \
  --name 'default' \
  --location 'uksouth' \
  --template-file ./src/main.bicep \
  --parameters ./src/main.bicepparam \
  --delete-all \
  --deny-settings-mode none \
  --yes
```

```bash
az stack sub delete \
  --name 'default' \
  --delete-all \
  --yes
```
