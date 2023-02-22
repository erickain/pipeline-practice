pipeline {
    agent any
  environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}
    stages {
        stage('Hello') {
            steps {
                sh '''
                ls 
                pwd
                '''
            }
        }
    }
}
