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
        stage('Test') {
          steps {
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init -- ls'
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init --skip-startup-files -- ls'
          }
        }
        stage('Pull') {
          steps {
            sh 'docker push mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('clean') {
          steps {
            sh 'docker rmi -f mjoseportfolio/ubuntu-bi:${TAG}'
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
        stage('Test') {
          steps {
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init -- ls'
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init --skip-startup-files -- ls'
          }
        }
        stage('Pull') {
          steps {
            sh 'docker push mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('clean') {
          steps {
            sh 'docker rmi -f mjoseportfolio/ubuntu-bi:${TAG}'
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
        stage('Test') {
          steps {
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init -- ls'
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init --skip-startup-files -- ls'
          }
        }
        stage('Pull') {
          steps {
            sh 'docker push mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('clean') {
          steps {
            sh 'docker rmi -f mjoseportfolio/ubuntu-bi:${TAG}'
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
        stage('Test') {
          steps {
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init -- ls'
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init --skip-startup-files -- ls'
          }
        }
        stage('Pull') {
          steps {
            sh 'docker push mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('clean') {
          steps {
            sh 'docker rmi -f mjoseportfolio/ubuntu-bi:${TAG}'
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
        stage('Test') {
          steps {
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init -- ls'
            sh 'docker run mjoseportfolio/ubuntu-bi:${TAG} /sbin/my_init --skip-startup-files -- ls'
          }
        }
        stage('Pull') {
          steps {
            sh 'docker push mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
        stage('Clean') {
          steps {
            sh 'docker rmi -f mjoseportfolio/ubuntu-bi:${TAG}'
          }
        }
      }
    }
    
    stage('Clean Ubuntu') {
      steps {
        sh 'docker images -a | grep "ubuntu" | awk '{print $3}' | xargs docker rmi'
      }
    }
  }
}