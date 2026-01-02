def call(String env) {
    sh """
      terraform plan \
      -var-file=environments/${env}/terraform.tfvars
    """
}
