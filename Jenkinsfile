pipeline {
    agent any

    stages {
        stage('Initialize Terraform') {
            steps {
                    sh 'terraform init'
            }
        }
        stage('Plan Terraform') {
            steps {
                    sh 'terraform plan'
            }
        }
        stage('Apply Terraform') {
            steps {
                    sh 'terraform destroy -auto-approve'
            }
        }
    }
    post {
        always {
            echo 'Pipeline execution complete.'
        }
        success {
            echo 'Terraform destroy succeeded.'
        }
        failure {
            echo 'Terraform apply failed.'
        }
    }
}
