pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                bat 'npm install'
            }
        }
              stage('Test') {
                    steps {
                        bat './jenkins/scripts/test.bat'
                    }
                }
        stage('Deliver') {
                    steps {
                        bat './jenkins/scripts/deliver.bat'
                        input message: 'Finalizar Tarea? (Y to continue)'
                        bat './jenkins/scripts/kill.bat'
                    }
                }
    }
}