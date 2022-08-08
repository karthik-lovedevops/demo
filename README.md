# Devops Challenge

Architecture:

1) VPC with Private and Public Subnet
2) Application Load Balancer
3) Listener for Application Load Balancer listening on Port 80
4) Forward the traffic to port 443 to Target Group
5) IAM roles for ECS task execution 
6) ECS cluster for running 2 nginx task using port 443
7) Above implementation steps uses terragrunt as wrapper.
8) Docker image with standard nginx base image with self signed SSL certificate
9) Workflow for Deploying the infrastructure/App Build and push image to ECR
10) Task defintion in workflow for Deploying through CODE_DEPLOY for Blue Green Deployment.
11) Code Deploy would use two target group for the Load balancer.




![image](https://user-images.githubusercontent.com/110839796/183505131-8aa3e781-e0eb-470f-bfcb-8c472f9bfbca.png)

Deploy Version 1
![image](https://user-images.githubusercontent.com/110839796/183506097-1b186b59-cf6a-4a49-8ffb-b57a2779d966.png)

Code Deploy Steps:

![image](https://user-images.githubusercontent.com/110839796/183506710-ae27c071-1cc9-4f57-aa0c-55e77d11338a.png)

![image](https://user-images.githubusercontent.com/110839796/183506771-6cff8290-0d78-4df9-832a-9f9790e4c24c.png)

Deploy Version 2
![image](https://user-images.githubusercontent.com/110839796/183506920-7cb7a626-c120-4cd4-8456-c943932b2b0e.png)


