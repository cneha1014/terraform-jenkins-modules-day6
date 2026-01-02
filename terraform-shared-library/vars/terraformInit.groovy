def call(String env) {
    sh """
      terraform init \
      -backend-config=environments/${env}/terraform.tfvars \
      -reconfigure
    """
}
