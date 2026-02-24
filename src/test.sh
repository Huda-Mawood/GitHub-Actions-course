#!/bin/bash

output=$(python main.py)

if [ "$output" == "Hello from Python!" ]; then
    echo "Test Passed "
else
    echo "Test Failed "
fi