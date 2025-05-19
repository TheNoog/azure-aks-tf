#!/bin/bash

# Navigate to the modules directory
cd modules || { echo "Error: modules directory not found."; exit 1; }

# Initialize Terraform
echo "Initializing Terraform..."
terraform init

# Check if terraform init was successful
if [ $? -ne 0 ]; then
  echo "Error: Terraform initialization failed."
  exit 1
fi

# Create a Terraform plan
echo "Creating Terraform plan..."
terraform plan -out=tfplan

# Check if terraform plan was successful
if [ $? -ne 0 ]; then
  echo "Error: Terraform plan failed."
  exit 1
fi

# Prompt the user to apply the plan
read -p "Do you want to apply the Terraform plan? (yes/no): " apply_confirmation

if [[ "$apply_confirmation" == "yes" ]]; then
  # Apply the Terraform plan
  echo "Applying Terraform plan..."
  terraform apply "tfplan"
else
  echo "Terraform plan not applied."
fi