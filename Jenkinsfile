pipeline {
    agent any
    stages {
        stage('**Python Setup**') {
            steps {
                sh '''
                chmod +x envsetup.sh
                ./envsetup.sh
                '''
            }
        }
        stage('**Docker Setup**') {
            steps {
                sh '''
                chmod +x docker.sh
                ./docker.sh
                '''
            }
        }
        stage('**NginX Setup**') {
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }
    }
}
