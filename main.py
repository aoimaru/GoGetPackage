

import subprocess
from subprocess import PIPE
import glob
import os




def execute(filePath):
    outPath = os.path.basename(filePath)
    proc = subprocess.run(
        "docker-compose exec app ./main {} >> results/{}".format(filePath, outPath), 
        shell=True, 
        stdout=PIPE, 
        stderr=PIPE, 
        text=True
    )
    return


def main():

    filePaths = glob.glob("app/sources/*.Dockerfile")
    for filePath in filePaths:
        print(filePath)
        execute(filePath)


if __name__ == "__main__":
    main()