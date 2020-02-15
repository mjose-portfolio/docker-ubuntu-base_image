pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Build latest') {
      steps {
        sh 'docker build .'
      }
    }

  }
}