def call(String env) {
    withCredentials([
        [$class: 'AmazonWebServicesCredentialsBinding',
         credentialsId: 'aws-creds']
    ]) {
        sh """
          terraform plan \
          -var-file=environments/${env}/terraform.tfvars
        """
    }
}
