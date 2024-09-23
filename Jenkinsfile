pipeline {
    agent any  // Use any available agent

    environment {
        GITHUB_TOKEN = credentials('github-token')
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        ARM_CLIENT_ID = credentials('azure-client-id')
        ARM_CLIENT_SECRET = credentials('azure-client-secret')
        ARM_SUBSCRIPTION_ID = credentials('azure-subscription-id')
        ARM_TENANT_ID = credentials('azure-tenant-id')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/MarSegu/cloud_provisioning_project.git', credentialsId: 'github-token'
            }
        }

        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                bat 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'terraform plan -out=tfplan'
            }
            post {
                success {
                    archiveArtifacts artifacts: 'tfplan', fingerprint: true
                }
            }
        }

        stage('Manual Approval Before Apply') {
            steps {
                script {
                    input message: 'Do you want to proceed with Apply?', ok: 'Apply'
                }
                bat 'terraform apply -auto-approve tfplan'
            }
        }

        stage('Manual Approval Before Destroy') {
            steps {
                script {
                    input message: 'Do you want to proceed with Destroy?', ok: 'Destroy'
                }
                bat 'terraform destroy -auto-approve'
            }
        }
    }

    post {
        always {
            script {
               //skip the step if context is missing
               if (getContext(hudson.FilePath)) {
                 echo "It works"
               }
            }
        }
    }
}
