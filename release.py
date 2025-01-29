import os
import glob
from git import Repo
import zipfile

NAME="BetterBacap"
VERSION="0.5.2-Beta"
EXCLUDED_FILES=[".gitignore", "release.py"]

os.chdir(os.path.dirname(os.path.abspath(__file__)))


datamap = dict()
for datafile in glob.glob("bacap_v*/**/data.mcfunction", recursive=True):
    with open(datafile, "r") as f:
        datamap[datafile] = f.read()
    with open(datafile, "w") as f:
        f.write(datamap[datafile].replace("$NAME", NAME).replace("$VERSION", VERSION))

with zipfile.ZipFile(f"{NAME}-{VERSION}.zip", "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9) as zipf:
    for gitfile in (b.path for b in Repo(".").tree().list_traverse() if b.path not in EXCLUDED_FILES):
        zipf.write(gitfile)

for datafile, data in datamap.items():
    with open(datafile, "w") as f:
        f.write(data)
