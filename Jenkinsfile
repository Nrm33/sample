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
                echo "🔧 Building the Python app..."
            }
        }

        stage('Deploy') {
            steps {
                echo "🚀 Deploying the app..."
                sh 'chmod +x deploy.sh'
                sh './deploy.sh'
            }
        }
    }

    post {
        success {
            echo '✅ Deployment completed successfully!'
        }
        failure {
            echo '❌ Deployment failed. Check logs for details.'
        }
    }
}
