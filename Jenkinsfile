def docker_image

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building image'

                script {
                    docker_image = docker.build("rpolisciuc/minha-imagem:v3")
                }
            }
        }
        stage('Push') {
            steps {
                echo 'Push to dockerhub'
                script {
                    docker_image.push()
                }
            }
        }
    }
}