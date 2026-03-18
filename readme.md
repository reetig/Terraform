\# Terraform Lab – Infrastructure as Code (IaC)



\## Overview

This repository contains a complete hands-on implementation of Infrastructure as Code (IaC) using Terraform. The lab is structured progressively, starting from basic concepts and moving towards modular and dynamic infrastructure creation.



The goal of this project is to understand how infrastructure can be automated, version-controlled, and reused efficiently instead of being managed manually.



\---



\## What I Learned

\- Writing Terraform configurations from scratch  

\- Understanding Terraform workflow: init → plan → apply  

\- Using variables and environment-specific configurations  

\- Managing Docker containers using Terraform  

\- Designing reusable infrastructure using modules  

\- Automating validation using CI (GitHub Actions)  

\- Dynamically creating infrastructure using loops (for\_each)  



\---



\## Project Structure

terraform-lab  

│  

├── day1/   Basic Terraform setup (local file creation)  

├── day2/   Variables and environment-based configurations  

├── day3/   Docker container provisioning (nginx)  

├── day4/   Modules and dynamic infrastructure (bonus included)  

├── day5/   CI concept and documentation  

│  

├── .github/workflows/terraform-check.yml  

└── .gitignore  



\---



\## Terraform Workflow Used

terraform init     Initialize providers  

terraform plan     Preview changes  

terraform apply    Apply changes  



\---



\## Assignment Breakdown



\### Day 1 – Introduction to Terraform

\- Created a local file using Terraform  

\- Introduced variables and output values  

\- Demonstrated basic Terraform workflow  



\### Day 2 – Variables and Configurations

\- Used input variables for flexibility  

\- Implemented environment-specific configurations using .tfvars files  

\- Demonstrated reuse of the same configuration for different outputs  



\### Day 3 – Docker Integration

\- Provisioned an nginx container using Terraform  

\- Pulled Docker image automatically  

\- Exposed the service locally via browser  



\### Day 4 – Modules and Reusability

\- Refactored container setup into reusable modules  

\- Created multiple containers using the same module  

\- Improved code structure and maintainability  



\### Day 5 – CI Workflow

\- Implemented GitHub Actions workflow  

\- Automated Terraform validation on every push  

\- Commands executed:

&#x20; terraform fmt  

&#x20; terraform validate  

&#x20; terraform plan  



\---



\## Bonus: Dynamic Infrastructure Creation

Features:

\- Uses for\_each to create multiple containers  

\- Each container has a unique name and port  

\- Automatically scales when new entries are added  



Example:

container\_config = \[

&#x20; { name = "web1", port = 8081 },

&#x20; { name = "web2", port = 8082 },

&#x20; { name = "web3", port = 8083 }

]



Output:

container\_urls = \[

&#x20; "http://localhost:8081",

&#x20; "http://localhost:8082",

&#x20; "http://localhost:8083"

]



\---



\## How to Run Each Assignment



\### Prerequisites

\- Terraform installed  

\- Docker installed and running  

\- Git installed  



\---



\### Day 1

cd day1  

terraform init  

terraform apply  



Expected:

hello.txt file created and output shows file path  



\---



\### Day 2

cd day2  

terraform init  

terraform apply -var-file="dev.tfvars"  

terraform apply -var-file="prod.tfvars"  



Expected:

dev.txt and prod.txt created  



\---



\### Day 3

cd day3  

terraform init  

terraform apply  



Open:

http://localhost:8081  



Expected:

nginx welcome page  



\---



\### Day 4

cd day4  

terraform init  

terraform apply  



Open:

http://localhost:8081  

http://localhost:8082  



Expected:

two nginx containers running  



\---



\### Day 5 (CI)

Push code to GitHub  

Go to Actions tab  

Workflow runs automatically  



Expected:

terraform fmt, validate, and plan executed  



\---



\### Bonus

cd day4  

terraform apply -var-file="containers.tfvars"  



Open:

http://localhost:8081  

http://localhost:8082  

http://localhost:8083  



Expected:

three containers created dynamically and URLs printed  



\---



\### Cleanup

terraform destroy  



Removes all Terraform-managed resources  



\---



\## Key Concepts Demonstrated

\- Infrastructure as Code (IaC)  

\- Declarative configuration model  

\- State management using terraform.tfstate  

\- Modular design  

\- CI automation  



\---



\## Conclusion

This lab demonstrates how infrastructure can be treated as code, enabling automation, consistency, and scalability. It highlights the transition from manual setup to structured, reusable, and validated infrastructure using Terraform.

