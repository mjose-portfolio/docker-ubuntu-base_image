pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        when {
          branch 'master'
        }
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:latest'
      }
    }

  }
}