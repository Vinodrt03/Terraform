pipeline{
    agent any
    tools{
        terraform 'terraform'
    }
    stages{
        stage('Git chekout'){
            step{
               git 'https://github.com/Vinodrt03/Terraform.git'
            }
        }
        stage('terraform Init'){
            step{
                sh 'terraform init'
            }
        }
        stage('terraform Plan'){
            step{
                sh 'terraform plan'
            }
        }
        stage('terraform apply'){
            step{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
