FROM python:3.8.8-slim
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install --user -r requirements.txt 
COPY . /code/
CMD python manage.py runserver 0.0.0.0:8000

pipeline{
  agent {label "linux"}
  stages{
    stage("build"){
      steps {
        sh """
          docker build . -t jenkins-django
        """
      }
    }
    stage("run"){
      steps {
        sh """
          docker run -p 8001:8000 -it --rm django-dev
        """
      }
    }
  }
}
