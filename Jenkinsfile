pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Serquand/TestSomething'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-go-app .'
                }
            }
        }
        stage('Deploy to Docker') {
            steps {
                script {
                    sh 'docker run -d -p 7072:7072 my-go-app'
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
