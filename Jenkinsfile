pipeline {    
	agent { 
          label "Node2"
         }	
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
