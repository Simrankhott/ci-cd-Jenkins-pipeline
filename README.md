# Jenkins Pipeline with eks cluster

This project provides instructions and steps to deploy a Spring application using Kubernetes ConfigMap for managing configuration and reloading the configuration without restarting the application-

Prerequisites
Before getting started, ensure you have the following prerequisites:

Amazon Linux 2 instance (t2-micro) or a similar environment-
- Git installed on the system-
- Java installed on the system-
- Maven installed on the system-
- Jenkins installed on the system-
- Docker installed on the system-
- Python installed on the system-
- Ansible installed on the system-
- Deployment Steps

Follow these steps to deploy the Spring application:

- Clone the code from the GitHub repository-

- Build the Maven artifact-

- Build the Docker image for the Spring Boot application-

- Set all secrets 

Log in to Docker-

- Push the Docker image to Docker Hub-

- Deploy the Spring application using Kubernetes ConfigMap-

- Check the deployments, pods, and services-

# Screenshots

<img width="960" alt="spring1" src="https://github.com/Simrankhott/ci-cd-Jenkins-pipeline-eks-cluster/assets/91006102/76dc920d-eacd-4ff9-a20e-129cecb30a80">
<img width="960" alt="spring2" src="https://github.com/Simrankhott/ci-cd-Jenkins-pipeline-eks-cluster/assets/91006102/14bd1272-a37b-43fe-83de-4c3b5a736ea4">
<img width="960" alt="spring3" src="https://github.com/Simrankhott/ci-cd-Jenkins-pipeline-eks-cluster/assets/91006102/a2607c2f-86c0-4fa8-9206-eb9d7e6de557">
<img width="960" alt="spring4" src="https://github.com/Simrankhott/ci-cd-Jenkins-pipeline-eks-cluster/assets/91006102/2ea46f3e-860c-4aa0-aed5-8a96337b8c4a">
<img width="960" alt="spring6" src="https://github.com/Simrankhott/ci-cd-Jenkins-pipeline-eks-cluster/assets/91006102/4ff1c08d-bbea-4eb3-9922-64062a81ed2e">
<img width="960" alt="spring7" src="https://github.com/Simrankhott/ci-cd-Jenkins-pipeline-eks-cluster/assets/91006102/52140ff1-0add-48a2-aec0-f82aadedbbc3">
<img width="960" alt="spring8" src="https://github.com/Simrankhott/ci-cd-Jenkins-pipeline-eks-cluster/assets/91006102/7a2e4093-48df-459d-a918-dcde0c0a954d">
<img width="960" alt="spring10" src="https://github.com/Simrankhott/ci-cd-Jenkins-pipeline-eks-cluster/assets/91006102/49eb9cb5-a002-4d2a-bc2c-2ec48be07148">
<img width="960" alt="spring12" src="https://github.com/Simrankhott/ci-cd-Jenkins-pipeline-eks-cluster/assets/91006102/d808922c-f5e9-4ad7-97ce-64a21718cd99">


