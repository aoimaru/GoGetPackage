

import subprocess
from subprocess import PIPE
import glob
import os



def main():

    fileNames = glob.glob("app/sources/*.Dockerfile")
    for fileName in fileNames:
        print(fileName)

        baseName = os.path.basename(fileName)
        outPlace = "results/{}".format(baseName)

        proc = subprocess.run(
            "docker-compose exec app ./main {} >> {}".format(fileName, outPlace), 
            shell=True, 
            stdout=PIPE, 
            stderr=PIPE, 
            text=True
        )
        date = proc.stdout
        print('STDOUT: {}'.format(date))




if __name__ == "__main__":
    main()