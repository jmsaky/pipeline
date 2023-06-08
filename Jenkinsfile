pipeline {
  agent { label 'docker' }
    stages {
      stage('create image') {
        steps {
          sh 'docker build -t pipeimage .'
          }           
         }
       stage('create container') {
         steps {
           sh 'docker run -dit --name mudassir pipeimage'
           }                
         }
        }
       }
