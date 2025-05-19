#!/bin/bash

# Check if the resource group name is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <resource_group_name>"
    exit 1
fi

RESOURCE_GROUP_NAME="$1"

# Prompt the user for confirmation
read -r -p "Are you sure you want to delete the resource group '$RESOURCE_GROUP_NAME' and all its resources? (yes/no): " confirmation

if [[ "$confirmation" != "yes" ]]; then
    echo "Deletion cancelled."
    exit 0
fi

echo "Deleting resource group '$RESOURCE_GROUP_NAME'..."

# Delete the resource group and all resources within it
az group delete --name "$RESOURCE_GROUP_NAME" --yes --no-wait

echo "Deletion process started. It may take some time to complete."