pipeline {
  agent any
  stages {
    stage('Set image tag name') {
      when {
        branch 'master'
      }
      steps {
        environment {
          dockerTAG = 'latest'
        }
      }
      when {
        branch 'v16.04'
      }
      steps {
        environment {
          dockerTAG = 'version-16.04'
        }
      when {
        branch 'v17.04'
      }
      steps {
        environment {
          dockerTAG = 'version-17.04'
        }
      when {
        branch 'v18.04'
      }
      steps {
        environment {
          dockerTAG = 'version-18.04'
        }
      when {
        branch 'v19.04'
      }
      steps {
        environment {
          dockerTAG = 'version-19.04'
        }
      }
    }
    stage('Build') {
      steps {
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:${dockerTAG}'
      }
    }
  }
}