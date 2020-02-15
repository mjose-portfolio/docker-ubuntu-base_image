pipeline {
  agent any
  stages {
    stage('Build latest') {
      steps {
        when{
          branch 'master'
        }
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:latest'
      }
    }
    stage('Build version-16.04') {
      steps {
        when{
          branch 'v16.04'
        }
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:version-16.04'
      }
    }
    stage('Build version-17.04') {
      steps {
        when{
          branch 'v17.04'
        }
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:version-17.04'
      }
    stage('Build version-18.04') {
      steps {
        when{
          branch 'v18.04'
        }
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:version-18.04'
      }
    stage('Build version-19.04') {
      steps {
        when{
          branch 'v19.04'
        }
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:version-19.04'
      }
  }
}