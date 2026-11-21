cd ~/storage/downloads
git clone https://github.com/isekaiiiii/DaoDong-Android.git Ayane-Dynamic-Island-v26
cd Ayane-Dynamic-Island-v26
git config --global --add safe.directory "$PWD"
unzip -o ~/storage/downloads/Ayane_Dynamic_Island_v2.6_Source.zip -d "$PWD"
git add -A
git commit -m "Upgrade Ayane Dynamic Island 2.6"
git push origin main
cd ~
ls
cd DaoDong-Android-v3
)#
ls
git add -A
git commit -m "Upgrade Ayane Dynamic Island 2.6"
git push origin main
git add -A
git commit -m "Upgrade Ayane Dynamic Island 2.6"
git push origin main
git add -A
git commit -m "Upgrade Ayane Dynamic Island 2.6"
git push origin main
git pull --rebase origin main
git add -A
git commit -m "Upgrade Ayane Dynamic Island 2.6"
git push origin main
cd ~
cd ~/storage/downloads
git clone https://github.com/isekaiiiii/DaoDong-Android.git Ayane-Dynamic-Island-v26
cd Ayane-Dynamic-Island-v26
git config --global --add safe.directory "$PWD"
unzip -o ~/storage/downloads/Ayane_Dynamic_Island_v2.6_Source.zip -d "$PWD"
git add -A
git commit -m "Upgrade Ayane Dynamic Island 2.6"
git push origin main
cd ~/DaoDong-Android-v3
FILE="app/src/main/java/com/ayane/dynamicisland/AyaneAccessibilityService.java"
sed -i 's/private static boolean performGlobalAction(int action)/private static boolean invokeGlobalAction(int action)/' "$FILE"
sed -i 's/performGlobalAction(GLOBAL_ACTION_/invokeGlobalAction(GLOBAL_ACTION_/g' "$FILE"
rep -nE 'performGlobalAction|invokeGlobalAction' "$FILE"
FILE="app/src/main/java/com/ayane/dynamicisland/AyaneAccessibilityService.java"
sed -i 's/private static boolean performGlobalAction(int action)/private static boolean invokeGlobalAction(int action)/' "$FILE"
sed -i 's/performGlobalAction(GLOBAL_ACTION_/invokeGlobalAction(GLOBAL_ACTION_/g' "$FILE"
cd ~/DaoDong-Android-v3
pwd
ls -la
find . -type f -name "AyaneAccessibilityService.java"
find . -type f -name "AyaneAccessibilityService.java" -exec grep -nE "performGlobalAction|invokeGlobalAction" {} \;
clear
cd ~/DaoDong-Android-v3
echo "===== THU MUC HIEN TAI ====="
pwd
echo "===== CAC FILE TRONG DU AN ====="
ls -la
echo "===== CAC FILE JAVA ====="
find . -type f -name "*.java"
echo "===== CAC FILE KOTLIN ====="
find . -type f -name "*.kt"
echo "===== CAC FILE ACCESSIBILITY ====="
find . -iname "*accessibility*"
git remote -v
git branch --show-current
git status
clear
cd ~/DaoDong-Android-v3
git fetch origin
echo "===== LOCAL COMMIT ====="
git rev-parse HEAD
echo "===== GITHUB COMMIT ====="
git rev-parse origin/main
echo "===== FILE TREN GITHUB ====="
git ls-tree -r --name-only origin/main | grep "AyaneAccessibilityService.java"
FILE="app/src/main/java/com/ayane/dynamicisland/AyaneAccessibilityService.java"
sed -i -e 's/private static boolean performGlobalAction(/private static boolean invokeGlobalAction(/' -e 's/return performGlobalAction(/return invokeGlobalAction(/' -e 's/&& performGlobalAction(/&& invokeGlobalAction(/' "$FILE"
cd ~/DaoDong-Android-v3
git pull --ff-only origin main
FILE="app/src/main/java/com/ayane/dynamicisland/AyaneAccessibilityService.java"
sed -i -e 's/private static boolean performGlobalAction(/private static boolean invokeGlobalAction(/' -e 's/return performGlobalAction(/return invokeGlobalAction(/' -e 's/&& performGlobalAction(/&& invokeGlobalAction(/' "$FILE"
grep -nE 'performGlobalAction|invokeGlobalAction' "$FILE"
git add .
git commit -m "Fix AccessibilityService static method conflict"
git push origin main
python - <<'PY'
from pathlib import Path
import re

