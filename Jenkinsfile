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
            stage('Instalar_Dependencias') {
                steps {
                    sh 'npm install'
                }
            }
            
            stage('Deploy'){
                steps{
                    sh 'npm start'
                }
            }
        }
}