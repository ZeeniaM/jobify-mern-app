pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/ZeeniaM/jobify-mern-app.git'
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                dir('.') {  // Repo root
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