p = Path(
    "app/src/main/java/com/ayane/dynamicisland/"
    "AyaneAccessibilityService.java"
)

if not p.is_file():
    raise SystemExit("KHONG TIM THAY FILE JAVA")

source = p.read_text(encoding="utf-8")

pattern = (
    r"public static boolean toggleSplitScreen\(\)"
    r"\s*\{.*?\n    \}"
)

replacement = """public static boolean toggleSplitScreen() {
        return Build.VERSION.SDK_INT >= Build.VERSION_CODES.N
                && invokeGlobalAction(GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN);
    }"""

updated, count = re.subn(
    pattern, replacement, source, count=1, flags=re.S
)

if count != 1:
    raise SystemExit("KHONG TIM THAY HAM CAN SUA - KHONG GHI FILE")

p.write_text(updated, encoding="utf-8")
print("DA SUA THANH CONG toggleSplitScreen()")
PY

pkg install python
python - <<'PY'
from pathlib import Path
import re

p = Path(
    "app/src/main/java/com/ayane/dynamicisland/"
    "AyaneAccessibilityService.java"
)

if not p.is_file():
    raise SystemExit("KHONG TIM THAY FILE JAVA")

source = p.read_text(encoding="utf-8")

pattern = (
    r"public static boolean toggleSplitScreen\(\)"
    r"\s*\{.*?\n    \}"
)

replacement = """public static boolean toggleSplitScreen() {
        return Build.VERSION.SDK_INT >= Build.VERSION_CODES.N
                && invokeGlobalAction(GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN);
    }"""

updated, count = re.subn(
    pattern, replacement, source, count=1, flags=re.S
)

if count != 1:
    raise SystemExit("KHONG TIM THAY HAM CAN SUA - KHONG GHI FILE")

p.write_text(updated, encoding="utf-8")
print("DA SUA THANH CONG toggleSplitScreen()")
PY

grep -n -A5 -B2 "toggleSplitScreen" app/src/main/java/com/ayane/dynamicisland/AyaneAccessibilityService.java
git diff
t add app/src/main/java/com/ayane/dynamicisland/AyaneAccessibilityService.java
git commit -m "Fix split screen action syntax"
git push origin main
git commit -m "Fix split screen action syntax"
git commit -m "2.6"
git push origin main
clear
git diff
t add app/src/main/java/com/ayane/dynamicisland/AyaneAccessibilityService.java
git commit -m "Fix split screen action syntax"
git push origin main
git commit -m "Fix split screen action syntax"
git push origin main
cd ~/DaoDong-Android-v3
git add app/src/main/java/com/ayane/dynamicisland/AyaneAccessibilityService.java
git status
git commit -m "Fix split screen action syntax"
git push origin main
cd ~/DaoDong-Android-v3
git stash push -u -m "Backup before Ayane 2.7"
git fetch origin
git pull --ff-only origin main
unzip -o ~/storage/downloads/Ayane_Dynamic_Island_v2.7_Source.zip -d "$PWD"
git add -A
git commit -m "Upgrade Ayane heads-up notifications 2.7"
git push origin main
cd ~
unzip -o ~/storage/downloads/Ayane_Dynamic_Island_Source_1.0.0.zip
cd ~
unzip -o ~/storage/d
ls
cd ~/Ayane_Dynamic_Island
git add -A
git commit -m "Upgrade Ayane Dynamic Island 2.6"
git push origin main
git add -A
git commit -m "Ayane_Dynamic_Island"
git push origin main
ls -la
cd ~
git clone https://github.com/isekaiiiii/DaoDong-Android.git Ayane-upload
cp -a ~/Ayane_Dynamic_Island/. ~/Ayane-upload/
cd ~/Ayane-upload
git add -A
git commit -m "Ayane_Dynamic_Island"
git push origin main
cd ~/DaoDong-Android-v3
git status
git pull --ff-only origin main
cd ~/DaoDong-Android-v3
git status
git rm .github/workflows/build-apk.yml
git commit -m "Remove old Gradle 8.9 workflow"
git push origin main
cd ~/DaoDong-Android-v3
git pull --ff-only origin main
sed -i '/org\.gradle\.java\.home/d' gradle.properties
cat gradle.properties
git add -A
git commit -m "Fix Gradle Java home for Linux CI"
git push origin main
cd ~/DaoDong-Android-v3
git pull --ff-only origin main
python - <<'PY'
from pathlib import Path
import re
import xml.etree.ElementTree as ET

