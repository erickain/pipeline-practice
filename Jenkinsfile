pipeline {
	options {
    buildDiscarder(logRotator(numToKeepStr: '20'))
    disableConcurrentBuilds()
    timeout (time: 60, unit: 'MINUTES')
    timestamps()
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