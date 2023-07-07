pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rammandare/DockerizeFastAPI.git']]])
            }
        }
        stage('build') {
            steps {
                dir('docker-compose') 
                    }
            {
              sh 'sudo docker stop $(sudo docker ps -a -q)'
              sh 'sudo docker rm $(sudo docker ps -a -q)'
              sh 'sudo docker rmi -f $(sudo docker images -q)'
              sh 'sudo docker-compose up -d'
              sh 'sleep 20'
            }
        }
    }
}
