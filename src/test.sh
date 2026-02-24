# src/test_app.py
import subprocess
from pathlib import Path

# المسار الصحيح لـ app.py
app_path = Path(__file__).parent / "app.py"

# شغّل app.py
result = subprocess.run(["python3", str(app_path)], capture_output=True, text=True)

output = result.stdout.strip()  # يشيل أي newline

expected = "Hello from Python! i hate you foreverrrrrr"

if output == expected:
    print("Test Passed")
else:
    print("Test Failed")
    print("Actual output:", repr(output))