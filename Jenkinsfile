pipeline {
  agent none
  environment {
    PASSWORD = credentials('654321')
  }
    stages {
      stage('create image') {
        agent {
		  label 'deploy'
		  }
		  steps {
                    sh 'docker build -t jmsaky/pipeimage .'
		    sh 'docker login -u jmsaky -p $PASSWORD'
		    sh 'docker push jmsaky/pipeimage'
          }           
         }
      stage('deploy container') {
	     agent {
		   label 'deploy'
		   }
		   steps {
		     sh 'pwd'
	             sh 'echo test >> joseph.txt'
                     sh 'docker login -u jmsaky -p $PASSWORD'
		     sh 'docker run -dit --name joseph jmsaky/pipeimage -p 80:80'
		     sh 'curl http://localhost:80'
		   }              
          }
         }
        }
