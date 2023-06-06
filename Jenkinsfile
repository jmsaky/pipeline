pipeline {
  agent any
    stages {
      stage('Build') {
        steps {
          echo 'Building Stage'
          }
        }
      stage('Test') {
        steps {
          echo 'Testing Stage'
          }
        }
      stage('Deploying') {
        steps {
          ech 'Deploying Stage'
          }
        post {
          failure {
          echo 'Deploying Stage has failed'
          }
        }
      }
      post {
        failure {
          echo 'Pipeline has been complimented but with errors'
        }
      }
   }
 }
