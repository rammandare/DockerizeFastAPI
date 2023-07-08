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
            
              sh 'sudo -S docker run -d --name prometheuscont -p 9090:9090 -v /var/lib/jenkins/workspace/ec2-api1/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus'
              sh 'sudo -S docker run -d --name grafanacont -p 3000:3000 grafana/grafana'
              sh 'sudo -S docker-compose build'
              sh 'sudo -S docker-compose up -d'
              sh 'sleep 20'
            }
        }
    }
}
