# terraform-jenkins-modules-day6
Terraform modules for EC2 & ALB  with Jenkins Shared Library



Overview:

This project demonstrates standardization of AWS infrastructure provisioning using reusable Terraform modules and Jenkins Shared Libraries. The goal of this task is to modularize EC2 and ALB resources and centralize Terraform pipeline logic in Jenkins.

--------------------------------------------------------------

#Repository structure:

├── modules/
│ ├── ec2/ 
│ └── alb/ 
├── environments/
│ ├── dev/
│ ├── uat/ 
│ └── prod/
├── terraform-shared-library/
│ └── vars/
│ └── terraformPipeline.groovy 
├── Jenkinsfile 
├── main.tf 
├── variables.tf 
├── outputs.tf
└── README.md


#EC2 Module :
- Supports AMI ID, instance type, subnet, security groups, and EBS volume
- Public IP is disabled.
- Includes mandatory tags:
  - Environment
  - Owner


 #ALB Module :

-Creates an Application Load Balancer
-Configures listener and target group
-Uses subnets and security groups provided through variables
-Adds mandatory Environment and Owner tags

Jenkins shared Memory:

- Terraform `init`, `plan`, and `apply` logic is centralized in a Jenkins Shared Library
- Manual approval is enforced for UAT and PROD
- Jenkinsfile is kept minimal and only calls the shared library


#Deployment Flow :

-Jenkins pipeline is triggered by selecting the environment.
-Terraform init and plan run from the shared library.
-For UAT and PROD, Jenkins asks for manual approval.
-After approval, Terraform apply runs and creates resources using modules.


Notes: 

-DEV environment was executed fully using Jenkins
-Manual approval was validated for UAT and PROD
-Jenkins execution logs and screenshots were captured as deliverables