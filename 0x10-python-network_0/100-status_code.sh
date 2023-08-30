#!/usr/bin/env python3

import sys
import requests

# Check if URL argument is provided
if len(sys.argv) != 2:
    print("Usage: {} <URL>".format(sys.argv[0]))
    sys.exit(1)

url = sys.argv[1]

# Send the request and capture the response
response = requests.head(url)

# Extract the status code from the response
status_code = response.status_code

# Display the status code
print("Status Code:", status_code)
