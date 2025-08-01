# ☁️ cloud_provisioning_project

<p align="center">
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT" />
  <img src="https://img.shields.io/badge/HCL-100%25-blue" alt="Main Language" />
  <img src="https://img.shields.io/badge/status-active-brightgreen" alt="Status" />
</p>

---

## ✨ Overview

**cloud_provisioning_project** is a testing environment for cloud resource deployment using Infrastructure as Code. This repository allows you to create and manage various cloud resources with Terraform (HCL) and features automatic integration via GitHub Actions for CI/CD. It's ideal for experimenting, learning, and validating cloud configurations in controlled environments.

---

## 🎨 Tech Stack

<div align="center">

| Language / Tool                                         | Usage                                     |
|---------------------------------------------------------|-------------------------------------------|
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/terraform/terraform-original.svg" width="24"/> HCL (Terraform) | Infrastructure as Code (IaC)              |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" width="24"/> GitHub Actions        | CI/CD automation                          |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/aws/aws-original.svg" width="24"/> AWS / <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/googlecloud/googlecloud-original.svg" width="24"/> GCP / <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/azure/azure-original.svg" width="24"/> Azure | Supported cloud providers                 |

</div>

---

## 🗂️ Project Structure

```text
.
├── main.tf              # Main cloud resource definition
├── variables.tf         # Configurable project variables
├── outputs.tf           # Deployment outputs
├── examples/            # Usage examples and configurations
├── .github/workflows/   # CI/CD pipelines (GitHub Actions)
└── README.md            # Project documentation
```

---

## ⚡ Features

- **Deploy multiple cloud resources** in testing environments
- **Infrastructure as Code**: parameterization and versioning with Terraform
- **CI/CD automation** via GitHub Actions
- **Easy extension** and adaptation for different cloud providers
- **Clean and documented code** for collaboration and learning

---

## 🛠️ Getting Started

> **Deploy resources in minutes.**

```bash
# Clone the repository
git clone https://github.com/MarSegu/cloud_provisioning_project.git
cd cloud_provisioning_project

# Initialize Terraform
terraform init

# Apply the infrastructure
terraform apply
```

---

## ⚙️ Main Variables

| Variable         | Description                          | Type   | Required | Example              |
|------------------|--------------------------------------|--------|----------|----------------------|
| `project_name`   | Project name                         | string | Yes      | `"cloud-lab"`        |
| `region`         | Deployment region                    | string | Yes      | `"us-east-1"`        |
| `resource_type`  | Type of resource to deploy           | string | Yes      | `"ec2"`              |
| `tags`           | Resource tags                        | map    | No       | `{env = "test"}`     |

> See [`variables.tf`](./variables.tf) for more options and details.

---

## 🧪 Testing

> Plan and test the infrastructure before applying changes.

```bash
terraform plan
terraform apply
```

---

## 🚀 Deployment

- **CI/CD:** Automated via workflows in `.github/workflows/`.

---

## 📤 Outputs

| Output         | Description                        |
|----------------|------------------------------------|
| `resource_id`  | ID of the deployed resource        |
| `endpoint`     | Access endpoint (if applicable)    |
| `status`       | Deployment status                  |

---

## 🤝 Contributing

Contributions are welcome!  
Open an issue or pull request for suggestions and improvements.

---

## 📃 License

Distributed under the MIT License. See [LICENSE](LICENSE) for more details.

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=110&section=footer"/>
</p>
