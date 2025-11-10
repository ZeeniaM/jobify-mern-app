pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "zeenia1997/jobify-full:latest"  // use your actual image tag
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
                    // Build from repo root
                    sh 'docker build -t $DOCKER_IMAGE .'
                }
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                // Run docker-compose from repo root
                dir('.') {
                    sh 'docker compose down'
                    sh 'docker compose up -d'
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline finished."
        }
    }
}
