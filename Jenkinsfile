pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
            stage('Cloning Git'){
                steps{
                    git 'https://github.com/6mmario/SA_Practica.git'
                }
            }
            stage('Instalar_Dependencias') {
                steps {
                    sh 'npm install'
                }
            }
            stage('TEST'){
                steps{
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