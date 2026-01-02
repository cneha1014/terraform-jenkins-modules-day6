def call(String env) {
    withCredentials([
        [$class: 'AmazonWebServicesCredentialsBinding',
         credentialsId: 'aws-creds']
    ]) {
        sh """
          terraform init \
          -backend-config=environments/${env}/backend.tfvars \
          -reconfigure
        """
    }
}
