pipeline {    
	agent any
    stages {
        stage('Hello') {
            steps {
                sh '''
                ls
		echo "Hello"
                pwd
		'''
            }
        }
	stage('Hello2') {
	   steps {
		sh '''
		ls
		echo "Hello2"
		pwd
		'''
	    }
	}
    }
}
