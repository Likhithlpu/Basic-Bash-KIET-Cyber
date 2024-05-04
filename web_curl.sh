#!/bin/bash

# Retrieve website information using curl
echo "Enter the website URL:"
read url

echo "Retrieving information from $url..."
curl -I $url

