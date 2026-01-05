@Library('terraform-shared-lib') _


pipeline {
    agent any

     options {
        disableConcurrentBuilds()
        timestamps()                
    }

    parameters {
        choice(
            name: 'ENV',
            choices: ['dev', 'uat', 'prod'],
            description: 'Select environment'
        )
    }

    stages {

        stage('Terraform Init') {
            steps {
                lock(resource: "terraform-${params.ENV}") {
                    terraformInit(params.ENV)
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                lock(resource: "terraform-${params.ENV}") {
                    terraformPlan(params.ENV)
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                lock(resource: "terraform-${params.ENV}") {
                    terraformApply(params.ENV)
                }
            }
        }
    }
}
