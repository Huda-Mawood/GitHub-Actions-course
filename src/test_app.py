# src/test_app.py
import subprocess

# شغّل app.py وخزن الناتج
result = subprocess.run(["python", "app.py"], capture_output=True, text=True)

output = result.stdout.strip()  # يشيل أي newline أو مسافات

expected = "Hello from Python! i hate you foreverrrrrr"

if output == expected:
    print("Test Passed")
else:
    print("Test Failed")
    print("Actual output:", repr(output))