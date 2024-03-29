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
        // stage('**Gunicorn Setup**') {
        //     steps {
        //         sh '''
        //         chmod +x gunicorn.sh
        //         ./gunicorn.sh
        //         '''
        //     }
        // }
        // stage('**NginX Setup**') {
        //     steps {
        //         sh '''
        //         chmod +x nginx.sh
        //         ./nginx.sh
        //         '''
        //     }
        // }
    }
}
