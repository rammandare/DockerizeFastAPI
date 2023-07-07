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
                sh 'docker stop $(docker ps -a -q)'
            
                {
                        sh 'docker rm $(docker ps -a -q)'
                }
                {
                        sh 'docker rmi -f $(docker images -q)'
                }
              sh 'sudo docker-compose up -d'
              sh 'sleep 20'
            }
        }
    }
}
