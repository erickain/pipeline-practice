pipeline {
	options {
    buildDiscarder(logRotator(numToKeepStr: '20'))
    disableConcurrentBuilds()
    timeout (time: 60, unit: 'MINUTES')
    timestamps()
  	}	    
	agent {
        label ("Node1 || Node2 || Node3 || Node4")
    }

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