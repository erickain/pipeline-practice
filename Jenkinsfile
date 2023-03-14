pipeline {
	options {
		timeout(time: 1, unit: 'HOURS') 
	} 	    
	agent any

    stages {
        stage('Hello') {
            steps {
                sh '''
                ls 
				uname -r
                pwd
                '''
            }
        }
    }
}