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
                    /*sh 'sudo docker stop prometheuscont grafanacont'*/
                }
                {
              /*sh 'sudo docker rm prometheuscont grafanacont'*/
                }
              sh 'sudo docker run -d --name prometheuscont -p 9090:9090 -v /var/lib/jenkins/workspace/docker-compose/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus'
              sh 'sudo docker run -d --name grafanacont -p 3000:3000 grafana/grafana'
              sh 'sudo docker-compose up -d'
              sh 'sleep 20'
            }
        }
    }
}
