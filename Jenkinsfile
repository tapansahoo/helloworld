pipeline {
    agent any
    stages {     
        stage('Prepare') {	
	        steps {
		        
                checkout scm
             }
         }
        stage('Build') {
            agent {
                docker {
                    image 'maven:3.8-openjdk-11'
                    // Run the container on the node specified at the top-level of the Pipeline, in the same workspace, rather than on a new node entirely:
                    reuseNode true
                }
            }
            steps {
                sh 'mvn install'
            }
        }
        stage ('image'){
            
            steps {

                sh 'docker build -t  hello_world .'

             }

        }
     
       stage ('run'){
            
            steps {

                sh 'docker run --rm hello_world'

             }

        }

    }
}
