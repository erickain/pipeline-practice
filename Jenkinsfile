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
								choices: ['Dev', '	Sandbox', 'Prod'], 
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
		stage('permission') {
            steps {
                
            }
        }
		stage('cleaning') {
            steps {
                
            }
        }
		stage('sonarqube') {
            steps {
                
            }
        }
		stage('build-dev') {
            steps {
                
            }
        }
		stage('build-sanbox') {
            steps {
                
            }
        }
		stage('build-prod') {
            steps {
                
            }
        }
		stage('login') {
            steps {
                
            }
        }
		stage('push-to-dockerhub-dev') {
            steps {
                
            }
        }
		stage('push-to-dockerhub-sanbox') {
            steps {
                
            }
        }
		stage('push-to-dockerhub-prod') {
            steps {
                
            }
        }
		stage('update helm charts-sanbox') {
            steps {
                
            }
        }
		stage('update helm charts-dev') {
            steps {
                
            }
        }
		stage('wait for argocd') {
            steps {
                
            }
        }		
    }
	post {
   
		success {
			slackSend (channel: '#development-alerts', color: 'good', message: "SUCCESSFUL:  Branch name  <<${env.BRANCH_NAME}>>  Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
		}
	
		unstable {
			slackSend (channel: '#development-alerts', color: 'warning', message: "UNSTABLE:  Branch name  <<${env.BRANCH_NAME}>>  Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
		}

		failure {
			slackSend (channel: '#development-alerts', color: '#FF0000', message: "FAILURE:  Branch name  <<${env.BRANCH_NAME}>> Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
		}
	
		cleanup {
			deleteDir()
		}
	}
}
