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
          echo 'Deploying Stage'
          }
        }
      }
    post {
      success {
        echo 'Pipeline has been completed'
      }
    }
   } 
