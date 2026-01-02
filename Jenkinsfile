@Library('terraform-shared-library') _

pipeline {
    agent any

    parameters {
        choice(
            name: 'ENV',
            choices: ['dev', 'uat', 'prod'],
            description: 'Select environment'
        )
    }

    stages {
        stage('Terraform Deploy') {
            steps {
                script {
                    lock(resource: "terraform-${params.ENV}") {
                        terraformPipeline(params.ENV)
                    }
                }
            }
        }
    }
}
