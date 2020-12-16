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
            stage('Test') {
                steps {
                    sh 'npm test'
                }
            }
            stage('Deploy'){
                steps{
                    sh 'npm start'
                }
            }
        }
}