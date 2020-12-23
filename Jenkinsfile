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
        stage('Build Image'){
            steps {
                sh '''
                docker build -t 6mmario/practicasa .
            
            
                cat ~/my_password.txt | docker login --username 6mmario --password-stdin
                docker push 6mmario/practicasa
                '''
            }
        }
        stage('Aplicar Test') {
            steps {
              sh 'npm test --progress false --watch false'
            }
        }
        stage('Deploy') {
            steps {
                //sh 'npm run-script build'
                sh 'cp ./Produccion_Recipies/default.rb /home/mario/chef-repo/cookbooks/6mmario_cookbook/recipes'
                sh 'cp ./Test_Recipies/default.rb /home/mario/chef-repo/cookbooks/test_cookbook/recipes'

                sh '''
                cd /home/mario/chef-repo/.chef
                knife cookbook delete test_cookbook -y'''

                sh '''
                cd /home/mario/chef-repo/.chef
                knife cookbook delete 6mmario_cookbook -y'''

                sh '''
                cd /home/mario/chef-repo/.chef
                knife cookbook upload test_cookbook -y'''

                sh '''
                cd /home/mario/chef-repo/.chef
                knife cookbook upload 6mmario_cookbook -y'''

                sh '''

                cd /home/mario/chef-repo/.chef
                knife bootstrap 35.232.160.28 -x mario -P mmario.org --node-name client-produccion --sudo --run-list 'recipe[6mmario_cookbook]' -y
                '''

                sh '''

                cd /home/mario/chef-repo/.chef
                knife bootstrap 35.238.57.13 -x mario -P mmario.org --node-name client-test --sudo --run-list recipe[test_cookbook] -y
                '''
            }
        }
    }
}