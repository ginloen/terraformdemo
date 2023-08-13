pipeline {
    agent {
        label 'docker-build-agent'
    }
    
    environment {
        TF_VAR_TERRAFORM_SSH_KEY = credentials('TERRAFORM_SSH_KEY')
        TERRAFORM_CLOUD_CONFIG = credentials('TERRAFORM_CLOUD_CONFIG')
    }

    stages {
        stage('Git Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ginloen/terraformdemo.git']])
            }
        }
        stage('Terraform Init') {
            steps {
                sh '''cp $TERRAFORM_CLOUD_CONFIG ~/
terraform init'''
            }
        }
        stage('Terraform Plan') {
            steps {
                sh ('terraform plan')
            }
        }
        stage('Terraform Apply') {
            steps {
                sh '''cp $TF_VAR_TERRAFORM_SSH_KEY $WORKSPACE
                terraform apply --auto-approve'''
            }
        }
    }
}
