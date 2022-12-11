# terraform-aws

* the project showcases how to provision aws resources using terraform.
- what is terraform ? 
Terraform is an IAC tool, used primarily by DevOps teams to automate various infrastructure tasks. The provisioning of cloud resources, for instance, is one of the main use cases of Terraform. It’s a cloud-agnostic, open-source provisioning tool written in the Go language and created by HashiCorp.

Terraform allows you to describe your complete infrastructure in the form of code. Even if your servers come from different providers such as AWS or Azure, Terraform helps you build and manage these resources in parallel across providers. Think of Terraform as connective tissue and common language that you can utilize to manage your entire IT stack.

- how to setup:
    - requirements:
        - terraform installed.
        - an aws account.

    - pull the project - git pull https://github.com/ehabAbo1994/terraform-aws.git
    - in the terminal: 
        - terraform init - The terraform init command initializes a working directory containing configuration files and installs plugins for required providers.
        - terraform plan : The terraform plan command lets you to preview the actions Terraform would take to modify your infrastructure.
        - terraform apply --auto-approve: The terraform apply command executes the actions proposed in a terraform plan.

    - log into your aws account and see all the infrastructure.
    
- the network:
    - vpc
    - public subnet
    - internet gateway
    - route table
    - network interface

- security group:
    - Ingress is a collection of rules that allow inbound connections.
        - ports 80(http), 443(https), 22(ssh)

- vault:
    - used to save api-key, secret-access key, session-token,region.

- key-pair:
    A key pair is used to control login access to EC2 instances.

- instance:
    - an ec2 instance to host a simple web app.