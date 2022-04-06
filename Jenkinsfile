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
		stage("run"){
			steps {
				sh """
					docker run -p 8000:8000 -i --rm django-proj
				"""
			}
		}
	}
}
