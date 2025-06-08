pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/yourusername/cicd-pipeline-jenkins-sonarqube.git'
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          sh 'docker build -t myapp:latest .'
        }
      }
    }

    stage('Code Quality Check') {
      steps {
        script {
          sh 'sonar-scanner'
        }
      }
    }

    stage('Security Scan') {
      steps {
        script {
          sh './trivy-scan.sh'
        }
      }
    }

    stage('Run App') {
      steps {
        script {
          sh 'docker run -d -p 5000:5000 myapp:latest'
        }
      }
    }
  }
}