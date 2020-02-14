Jenkinsfile (ubuntu-bi)
pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                node {
                    checkout scm

                    def customImage = docker.build("my-image:${env.BUILD_ID}")

                    customImage.inside {
                    sh 'make test'
                    }
                }
                sh 'node --version'
                sh 'svn --version'
            }
        }
    }
}