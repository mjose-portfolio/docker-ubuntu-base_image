pipeline {
  agent any
  stages {
    stage('build') {
      parallel {
        stage('latest') {
          when {
            branch 'master'
          }
          steps {
            script {
              env.TAG = "latest"
            }
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('16.04') {
          when {
            branch 'v16.04'
          }
          steps {
            script {
              env.TAG = "version-16.04"
            }
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('17.04') {
          when {
            branch 'v17.04'
          }
          steps {
            script {
              env.TAG = "version-17.04"
            }
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('18.04') {
          when {
            branch 'v18.04'
          }
          steps {
            script {
              env.TAG = "version-18.04"
            }
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('19.04') {
          steps {
            script {
              env.TAG = "version-19.04"
            }
            sh 'docker build . -t mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
      }
    }
    stage('Test') {
      parallel {
        stage('latest') {
          when {
            branch 'master'
          }
          steps {
            script {
              env.TAG = "latest"
            }
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init -- ls'
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init --skip-startup-files -- ls'
          }
        }
        stage('16.04') {
          when {
            branch 'v16.04'
          }
          steps {
            script {
              env.TAG = "version-16.04"
            }
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init -- ls'
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init --skip-startup-files -- ls'
          }
        }
        stage('17.04') {
          when {
            branch 'v17.04'
          }
          steps {
            script {
              env.TAG = "version-17.04"
            }
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init -- ls'
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init --skip-startup-files -- ls'
          }
        }
        stage('18.04') {
          when {
            branch 'v18.04'
          }
          steps {
            script {
              env.TAG = "version-18.04"
            }
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init -- ls'
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init --skip-startup-files -- ls'
          }
        }
        stage('19.04') {
          when {
            branch 'v19.04'
          }
          steps {
            script {
              env.TAG = "version-19.04"
            }
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init -- ls'
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init --skip-startup-files -- ls'
          }
        }
      }
    }
    stage('Pull') {
      parallel {
        stage('latest') {
          when {
            branch 'master'
          }
          steps {
            script {
              env.TAG = "latest"
            }
            sh 'docker push mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('16.04') {
          steps {
            script {
              env.TAG = "version-16.04"
            }
            sh 'docker push mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('17.04') {
          when {
            branch 'v17.04'
          }
          steps {
            script {
              env.TAG = "version-17.04"
            }
            sh 'docker push mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('18.04') {
          when {
            branch 'v18.04'
          }
          steps {
            script {
              env.TAG = "version-18.04"
            }
            sh 'docker push mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('19.04') {
          when {
            branch 'v19.04'
          }
          steps {
            script {
              env.TAG = "version-19.04"
            }
            sh 'docker push mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
      }
    }
    stage('Clean') {
      parallel {
        stage('latest') {
          when {
            branch 'master'
          }
          steps {
            script {
              env.TAG = "latest"
            }
            sh 'docker rmi -f mjoseportfolio/ubuntu-bi:${TAG}'
            sh 'docker rmi -f ubuntu-bi:${TAG}'
          }
        }
        stage('16.04') {
          steps {
            script {
              env.UTAG = "16.04"
              env.TAG = "version-16.04"
            }
            sh 'docker rmi -f mjoseportfolio/ubuntu-bi:${TAG}'
            sh 'docker rmi -f ubuntu:${UTAG}'
          }
        }
        stage('17.04') {
          when {
            branch 'v17.04'
          }
          steps {
            script {
              env.TAG = "version-17.04"
              env.UTAG = "17.04"
            }
            sh 'docker rmi -f mjoseportfolio/ubuntu-bi:${TAG}'
            sh 'docker rmi -f ubuntu:${UTAG}'
          }
        }
        stage('18.04') {
          when {
            branch 'v18.04'
          }
          steps {
            script {
              env.TAG = "version-18.04"
              env.UTAG = "18.04"
            }
            sh 'docker rmi -f mjoseportfolio/ubuntu-bi:${TAG}'
            sh 'docker rmi -f ubuntu:${UTAG}'
          }
        }
        stage('19.04') {
          when {
            branch 'v19.04'
          }
          steps {
            script {
              env.TAG = "version-19.04"
              env.UTAG = "19.04"
            }
            sh 'docker rmi -f mjoseportfolio/ubuntu-bi:${TAG}'
            sh 'docker rmi -f ubuntu:${UTAG}'
          }
        }
      }
    }
  }
}