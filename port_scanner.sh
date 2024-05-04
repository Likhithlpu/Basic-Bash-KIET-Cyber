#!/bin/bash

# Simple port scanner using netcat (nc)
echo "Enter the target IP address:"
read target

echo "Scanning ports on $target..."
for port in {1..65535}; do
    (echo >/dev/tcp/$target/$port) >/dev/null 2>&1 && echo "Port $port is open"
done

