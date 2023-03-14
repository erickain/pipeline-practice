pipeline {

	agent {
        label ("node1 || node2 ||  node3 || node4 ||  node5 ||  branch ||  main ||  jenkins-node || docker-agent ||  jenkins-docker2 ||  preproduction ||  production")
    }

	options {
		buildDiscarder(logRotator(numToKeepStr: '2'))
		disableConcurrentBuilds()
		timeout (time: 60, unit: 'MINUTES')
		timestamps()
  	}	    

    stages {

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
								defaultValue: 'eric-002',
								name: 'AUTH-tag',
								description: 'Required to enter the image tag',
								trim: true
							)
                    	])
                	])
                }
            }
        }
		stage('Hello') {
            steps {
                sh '''
                ls -lh 
		uname -r
                pwd
                '''
            }
        }
    }
}
