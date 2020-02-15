pipeline {
  agent any
  stages {
    stage('Build latest') {
      when {
        branch 'master'
      }
      steps {
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:latest'
      }
    }
    stage('Build v16.04') {
      when {
        branch 'v16.04'
      }
      steps {
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:version-16.04'
      }
    }
    stage('Build v17.04') {
      when {
        branch 'v17.04'
      }
      steps {
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:version-17.04'
      }
    }
    stage('Build v18.04') {
      when {
        branch 'v18.04'
      }
      steps {
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:version-18.04'
      }
    }
    stage('Build v19.04') {
      when {
        branch 'v19.04'
      }
      steps {
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:version-19.04'
      }
    }
  }
}