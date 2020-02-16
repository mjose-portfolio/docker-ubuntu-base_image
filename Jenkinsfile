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
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:latest'
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
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:version-16.04'
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
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:version-17.04'
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
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:version-18.04'
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
          sh 'docker build . -t mjoseportfolio/ubuntu-bi:version-19.04'
          }
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