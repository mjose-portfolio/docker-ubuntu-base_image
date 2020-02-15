pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''
        echo ${GIT_BRANCH}
        if [ "${GIT_BARCH}" = "master" ]; then
          docker build . -t mjoseportfolio/ubuntu-bi:latest
        elif [ "${GIT_BARCH}" = "v16.04" ]; then
          docker build . -t mjoseportfolio/ubuntu-bi:version-16.04
        elif [ "${GIT_BARCH}" = "v17.04" ]; then
          docker build . -t mjoseportfolio/ubuntu-bi:version-17.04
        elif [ "${GIT_BARCH}" = "v18.04" ]; then
          docker build . -t mjoseportfolio/ubuntu-bi:version-18.04
        elif [ "${GIT_BARCH}" = "v19.04" ]; then
          docker build . -t mjoseportfolio/ubuntu-bi:version-19.04
        fi
        '''
      }
    }

  }
}