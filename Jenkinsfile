pipeline {
    agent any

    environment {
        IMAGE_NAME = "nike-static"
        CONTAINER_NAME = "nike-site"
        PORT = "8087"
    }

    stages {
        stage('Clone') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t $IMAGE_NAME ."
            }
        }

        stage('Stop Existing Container') {
            steps {
                sh "docker stop $CONTAINER_NAME || true"
                sh "docker rm $CONTAINER_NAME || true"
            }
        }

        stage('Run Container') {
            steps {
                sh "docker run -d -p $PORT:8087 --name $CONTAINER_NAME $IMAGE_NAME"
            }
        }
    }
}
