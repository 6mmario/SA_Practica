pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
            stage('Cloning Git'){
                steps{
                    git 'https://gitlab.com/6mmario/sa_practicas.git'
                }
            }
            stage('Build') {
                steps {
                    sh 'npm install'
                }
            }
            stage('Deliver') {
                steps {
                    sh './jenkins/scripts/deliver.sh'
                    input message: 'Finished using the web site? (Click "Proceed" to continue)'
                    sh './jenkins/scripts/kill.sh'
                }
            }
            stage('Test') {
                steps {
                    sh 'echo hacer test'
                }
            }
        }
}