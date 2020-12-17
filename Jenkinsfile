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
        stage('Build Image') {
            steps {
                sh '''
                    docker build -t 6mmario/practicasa .
                
                    cat ~/my_password.txt | docker login --username 6mmario --password-stdin
                    docker push 6mmario/practicasa
            
                '''
            }
        }
        stage('Deploy') {
            steps {
            
                sh '''
                    cp manifest.pp /etc/puppetlabs/code/environments/production/manifests/
                    cp manifestproduction.pp /etc/puppetlabs/code/environments/testing/manifests/
                '''
                
                sh "ssh -n -f diego@35.202.145.123 'sudo /opt/puppetlabs/bin/puppet agent --environment=production --test '"
                sh "ssh -n -f diego@104.155.190.31 'sudo /opt/puppetlabs/bin/puppet agent --environment=testing --test '"
        
            }
        }
    }
}