#!/bin/bash

output=$(python ../app.py)

if [ "$output" == "Hello from Python!" ]; then
    echo "Test Passed "
else
    echo "Test Failed "
fi