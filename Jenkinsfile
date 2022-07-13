pipeline {
    agent any
    environment {
        PROJECT_ID = 'SWE645HW22'
        CLUSTER_NAME = 'SWE645Cluster'
        LOCATION = 'us-east-1a'
    }
    stages {
        stage("Checkout code") {
            steps {
                checkout scm
            }
        }
        stage('BuildWAR') {
            steps {
            
            	dir('src/main/webapp') {
            		echo 'Creating the Jar ...'
					sh 'java -version'
					sh 'jar -cvf SWE645_HW1.war *'
            	}
            }
        }
        
        stage("Build image") {
            steps {
                script {
                    myapp = docker.build("sudheera897/swe645:${env.BUILD_ID}")
                }
            }
        }
        stage("Push image") {
            steps {
                script {
                	sh 'docker login -u sudheera897 -p Sudheera@123'
					myapp.push("${env.BUILD_ID}")
                }
            }
        }        
        stage("UpdateDeployment") {
			steps{
				sh 'kubectl config view'
				sh "kubectl get deployments"
				sh "kubectl set image deployment/swe645deploy container-0=sudheera897/swe645:${env.BUILD_ID}"
			}
		}
    }    
}