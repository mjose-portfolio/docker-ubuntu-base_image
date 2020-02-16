pipeline {
  agent any
  stages {
    stage('Build') {
      environment {
        when {
          branch 'master'
        }
        dockerTAG = 'latest'
        when {
          branch 'v16.04'
        }
        dockerTAG = 'version-16.04'
        when {
          branch 'v17.04'
        }
        dockerTAG = 'version-17.04'
        when {
          branch 'v18.04'
        }
        dockerTAG = 'version-18.04'
        when {
          branch 'v19.04'
        }
        dockerTAG = 'version-19.04'
      }
//      when {
//        branch 'master'
//      }
//      environment {
//        dockerTAG = 'latest'
//      }
      steps {
        sh 'docker build . -t mjoseportfolio/ubuntu-bi:${dockerTAG}'
      }
//    }
//    stage('Build v16.04') {
//      when {
//        branch 'v16.04'
//      }
//      environment {
//        dockerTAG = 'version-16.04'
//      }
//      steps {
//        sh 'docker build . -t mjoseportfolio/ubuntu-bi:${dockerTAG}'
//      }
//    }
//    stage('Build v17.04') {
//      when {
//        branch 'v17.04'
//      }
//      environment {
//        dockerTAG = 'version-17.04'
//      }
//      steps {
//        sh 'docker build . -t mjoseportfolio/ubuntu-bi:${dockerTAG}'
//      }
//    }
//    stage('Build v18.04') {
//      when {
//        branch 'v18.04'
//      }
//      environment {
//        dockerTAG = 'version-18.04'
//      }
//      steps {
//        sh 'docker build . -t mjoseportfolio/ubuntu-bi:${dockerTAG}'
//      }
//    }
//    stage('Build v19.04') {
//      when {
//        branch 'v19.04'
//      }
//      environment {
//        dockerTAG = 'version-19.04'
//      }
//      steps {
//        sh 'docker build . -t mjoseportfolio/ubuntu-bi:${dockerTAG}'
//      }
    }
  }
}