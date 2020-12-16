pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
            stage('Build') {
                steps {
                    sh 'npm install'
                }
            }
            stage('test') {
                    sh './node_modules/.bin/nightwatch -e chrome,edge tests'
            }  
            stage('Deliver') {
                steps {
                    sh './jenkins/scripts/deliver.sh'
                    input message: 'Finished using the web site? (Click "Proceed" to continue)'
                    sh './jenkins/scripts/kill.sh'
                }
            }
            stage('end') {  
                    echo "Success" 
            }
        }
}