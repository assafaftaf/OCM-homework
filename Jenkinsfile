pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                // Add build commands here
                sh 'echo "Build step goes here"'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add test commands here
                sh 'echo "Test step goes here"'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                // Add deployment commands here
                sh 'echo "Deploy step goes here"'
            }
        }
    }
}
