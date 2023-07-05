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
                sh 'sudo apt-get install python3 -y'
                sh 'sudo apt install python3-pip -y'
                sh 'sudo python3 -m venv venv'
                sh 'sudo pip install -r requirements.txt'
                sh 'sudo uvicorn app.main:app'
            }
        }
    }
}
