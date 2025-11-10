pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "zeenia1997/jobify-full:latest"
    }

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/ZeeniaM/jobify-mern-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t $DOCKER_IMAGE ./server-deploy'
                }
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                dir('server-deploy') {
                    sh 'docker compose down'
                    sh 'docker compose up -d'
                }
            }
        }
    }
}
