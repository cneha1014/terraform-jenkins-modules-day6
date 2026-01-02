def call(String env) {
    sh """
      terraform apply \
      -var-file=environments/${env}/terraform.tfvars \
      -auto-approve
    """
}
