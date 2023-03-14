pipeline {
	options {
    buildDiscarder(logRotator(numToKeepStr: '2'))
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

		stage('Setup parameters') {
            steps {
                script {
                    properties([
                        parameters([                        
							choice(
								choices: ['Dev', 'Dandbox', 'Prod'], 
								name: 'Environment'                                 
							),

							string(
								defaultValue: 's4user',
								name: 'User',
								description: 'Required to enter your name',
								trim: true
							),

							string(
								defaultValue: 'eric-001',
								name: 'DB-tag',
								description: 'Required to enter the image tag',
								trim: true
							),
							string(
								defaultValue: 's4user',
								name: 'UI-Tag',
								description: 'Required to enter your name',
								trim: true
							),

							string(
								defaultValue: 'eric-001',
								name: 'WEATHER-tag',
								description: 'Required to enter the image tag',
								trim: true
							),
							string(
								defaultValue: 'eric-001',
								name: 'AUTH-tag',
								description: 'Required to enter the image tag',
								trim: true
							)
                    	])
                	])
                }
            }
        }
    }
}