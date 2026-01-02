def call(String env) {
    sh """
      terraform apply -var-file=env/${env}.tfvars -auto-approve
    """
}
