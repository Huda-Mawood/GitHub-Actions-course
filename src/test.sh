#!/bin/bash

# شغل app.py وخزن الناتج
python app.py > tmp_output.txt

# ابحث عن النص المطلوب
if grep -q "Hello from Python! i hate you foreverrrrrr" tmp_output.txt; then
    echo "Test Passed"
else
    echo "Test Failed"
fi

# امسحي الملف المؤقت
rm tmp_output.txt