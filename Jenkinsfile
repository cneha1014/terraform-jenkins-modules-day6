@Library('terraform-shared-library') _

pipeline {
    agent any

    parameters {
        choice(name: 'ENV', choices: ['dev', 'uat', 'prod'], description: 'Environment')
    }

    stages {

        stage('Terraform Init') {
            steps {
                terraformInit(params.ENV)
            }
        }

        stage('Terraform Plan') {
            steps {
                terraformPlan(params.ENV)
            }
        }

        stage('Terraform Apply') {
            steps {
                terraformApply(params.ENV)
            }
        }
    }
}
