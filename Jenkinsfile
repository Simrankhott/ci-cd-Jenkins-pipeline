@Library('jenkins-shared-library@main')
pipeline {
  agent any
  
  parameters {
    choice(name: 'action', choices: 'create\nrollback', description: 'Create/rollback of the deployment')
    string(name: 'ImageName', description: "Name of the docker build", defaultValue: "kubernetes-configmap-reload")
    string(name: 'ImageTag', description: "Name of the docker build",defaultValue: "v1")
    string(name: 'AppName', description: "Name of the Application",defaultValue: "kubernetes-configmap-reload")
    string(name: 'docker_repo', description: "Name of docker repository",defaultValue: "simrankhot")
  }
      
  tools { 
    maven 'maven3'
  }
  
  stages {
    stage('Git-Checkout and Build-Maven') {
      when {
        expression { params.action == 'create' }
      }
      steps {
        gitCheckout(
          branch: "main",
          url: "https://github.com/Simrankhott/ci-cd-Jenkins-pipeline.git",
          changelog: false // to avoid checking changelog
        )
        dir("${params.AppName}") {
          sh 'mvn clean package'
        }
      }
    }
    
    stage("Docker build and Push") {
      when {
        expression { params.action == 'create' }
      }
      steps {
        dir("${params.AppName}") {
          dockerBuild("${params.ImageName}", "${params.docker_repo}")
        }
      }
    }
    
    stage("Docker-CleanUP") {
      when {
        expression { params.action == 'create' }
      }
      steps {
        dockerCleanup("${params.ImageName}", "${params.docker_repo}")
      }
    }
    
    stage("Ansible Setup") {
      when {
        expression { params.action == 'create' }
      }
      steps {
        sh "ansible-playbook ${WORKSPACE}/server_setup.yml"
      }
    }
    
    stage("Create deployment") {
      when {
        expression { params.action == 'create' }
      }
      steps {
        sh "echo ${WORKSPACE}"
        sh "kubectl create -f ${WORKSPACE}/kubernetes-configmap.yml"
      }
    }
    
    stage("wait_for_pods") {
      steps {
        sh "sleep 200"
      }
    }
    
    stage("Rollback the deployment") {
      steps {
        sh """
          kubectl delete deploy ${params.AppName}
          kubectl delete svc ${params.AppName}
        """
      }
    }
  }
}
