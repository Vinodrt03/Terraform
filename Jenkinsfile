     environment {
        AWS_ACCESS_KEY_ID     = credentials('AKIAUWGMV37N5JOKMWHW')
        AWS_SECRET_ACCESS_KEY = credentials('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')
    }
            }
    stages {
        stage('checkout') {
            steps {
                 script{
                        dir("terraform")
                        {
                            git "https://github.com/Vinodrt03/Terraform.git"
                        }
                    }
                }
            }

        }
        stage('Approval') {
           when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }


        stage('Apply') {
            steps {
                sh "pwd;cd terraform/aws-instance-first-script ; terraform apply -input=false tfplan"
            }
        }
    }

  }

