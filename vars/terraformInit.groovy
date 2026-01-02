def call(String env) {
    sh """
      terraform init \
      -backend-config=env/${env}.tfvars \
      -reconfigure
    """
}
