[app/sources/252767582.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:787f28f51afc7b01f23f2ac0b5f8d5104fd32d84267cc56fe164cb05b794d046" [label="/bin/sh -c sudo apt-get -y update" shape="box"];
  "sha256:14e3b715d85986cc00143c58647462fd567a82270be5678a6de2c5f0be448ef8" [label="/bin/sh -c sudo apt-get install -y git" shape="box"];
  "sha256:624305ceba747c5392413e89b58abdb87f2a999e9ec19a9b24c8337096f7265d" [label="/bin/sh -c sudo git clone https://github.com/acasadoquijada/IV.git" shape="box"];
  "sha256:d1e8dcb404a1533d2255ecdc05d337d8bc65329f677c1598c18be454372283b8" [label="/bin/sh -c sudo apt-get install -y python3-setuptools" shape="box"];
  "sha256:0606ba337baf696ad6b882c7aa54e612233d5e60adb514670d4bd0943ef7e527" [label="/bin/sh -c sudo apt-get -y install python3-dev" shape="box"];
  "sha256:0ec21cf77154f47dd591012aad589523a1c7dd757e835b53b5983c13002ed45b" [label="/bin/sh -c sudo apt-get -y install build-essential" shape="box"];
  "sha256:79486f763899e6752a924f8540162d4fe7c6642d0d8f70cea86d4aacb49f49f7" [label="/bin/sh -c sudo apt-get -y install python-psycopg2" shape="box"];
  "sha256:f342e584f65d02786cb0733e8a669c36dec35dfa535527e9ed1b5cade8c65757" [label="/bin/sh -c sudo apt-get -y install libpq-dev" shape="box"];
  "sha256:3cb739ff9e91f5afe168bf67a934b61eb570ccabee741785860ab2256abc883e" [label="/bin/sh -c sudo easy_install3 pip" shape="box"];
  "sha256:3b781f55fa65785fa6df9c23e2ce23aea5094b62514774a2fe0a7f8b3c74645f" [label="/bin/sh -c sudo pip install --upgrade pip" shape="box"];
  "sha256:2ace86608021bf1dcce9db5d80b18715382daac9830023302a5ea06afd064bb6" [label="/bin/sh -c cd IV/ && make install" shape="box"];
  "sha256:3acfeb25a9abeb48c55ac5a81d376fd92dc10cb26decc60a310662efc3abf3f6" [label="/bin/sh -c cd IV/ && python3 manage.py syncdb --noinput" shape="box"];
  "sha256:84f36ebbd5dd31f2fccea279b155ff64d6159bc2de9053362022ff2935ee94e5" [label="sha256:84f36ebbd5dd31f2fccea279b155ff64d6159bc2de9053362022ff2935ee94e5" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:787f28f51afc7b01f23f2ac0b5f8d5104fd32d84267cc56fe164cb05b794d046" [label=""];
  "sha256:787f28f51afc7b01f23f2ac0b5f8d5104fd32d84267cc56fe164cb05b794d046" -> "sha256:14e3b715d85986cc00143c58647462fd567a82270be5678a6de2c5f0be448ef8" [label=""];
  "sha256:14e3b715d85986cc00143c58647462fd567a82270be5678a6de2c5f0be448ef8" -> "sha256:624305ceba747c5392413e89b58abdb87f2a999e9ec19a9b24c8337096f7265d" [label=""];
  "sha256:624305ceba747c5392413e89b58abdb87f2a999e9ec19a9b24c8337096f7265d" -> "sha256:d1e8dcb404a1533d2255ecdc05d337d8bc65329f677c1598c18be454372283b8" [label=""];
  "sha256:d1e8dcb404a1533d2255ecdc05d337d8bc65329f677c1598c18be454372283b8" -> "sha256:0606ba337baf696ad6b882c7aa54e612233d5e60adb514670d4bd0943ef7e527" [label=""];
  "sha256:0606ba337baf696ad6b882c7aa54e612233d5e60adb514670d4bd0943ef7e527" -> "sha256:0ec21cf77154f47dd591012aad589523a1c7dd757e835b53b5983c13002ed45b" [label=""];
  "sha256:0ec21cf77154f47dd591012aad589523a1c7dd757e835b53b5983c13002ed45b" -> "sha256:79486f763899e6752a924f8540162d4fe7c6642d0d8f70cea86d4aacb49f49f7" [label=""];
  "sha256:79486f763899e6752a924f8540162d4fe7c6642d0d8f70cea86d4aacb49f49f7" -> "sha256:f342e584f65d02786cb0733e8a669c36dec35dfa535527e9ed1b5cade8c65757" [label=""];
  "sha256:f342e584f65d02786cb0733e8a669c36dec35dfa535527e9ed1b5cade8c65757" -> "sha256:3cb739ff9e91f5afe168bf67a934b61eb570ccabee741785860ab2256abc883e" [label=""];
  "sha256:3cb739ff9e91f5afe168bf67a934b61eb570ccabee741785860ab2256abc883e" -> "sha256:3b781f55fa65785fa6df9c23e2ce23aea5094b62514774a2fe0a7f8b3c74645f" [label=""];
  "sha256:3b781f55fa65785fa6df9c23e2ce23aea5094b62514774a2fe0a7f8b3c74645f" -> "sha256:2ace86608021bf1dcce9db5d80b18715382daac9830023302a5ea06afd064bb6" [label=""];
  "sha256:2ace86608021bf1dcce9db5d80b18715382daac9830023302a5ea06afd064bb6" -> "sha256:3acfeb25a9abeb48c55ac5a81d376fd92dc10cb26decc60a310662efc3abf3f6" [label=""];
  "sha256:3acfeb25a9abeb48c55ac5a81d376fd92dc10cb26decc60a310662efc3abf3f6" -> "sha256:84f36ebbd5dd31f2fccea279b155ff64d6159bc2de9053362022ff2935ee94e5" [label=""];
}

