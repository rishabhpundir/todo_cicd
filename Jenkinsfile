/* groovylint-disable-next-line CompileStatic */
pipeline {
    agent any
    stages {
        stage('**Python Setup**') {
            steps {
                sh '''
                chmod +x ./scripts/envsetup.sh
                ./scripts/envsetup.sh
                '''
            }
        }
        stage('**Docker Setup**') {
            steps {
                sh '''
                chmod +x ./scripts/docker.sh
                ./scripts/docker.sh
                '''
            }
        }
        // stage('**NginX Setup**') {
        //     steps {
        //         sh '''
        //         chmod +x ./scripts/nginx.sh
        //         ./scripts/nginx.sh
        //         '''
        //     }
        // }
        stage('**Kubernetes Setup**') {
            steps {
                sh '''
                chmod +x ./scripts/kubernetes.sh
                ./scripts/kubernetes.sh
                '''
            }
        }
    }
}
