# AWS Terraform Infrastructure Project

## Overview
This project provides a **modular and scalable** AWS infrastructure using Terraform. It includes:
- **Networking**: VPC, subnets (public & private)
- **Compute**: EC2 instance
- **Database**: RDS instance
- **Load Balancer**: ALB for traffic distribution
- **IAM Roles**: Secure access management
- **Monitoring**: CloudWatch for logging and alerts

## Project Structure
```
├── modules/
│   ├── network/           # VPC & Subnets
│   ├── compute/           # EC2 instance
│   ├── database/          # RDS setup
│   ├── load_balancer/     # Application Load Balancer
│   ├── iam_roles/         # IAM role configurations
│   ├── monitoring/        # CloudWatch & alarms
├── main.tf               # Root Terraform config
├── variables.tf          # Input variables
├── outputs.tf            # Output values
├── README.md             # Project documentation
```

## Prerequisites
- **Terraform** (>= 1.3.0)
- **AWS CLI** configured with appropriate credentials
- An **S3 bucket** for storing Terraform state

## Setup Instructions
1. **Clone this repository**
   ```sh
   git clone https://github.com/your-repo/terraform-aws-project.git
   cd terraform-aws-project
   ```

2. **Initialize Terraform**
   ```sh
   terraform init
   ```

3. **Plan the deployment**
   ```sh
   terraform plan
   ```

4. **Apply the configuration**
   ```sh
   terraform apply -auto-approve
   ```

5. **Retrieve Outputs**
   ```sh
   terraform output
   ```
   This will display values such as the EC2 public IP and ALB DNS name.

## Modules Explained
### 1. **Network Module**
Creates a **VPC** with public and private subnets.
### 2. **Compute Module**
Deploys an **EC2 instance** with security groups allowing SSH and HTTP access.
### 3. **Database Module**
Provisions an **RDS MySQL** database in a private subnet.
### 4. **Load Balancer Module**
Configures an **ALB** to distribute traffic to EC2.
### 5. **IAM Roles Module**
Defines secure **IAM roles & policies** for AWS services.
### 6. **Monitoring Module**
Sets up **CloudWatch alarms & dashboards** for system monitoring.

## Cleanup
To destroy all resources:
```sh
terraform destroy -auto-approve
```

## Contributing
Feel free to submit PRs to improve this project!

## License
MIT License
# AWS Terraform Infrastructure Project

## Overview
This project provides a **modular and scalable** AWS infrastructure using Terraform. It includes:
- **Networking**: VPC, subnets (public & private)
- **Compute**: EC2 instance
- **Database**: RDS instance
- **Load Balancer**: ALB for traffic distribution
- **IAM Roles**: Secure access management
- **Monitoring**: CloudWatch for logging and alerts

## Project Structure
```
├── modules/
│   ├── network/           # VPC & Subnets
│   ├── compute/           # EC2 instance
│   ├── database/          # RDS setup
│   ├── load_balancer/     # Application Load Balancer
│   ├── iam_roles/         # IAM role configurations
│   ├── monitoring/        # CloudWatch & alarms
├── main.tf               # Root Terraform config
├── variables.tf          # Input variables
├── outputs.tf            # Output values
├── README.md             # Project documentation
```

## Prerequisites
- **Terraform** (>= 1.3.0)
- **AWS CLI** configured with appropriate credentials
- An **S3 bucket** for storing Terraform state

## Setup Instructions
1. **Clone this repository**
   ```sh
   git clone https://github.com/your-repo/terraform-aws-project.git
   cd terraform-aws-project
   ```

2. **Initialize Terraform**
   ```sh
   terraform init
   ```

3. **Plan the deployment**
   ```sh
   terraform plan
   ```

4. **Apply the configuration**
   ```sh
   terraform apply -auto-approve
   ```

5. **Retrieve Outputs**
   ```sh
   terraform output
   ```
   This will display values such as the EC2 public IP and ALB DNS name.

## Modules Explained
### 1. **Network Module**
Creates a **VPC** with public and private subnets.
### 2. **Compute Module**
Deploys an **EC2 instance** with security groups allowing SSH and HTTP access.
### 3. **Database Module**
Provisions an **RDS MySQL** database in a private subnet.
### 4. **Load Balancer Module**
Configures an **ALB** to distribute traffic to EC2.
### 5. **IAM Roles Module**
Defines secure **IAM roles & policies** for AWS services.
### 6. **Monitoring Module**
Sets up **CloudWatch alarms & dashboards** for system monitoring.

## Cleanup
To destroy all resources:
```sh
terraform destroy -auto-approve
```

## Contributing
Feel free to submit PRs to improve this project!

## License
MIT License

