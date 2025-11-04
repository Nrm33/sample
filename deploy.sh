pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Nrm33/sample.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building the Python app..."
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying application..."
                sh 'chmod +x deploy.sh'
                sh './deploy.sh'
            }
        }
    }

    post {
        success {
            echo '✅ Deployment Successful!'
        }
        failure {
            echo '❌ Deployment Failed!'
        }
    }
}
