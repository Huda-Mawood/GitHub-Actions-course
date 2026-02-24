#!/bin/bash

output=$(python app.py | tr -d '\r\n')

if [ "$output" == "Hello from Python! i hate you foreverrrrrr" ]; then
    echo "Test Passed"
else
    echo "Test Failed"
fi