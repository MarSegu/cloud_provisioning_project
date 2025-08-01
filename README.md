# ☁️ cloud_provisioning_project

<p align="center">
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT" />
  <img src="https://img.shields.io/badge/HCL-100%25-blue" alt="Main Language" />
  <img src="https://img.shields.io/badge/status-active-brightgreen" alt="Status" />
</p>

---

## ✨ Overview

**cloud_provisioning_project** es un entorno de pruebas para despliegue de recursos cloud mediante infraestructura como código. Este repositorio permite crear y administrar diferentes recursos en la nube utilizando Terraform (HCL) y cuenta con integración automática vía GitHub Actions para CI/CD. Ideal para experimentar, aprender y validar configuraciones cloud en ambientes controlados.

---

## 🎨 Tech Stack

<div align="center">

| Lenguaje / Herramienta                                       | Uso                                         |
|--------------------------------------------------------------|---------------------------------------------|
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/terraform/terraform-original.svg" width="24"/> HCL (Terraform) | Infraestructura como código (IaC)           |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" width="24"/> GitHub Actions        | Automatización CI/CD                        |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/aws/aws-original.svg" width="24"/> AWS / <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/googlecloud/googlecloud-original.svg" width="24"/> GCP / <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/azure/azure-original.svg" width="24"/> Azure | Proveedores de nube soportados              |

</div>

---

## 🗂️ Project Structure

```text
.
├── main.tf              # Definición principal de recursos cloud
├── variables.tf         # Variables configurables del proyecto
├── outputs.tf           # Outputs del despliegue
├── examples/            # Ejemplos de uso y configuraciones
├── .github/workflows/   # Pipelines CI/CD (GitHub Actions)
└── README.md            # Documentación del proyecto
```

---

## ⚡ Features

- **Despliegue de múltiples recursos cloud** en ambientes de prueba
- **Infraestructura como código**: parametrización y versionado con Terraform
- **Automatización CI/CD** vía GitHub Actions
- **Fácil extensión** y adaptación para distintos proveedores cloud
- **Código limpio y documentado** para colaboración y aprendizaje

---

## 🛠️ Getting Started

> **Despliega recursos en minutos.**

```bash
# Clona el repositorio
git clone https://github.com/MarSegu/cloud_provisioning_project.git
cd cloud_provisioning_project

# Inicializa Terraform
terraform init

# Aplica la infraestructura
terraform apply
```

---

## ⚙️ Variables Principales

| Variable         | Descripción                            | Tipo   | Requerido | Ejemplo              |
|------------------|----------------------------------------|--------|-----------|----------------------|
| `project_name`   | Nombre del proyecto                    | string | Sí        | `"cloud-lab"`        |
| `region`         | Región del despliegue                  | string | Sí        | `"us-east-1"`        |
| `resource_type`  | Tipo de recurso a desplegar            | string | Sí        | `"ec2"`              |
| `tags`           | Etiquetas para los recursos            | map    | No        | `{env = "test"}`     |

> Consulta [`variables.tf`](./variables.tf) para más opciones y detalles.

---

## 🧪 Testing

> Planifica y prueba la infraestructura antes de aplicar cambios.

```bash
terraform plan
terraform apply
```

---

## 🚀 Deployment

- **CI/CD:** Automatizado vía workflows en `.github/workflows/`.

---

## 📤 Outputs

| Output      | Descripción                    |
|-------------|-------------------------------|
| `resource_id`  | ID del recurso desplegado        |
| `endpoint`     | Endpoint de acceso (si aplica)   |
| `status`       | Estado del despliegue            |

---

## 🤝 Contributing

¡Las contribuciones son bienvenidas!  
Abre un issue o pull request para sugerencias y mejoras.

---

## 📃 License

Distribuido bajo la licencia MIT. Consulta [LICENSE](LICENSE) para más detalles.

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=110&section=footer"/>
</p>
