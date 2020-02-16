pipeline {
  agent any
  stages {
    stage('latest') {
      when {
        branch 'master'
      }
      parallel {
        withEnv(["TAG=latest"]) { 
          stage('Build') {
            steps {
              sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
            }
          }
        }
      }
    }
    stage('v16.04') {
      when {
        branch 'v16.04'
      }
      parallel {
        withEnv(["TAG=version-16.04"]) { 
          stage('Build') {
            steps {
              sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
            }
          }
        }
      }
    }
    stage('v17.04') {
      when {
        branch 'v17.04'
      }
      parallel {
        withEnv(["TAG=version-17.04"]) { 
          stage('Build') {
            steps {
              sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
            }
          }
        }
      }
    }
    stage('v18.04') {
      when {
        branch 'v18.04'
      }
      parallel {
        withEnv(["TAG=version-18.04"]) { 
          stage('Build') {
            steps {
              sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
            }
          }
        }
      }
    }
    stage('v19.04') {
      when {
        branch 'v19.04'
      }
      parallel {
        withEnv(["TAG=version-19.04"]) { 
          stage('Build') {
            steps {
              sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
            }
          }
        }
      }
    }
  }
}