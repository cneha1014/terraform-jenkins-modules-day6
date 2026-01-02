def call(String env) {
    sh """
      terraform plan -var-file=${env}.tfvars
    """
}
