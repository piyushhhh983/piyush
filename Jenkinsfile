

pipeline {
    agent any

    stages {

        stage('Git Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/piyushhhh983/piyush.git'
            }
        }

        stage('Terraform Version') {
            steps {
                sh 'terraform --version'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: 'Do you want to create EC2?'
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
