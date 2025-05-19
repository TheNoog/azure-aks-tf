#!/bin/bash

# Function to install Checkov
install_checkov() {
    echo "Installing Checkov..."
    # Check if Checkov is already installed
    if command -v checkov &> /dev/null; then
        echo "Checkov is already installed."
    else
        # Install Checkov using pip
        pip install checkov || { echo "Error: Failed to install Checkov."; exit 1; }
        echo "Checkov installed successfully."
    fi
}

# Function to scan Terraform code with Checkov
scan_terraform() {
    local terraform_dir="modules"
    echo "Scanning Terraform code in '$terraform_dir' with Checkov..."
    checkov -d "$terraform_dir" || { echo "Error: Checkov scan failed."; exit 1; }
    echo "Checkov scan complete."
}

# Main execution
install_checkov
scan_terraform