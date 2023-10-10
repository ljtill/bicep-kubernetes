# Kubernetes

This repository contains the infra-as-code components for rapidly provisioning Azure Kubernetes Service clusters.

_Please note these artifacts are under development and subject to change._

---

## Getting Started

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
