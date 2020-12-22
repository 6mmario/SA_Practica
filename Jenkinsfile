pipeline {
    agent any

    tools {nodejs "node"}

    stages {
        stage('Clonando repositorio') {
            steps {
                git 'https://github.com/6mmario/SA_Practica.git'
            }
        }
        stage('Instalar Dependencias') {
            steps {
                bat '''
                npm install
                '''
            }
        }
        stage('Aplicar Test') {
            steps {
               bat '''
               npm test
               '''
            }
        }
        stage('Deploy') {
            steps {
                bat '''
                npm start
                '''
            }
        }
    }
}