/* groovylint-disable-next-line CompileStatic */
pipeline {
    agent any
    stages {
        stage('**Python**') {
            steps {
                sh '''
                chmod +x ./scripts/envsetup.sh
                ./scripts/envsetup.sh
                '''
            }
        }
        stage('**Docker**') {
            steps {
                sh '''
                chmod +x ./scripts/docker.sh
                ./scripts/docker.sh
                '''
            }
        }
        stage('**Cleanup**') {
            steps {
                sh '''
                chmod +x ./scripts/cleanup.sh
                ./scripts/cleanup.sh
                '''
            }
        }
        stage('**Kubernetes**') {
            steps {
                sh '''
                chmod +x ./scripts/kubernetes.sh
                ./scripts/kubernetes.sh
                '''
            }
        }
    }
}
