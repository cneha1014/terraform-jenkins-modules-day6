def call(String env) {
    withCredentials([
        [$class: 'AmazonWebServicesCredentialsBinding',
         credentialsId: 'aws-creds']
    ]) {
        sh """
          terraform apply \
          -var-file=environments/${env}/terraform.tfvars \
          -auto-approve
        """
    }
}
