pipeline {    
	agent { 
          label "Node2"
         }	
 
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
    }

}
