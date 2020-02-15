pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''echo ${GIT_BRANCH}
if [ "${GIT_BARCH} = "origin/master" ]; then
docker build . -t mjoseportfolio/ubuntu-bi:latest'''
      }
    }

  }
}