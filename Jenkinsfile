/* groovylint-disable-next-line CompileStatic */
pipeline {
    agent any

    stages {
        stage('**Init**') {
            steps {
                script {
                    yamlContent = '''
                            secretGenerator:
                            - name: secret
                                literals:
                                - SECRET_KEY=${SECRET_KEY}
                            - name: pguser
                                literals:
                                - POSTGRES_USER=${POSTGRES_USER}
                            - name: pgdb
                                literals:
                                - POSTGRES_DB=${POSTGRES_DB}
                            - name: pgpass
                                literals:
                                - POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
                            - name: dbport
                                literals:
                                - DB_PORT=${DB_PORT}
                            - name: dbhost
                                literals:
                                - DB_HOST=${DB_HOST}
                            resources:
                            - postgres.yaml
                            - todoapp.yaml
                    '''
                    writeFile file: 'kustomization.yml', text: yamlContent
                }
            }
        }

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
