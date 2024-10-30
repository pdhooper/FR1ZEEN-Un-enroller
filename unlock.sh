#!/bin/bash
# Unenroll the device from Google's management
# Input your unenroll code here
unenroll_code="your_unenroll_code_here"

# Remove the device from Google's management
curl -s -H "Content-Type: application/json" \
    -X POST \
    -d '{"code": "'"$unenroll_code"'", "action": "UNENROLL"}' \
    https://example.com/unenroll
