pipeline{
	agent { label "linux"}
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
					docker run -p 8001:8000 -it --rm django-proj
				"""
			}
		}
	}
}