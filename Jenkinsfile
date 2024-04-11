/* groovylint-disable-next-line CompileStatic */
pipeline {
    agent any
    stages {
        stage('**Python Setup**') {
            steps {
                sh '''
                chmod +x envsetup.sh
                ./scripts/envsetup.sh
                '''
            }
        }
        stage('**Docker Setup**') {
            steps {
                sh '''
                chmod +x docker.sh
                ./scripts/docker.sh
                '''
            }
        }
        stage('**Kubernetes Setup**') {
            steps {
                sh '''
                chmod +x kubernetes.sh
                ./scripts/kubernetes.sh
                '''
            }
        }
    }
}
