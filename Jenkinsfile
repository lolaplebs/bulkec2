pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID = 'AKIA27ZFFPTSH7OSFIPR'
    AWS_SECRET_ACCESS_KEY = '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'
    AWS_DEFAULT_REGION = 'us-east-1'
  }

  stages {
    stage('git') {
        steps {
            sh 'git pull https://github.com/lolaplebs/bulkec2.git'
        }
    }
    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan -out=tfplan'
      }
    }

    stage('Terraform Apply') {
      steps {
        sh 'terraform apply tfplan'
      }
    }
  }
}
