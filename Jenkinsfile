pipeline {
    agent {
                label ("Node1")
            }
    stages {
        stage('Clone') {
            steps {
                sh '''
                ls 
                echo "Clone"
                pwd
                '''
            }
        }
        stage('Build') {
            steps {
                sh '''
                ls 
                echo "Build"
                pwd
                '''
            }
        }
        stage('Release') {
            steps {
                sh '''
                ls 
                echo "Release"
                pwd
                free
                '''
            }
        }
    }
}
