pipeline {    
	agent any
    stages {
        stage('Test') {
            steps {
                sh '''
                ls
		echo "Test"
                pwd
		'''
            }
        }
	stage('Pre-Prod') {
	   steps {
		sh '''
		ls
		echo "Pre-Prod"
		pwd
		'''
	    }
	}
	stage('Prod') {
	   steps {
		sh '''
		ls
		echo "Prod"
		pwd
		'''
	    }
	}
    }
}
