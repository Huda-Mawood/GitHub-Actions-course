# src/test_app.py
from pathlib import Path
import subprocess
import sys

app_path = Path(__file__).parent / "app.py"

result = subprocess.run([sys.executable, str(app_path)], capture_output=True, text=True)
output = result.stdout.strip()

expected = "Hello from Python! i hate you foreverrrrrrr"

if output == expected:
    print("Test Passed")
else:
    print("Test Failed")
    print("Actual output:", repr(output))