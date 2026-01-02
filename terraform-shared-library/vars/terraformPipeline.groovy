def call(String env) {

    withCredentials([
        [$class: 'AmazonWebServicesCredentialsBinding',
         credentialsId: 'aws-creds']
    ]) {

        sh "terraform init -reconfigure"
        sh "terraform plan -var-file=environments/${env}/terraform.tfvars"

        if (env == 'uat' || env == 'prod') {
            input message: "Approve Terraform Apply for ${env.toUpperCase()}?"
        }

        sh "terraform apply -auto-approve -var-file=environments/${env}/terraform.tfvars"
    }
}
