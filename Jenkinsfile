pipeline {
    agent any

    stages {
        stage('Clonando repositorio') {
            steps {
                git 'https://github.com/6mmario/SA_Practica.git'
            }
        }
        stage('Instalar Dependencias') {
            steps {
                sh 'npm install'
            }
        }
        stage('Aplicar Test') {
            steps {
               sh 'npm test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'npm start'
            }
        }
    }
}