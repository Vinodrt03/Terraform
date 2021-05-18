stages {
    stage('Provision Infrastructure') {
        steps {
            // credentialsId loading private key and storing in var
            withCredentials([file(credentialsId: 'ec2user.pem', variable: 'TF_VAR_private_key'),
            [
                $class           : 'AmazonWebServicesCredentialsBinding',
                credentialsId    : "aws_credentials",
                accessKeyVariable: 'AKIAUWGMV37N5JOKMWHW',
                secretKeyVariable: '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'
            ]])
           pipeline {
    agent any
    
    tools {
        terraform 'terraform'
    }
    stages {
        stage ("checkout from GIT") {
            steps {
               git 'https://github.com/Vinodrt03/Terraform.git'
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                sh 'terraform plan '
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