base = Path("app/src/main")
res = base / "res"
strings_file = res / "values" / "strings.xml"

if not strings_file.exists():
    raise SystemExit("KHONG TIM THAY strings.xml")

content = strings_file.read_text(encoding="utf-8")

name = "ayane_accessibility_description"

if not re.search(
    rf'<string\s+name="{name}">',
    content
):
    description = (
        "Cho phép Ayane nhận biết ứng dụng đang hiển thị "
        "và trạng thái khóa máy để điều chỉnh đảo động. "
        "Dịch vụ không đọc văn bản hoặc cây giao diện của cửa sổ."
    )

    content = content.replace(
        "</resources>",
        f'    <string name="{name}">{description}</string>\n'
        "</resources>"
    )

    strings_file.write_text(content, encoding="utf-8")
    print("[FIX] Da them ayane_accessibility_description")
else:
    print("[OK] Chuoi da ton tai")

# Kiểm tra cú pháp tất cả XML
xml_files = list(res.rglob("*.xml"))
xml_files.append(base / "AndroidManifest.xml")

for path in xml_files:
    ET.parse(path)

print(f"[OK] {len(xml_files)} tep XML hop le")

# Thu thập các chuỗi đã khai báo
defined_strings = set()

for path in (res).glob("values*/*.xml"):
    root = ET.parse(path).getroot()
    for node in root:
        if node.tag == "string":
            if node.get("name"):
                defined_strings.add(node.get("name"))

# Tìm tham chiếu string bị thiếu
missing_strings = set()

for path in xml_files:
    text = path.read_text(encoding="utf-8")
    for ref in re.findall(r'@string/([A-Za-z0-9_]+)', text):
        if ref not in defined_strings:
            missing_strings.add(ref)

if missing_strings:
    print("[ERROR] Thieu string:")
    for item in sorted(missing_strings):
        print(" -", item)
    raise SystemExit(1)

print("[OK] Khong con tham chieu @string bi thieu")

# Kiểm tra các XML resource được tham chiếu
xml_names = {p.stem for p in (res / "xml").glob("*.xml")}

missing_xml = set()

for path in xml_files:
    text = path.read_text(encoding="utf-8")
    for ref in re.findall(r'@xml/([A-Za-z0-9_]+)', text):
        if ref not in xml_names:
            missing_xml.add(ref)

if missing_xml:
    print("[ERROR] Thieu XML resource:")
    for item in sorted(missing_xml):
        print(" -", item)
    raise SystemExit(1)

print("[OK] Khong con tham chieu @xml bi thieu")
print("KIEM TRA RESOURCE HOAN TAT")
PY

