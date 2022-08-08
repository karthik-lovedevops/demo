# Devops Challenge

Architecture:

1) VPC with Private and Public Subnet
2) Application Load Balancer
3) Listener for Application Load Balancer listening on Port 80
4) Forward the traffic to port 443 to Target Group
4) IAM roles for ECS task execution 
5) ECS cluster for running 2 nginx task using port 443
6) Docker image with standard nginx base image with self signed SSL certificate
7) Workflow for Deploying the infrastructure/App Build and push image to ECR
8) Task defintion in workflow for Deploying through CODE_DEPLOY for Blue Green Deployment.



![image](https://user-images.githubusercontent.com/110839796/183504188-7010ad02-fafc-464b-b090-db6e7f8d8394.png)
