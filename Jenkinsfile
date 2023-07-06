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
                dir('/var/lib/jenkins/workspace/docker-compose')}
                {
              /*dir('docker-compose'*/ 
              /*sh 'cd /var/lib/jenkins/workspace/docker-compose'*/
              sh 'sudo docker-compose up -d'
            }
        }
    }
}
