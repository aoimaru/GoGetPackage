

import subprocess
from subprocess import PIPE
import glob



def main():

    fileNames = glob.glob("app/sources/*.Dockerfile")
    for fileName in fileNames:
        print(fileName)

    proc = subprocess.run(
        "docker-compose exec app ./main app/sources/128489309.Dockerfile", 
        shell=True, 
        stdout=PIPE, 
        stderr=PIPE, 
        text=True
    )
    date = proc.stdout
    print('STDOUT: {}'.format(date))





if __name__ == "__main__":
    main()