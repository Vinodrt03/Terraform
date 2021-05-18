stage('Terraform Initialization') {
when {
expression {
params.destroy==false
}
}
steps {
sh 'terraform init'
sh 'terraform workspace new $TWORKSPACE'
}
}
stage('Check Terraform plan') {
when {
expression {
params.destroy==false
}
}
steps {
sh 'export TF_WORKSPACE=$TWORKSPACE'
sh 'terraform plan -out myplan.txt'
}
}

