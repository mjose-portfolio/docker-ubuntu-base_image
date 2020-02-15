pipeline {
  agent any
  stages {
    stage('Build latest') {
      when {
        branch 'master'
      }
      steps {
        sh '''
        if [ "${GIT_BRANCH}" = "master" ]; then
          docker build . -t mjoseportfolio/ubuntu-bi:latest
        elif [ "${GIT_BRANCH}" = "v16.04" ]; then
          docker build . -t mjoseportfolio/ubuntu-bi:version-16.04
        elif [ "${GIT_BRANCH}" = "v17.04" ]; then
          docker build . -t mjoseportfolio/ubuntu-bi:version-17.04
        elif [ "${GIT_BRANCH}" = "v18.04" ]; then
          docker build . -t mjoseportfolio/ubuntu-bi:version-18.04
        elif [ "${GIT_BRANCH}" = "v19.04" ]; then
          docker build . -t mjoseportfolio/ubuntu-bi:version-19.04
        fi
        '''
      }
    }
  }
}