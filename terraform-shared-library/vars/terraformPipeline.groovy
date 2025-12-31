def call() {

    pipeline {
        agent any

        parameters {
            choice(
                name: 'ENV',
                choices: ['dev', 'uat', 'prod'],
                description: 'Select environment'
            )
        }

        environment {
            TF_IN_AUTOMATION = "true"
        }

        stages {

            stage('Terraform Init') {
                steps {
                    sh 'terraform init'
                }
            }

            stage('Terraform Plan') {
                steps {
                    sh "terraform plan -var-file=environments/${params.ENV}/terraform.tfvars"
                }
            }

            stage('Approval') {
                when {
                    expression { params.ENV == 'uat' || params.ENV == 'prod' }
                }
                steps {
                    input message: "Approve Terraform Apply for ${params.ENV.toUpperCase()}?"
                }
            }

            stage('Terraform Apply') {
                steps {
                    sh "terraform apply -auto-approve -var-file=environments/${params.ENV}/terraform.tfvars"
                }
            }
        }
    }
}
