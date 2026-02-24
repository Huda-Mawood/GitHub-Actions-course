# src/test_app.py
from pathlib import Path
import subprocess
import sys

# المسار الصحيح لـ app.py
app_path = Path(__file__).parent / "app.py"

# شغّل Python بنفس النسخة اللي شغّلة السكربت
result = subprocess.run([sys.executable, str(app_path)], capture_output=True, text=True)

# نظّف الناتج من أي newline أو carriage return
output = result.stdout.strip()

expected = "Hello from Python! i hate you foreverrrrrr"

if output == expected:
    print("Test Passed")
else:
    print("Test Failed")
    print("Actual output:", repr(output))