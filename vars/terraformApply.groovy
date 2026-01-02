def call(String env) {
    sh """
      terraform apply -var-file=${env}.tfvars -auto-approve
    """
}
