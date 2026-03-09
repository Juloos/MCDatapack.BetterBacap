import os
import glob
from git import Repo
import zipfile

NAME="BetterBacap"
VERSION="0.5.2-Beta"
EXCLUDED_FILES=[".gitignore", ".spyglassrc.json", "release.py"]

os.chdir(os.path.dirname(os.path.abspath(__file__)))


datamap = dict()
for datafile in glob.glob("bacap_v*/**/data.mcfunction", recursive=True):
    with open(datafile, "r") as f:
        datamap[datafile] = f.read()
    with open(datafile, "w") as f:
        f.write(datamap[datafile].replace("$NAME", NAME).replace("$VERSION", VERSION))

filepaths = [filepath for filepath in glob.glob("**/*", recursive=True) if os.path.isfile(filepath) and os.path.basename(filepath) not in EXCLUDED_FILES]
repo = Repo(os.getcwd())
ignored_files = set()
for i in range(0, len(filepaths), 200):
    batch = filepaths[i:i+200]
    ignored_files.update(repo.ignored(batch))
filepaths = [filepath for filepath in filepaths if filepath not in ignored_files]
with zipfile.ZipFile(f"{NAME}-{VERSION}.zip", "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9) as zipf:
    for filepath in filepaths:
        print(filepath)
        zipf.write(filepath)

for datafile, data in datamap.items():
    with open(datafile, "w") as f:
        f.write(data)
