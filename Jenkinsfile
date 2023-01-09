pipeline {
    agent any

    stages {
        stage('GIT Intialize') {
            steps {
                git branch: 'main', url: 'https://github.com/kaushal31rajput/jenkins1'
                echo 'This Git Initilization completed'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
                echo 'Terraform intialize'
                pwd()
            }
        }
        stage('Terraform plan') {
            steps {
                sh 'terraform plan'
                echo 'Terraform plan'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'terraform apply'
                echo 'Terraform plan'
            }
        }
    }
}