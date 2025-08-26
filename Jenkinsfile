pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SalomiParasara/staticwebapp.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t simple-web-app:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker rm -f simple-web-app || true'
                sh 'docker run -d -p 8080:80 --name simple-web-app simple-web-app:latest'
            }
        }
    }

    post {
        always {
            echo "✅ Pipeline completed. Visit http://localhost:8080 to see your web app."
        }
    }
}
