pipeline {
  agent any
  stages {
    stage('latest') {
      when {
        branch 'master'
      }
      parallel {
        stage('Build') {
          steps {
            script {
              env.TAG = "latest"
            }
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
      }
    }
    stage('v16.04') {
      when {
        branch 'v16.04'
      }
      parallel {
        stage('Build') {
          steps {
            script {
              env.TAG = "version-16.04"
            }
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
      }
    }
    stage('v17.04') {
      when {
        branch 'v17.04'
      }
      parallel {
        stage('Build') {
          steps {
            script {
              env.TAG = "version-16.04"
            }
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
      }
    }
    stage('v18.04') {
      when {
        branch 'v18.04'
      }
      parallel {
        stage('Build') {
          steps {
            script {
              env.TAG = "version-18.04"
            }
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
      }
    }
    stage('v19.04') {
      when {
        branch 'v19.04'
      }
      parallel {
        stage('Build') {
          steps {
            script {
              env.TAG = "version-16.04"
            }
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
      }
    }
  }
}