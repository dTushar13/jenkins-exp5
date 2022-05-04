pipeline{
	agent any
	stages {
		stage("build"){
			steps {
				sh """
					docker build . -t django-proj
				"""
			}
		}
// 		stage("push"){
// 			steps {
// 				sh """
// 					docker push dtushar/devops-exp
// 				"""
// 			}
// 		}
		stage("run"){
			steps {
				sh """
					docker run -p 8000:8000 -i --rm django-proj
				"""
			}
		}
	}
}
