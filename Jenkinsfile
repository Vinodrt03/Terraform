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
            { sh """               
                terraform version
                cd ${TERRAFORM_DIR}
                terraform init
                terraform plan
                terraform apply -input=false -auto-approve
            """ }
        }
    }