git diff --check
git diff
t status
git add app/src/main/res/values/strings.xml
git commit -m "Fix missing Ayane accessibility resources"
git push origin main
cd ~/DaoDong-Android-v3
mkdir -p ~/ayane-patch
unzip -o ~/storage/downloads/Ayane_Dynamic_Island_1.0.1_StartupFix.zip -d ~/ayane-patch
cp -a ~/ayane-patch/Ayane_Dynamic_Island/. .
cd ~/DaoDong-Android-v3
mkdir -p ~/ayane-patch
unzip -o ~/storage/downloads/Ayane_Dynamic_Island_1.0.1_StartupFix.zip -d ~/ayane-patch
cp -a ~/ayane-patch/Ayane_Dynamic_Island/. .
git add -A
git commit -m "Fix Ayane startup crash"
git push origin main
cd ~/DaoDong-Android-v3
git pull --ff-only origin main
python - <<'PY'
from pathlib import Path
import re
import xml.etree.ElementTree as ET

res = Path("app/src/main/res")
strings = res / "values" / "strings.xml"

if not strings.exists():
    raise SystemExit("KHONG TIM THAY strings.xml")

text = strings.read_text(encoding="utf-8")

name = "ayane_accessibility_description"

if not re.search(r'<string\s+name="' + name + r'"', text):
    entry = (
        '    <string name="ayane_accessibility_description">'
        'Cho phép Ayane nhận biết ứng dụng đang hiển thị và '
        'trạng thái khóa máy để điều chỉnh đảo động. '
        'Dịch vụ không đọc văn bản hoặc cây giao diện của cửa sổ.'
        '</string>\n'
    )
    if "</resources>" not in text:
        raise SystemExit("strings.xml khong co the resources")
    text = text.replace("</resources>", entry + "</resources>", 1)
    strings.write_text(text, encoding="utf-8")
    print("[FIX] Da them chuoi Accessibility")
else:
    print("[OK] Chuoi Accessibility da ton tai")

# Kiểm tra tất cả XML
xml_files = list(res.rglob("*.xml"))
for f in xml_files:
    ET.parse(f)

print("[OK] XML:", len(xml_files), "tep hop le")

# Thu thập tất cả chuỗi đã khai báo
defined = set()
for f in res.glob("values*/*.xml"):
    root = ET.parse(f).getroot()
    for node in root:
        if node.tag == "string" and node.get("name"):
            defined.add(node.get("name"))

# Kiểm tra mọi tham chiếu @string
missing = set()
for f in xml_files:
    content = f.read_text(encoding="utf-8")
    refs = re.findall(r'(?<![A-Za-z0-9_:])@string/([A-Za-z0-9_]+)', content)
    for ref in refs:
        if ref not in defined:
            missing.add(ref)

if missing:
    print("[ERROR] Cac string con thieu:")
    for name in sorted(missing):
        print(" -", name)
    raise SystemExit(1)

print("[OK] Tat ca @string da duoc khai bao")
print("RESOURCE CHECK PASSED")
PY

git diff --check
git add app/src/main/res/values/strings.xml
git commit -m "Fix Ayane accessibility resource"
git push origin main
mkdir -p ~/ayane-102-patch
unzip -o ~/storage/downloads/Ayane_1.0.2_Startup_Stability_Patch.zip -d ~/ayane-102-patch
cp -a ~/ayane-102-patch/Ayane_1.0.2_Startup_Stability_Patch/. ~/DaoDong-Android-v3/
git stash push -u -m "Backup before Ayane 1.0.2"
cd ~/DaoDong-Android-v3
git status
mkdir -p ~/ayane-102-patch
unzip -o ~/storage/downloads/Ayane_1.0.2_Startup_Stability_Patch.zip -d ~/ayane-102-patch
cp -a ~/ayane-102-patch/Ayane_1.0.2_Startup_Stability_Patch/. ~/DaoDong-Android-v3/
pkg install python -y
cd ~/DaoDong-Android-v3
python3 scripts/check_android_resources.py
git diff --check
git add -A
git commit -m "Fix Ayane startup stability 1.0.2"
git push origin main
