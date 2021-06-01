pipeline {
  agent any
  stages {
    stage('test') {
      parallel {
        stage('test') {
          steps {
            sh 'echo "hello"'
          }
        }

        stage('test2') {
          steps {
            sh 'echo "hello"'
          }
        }

      }
    }

  }
}