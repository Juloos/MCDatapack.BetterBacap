import os
import glob
from git import Repo

NAME="BetterBacap"
VERSION="0.3.0-Beta"

os.chdir(os.path.dirname(os.path.abspath(__file__)))


datamap = dict()
for datafile in glob.glob("bacap_v*/**/data.mcfunction", recursive=True):
    with open(datafile, "r") as f:
        datamap[datafile] = f.read()
    with open(datafile, "w") as f:
        f.write(datamap[datafile].replace("$NAME", NAME).replace("$VERSION", VERSION))

with open(f"{NAME}-{VERSION}.zip", "wb") as f:
    Repo(".").archive(f, format="zip")

for datafile, data in datamap.items():
    with open(datafile, "w") as f:
        f.write(data)
