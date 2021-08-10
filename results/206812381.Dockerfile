[app/sources/206812381.Dockerfile]
digraph {
  "sha256:cc78500fa89ae21e35be3a821e8863c906b13c9c76f499a3e638249c965ab267" [label="docker-image://docker.io/arm32v7/ubuntu:18.04" shape="ellipse"];
  "sha256:ade29c35f03dacff45b02a461137cd441b1b58a285596c1af705d074532723ed" [label="/bin/sh -c groupadd --gid 1000 builduser   && useradd --uid 1000 --gid builduser --shell /bin/bash --create-home builduser" shape="box"];
  "sha256:e2018fc257aa1afe90d24b338e1b1193dd886545c154ac022a2c0e632073a524" [label="/bin/sh -c chmod a+rwx /tmp" shape="box"];
  "sha256:03fb3f35007f795982bd72552c26cefd4a9e4901da7ebfe576dd019e3e0b83b6" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y  bison  build-essential  clang  curl  gperf  git  libasound2  libasound2-dev  libcap-dev  libcups2-dev  libdbus-1-dev  libgconf-2-4  libgconf2-dev  libgnome-keyring-dev  libgtk2.0-0  libgtk2.0-dev  libgtk-3-0  libgtk-3-dev  libnotify-bin  libnss3  libnss3-dev  libxss1  libxtst-dev  libxtst6  lsb-release  locales  nano  python-setuptools  python-pip  python-dbusmock  sudo  unzip  wget  xvfb && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:469234fa36e5afaf7fc8ffd87a787b41644beaaedf5cfaae630eb0e0b286c353" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_10.x | bash -   && DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c5d383caa59aef2da051ef272491c7c5502281a44ca4be9a7715039b73cb9762" [label="/bin/sh -c pip install -U crcmod" shape="box"];
  "sha256:b5971479b498a3ffe0946b919f88aca2c83980fdc613ca70b582699b98807a87" [label="local://context" shape="ellipse"];
  "sha256:438a421393253cecf8229de00d483c39b185bdd8038ed3ac99ca80b87f03dbe2" [label="copy{src=/tools/xvfb-init.sh, dest=/etc/init.d/xvfb}" shape="note"];
  "sha256:e068f4d041c75407adf814f271a2d0b2a57748efffa6849867ce926251bc598e" [label="/bin/sh -c chmod a+x /etc/init.d/xvfb" shape="box"];
  "sha256:ca3b4941b9ee595edeb0cc7d6e048c77d1a5630ddbc83eb7911d992c31dcb91e" [label="/bin/sh -c usermod -aG sudo builduser" shape="box"];
  "sha256:9e669d5b782c8ff4b3d8bbb44c3251b67cdee2d69c38897b5d2979532c6844e5" [label="/bin/sh -c echo 'builduser ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers" shape="box"];
  "sha256:d5c1870dff93b4decdda152f175952a456c177aa238cf992bebf8263b540a147" [label="mkdir{path=/home/builduser}" shape="note"];
  "sha256:324d491c778a1993dbb266dba9a72b98341d89a1bc7b977ad369b78174e9cb16" [label="sha256:324d491c778a1993dbb266dba9a72b98341d89a1bc7b977ad369b78174e9cb16" shape="plaintext"];
  "sha256:cc78500fa89ae21e35be3a821e8863c906b13c9c76f499a3e638249c965ab267" -> "sha256:ade29c35f03dacff45b02a461137cd441b1b58a285596c1af705d074532723ed" [label=""];
  "sha256:ade29c35f03dacff45b02a461137cd441b1b58a285596c1af705d074532723ed" -> "sha256:e2018fc257aa1afe90d24b338e1b1193dd886545c154ac022a2c0e632073a524" [label=""];
  "sha256:e2018fc257aa1afe90d24b338e1b1193dd886545c154ac022a2c0e632073a524" -> "sha256:03fb3f35007f795982bd72552c26cefd4a9e4901da7ebfe576dd019e3e0b83b6" [label=""];
  "sha256:03fb3f35007f795982bd72552c26cefd4a9e4901da7ebfe576dd019e3e0b83b6" -> "sha256:469234fa36e5afaf7fc8ffd87a787b41644beaaedf5cfaae630eb0e0b286c353" [label=""];
  "sha256:469234fa36e5afaf7fc8ffd87a787b41644beaaedf5cfaae630eb0e0b286c353" -> "sha256:c5d383caa59aef2da051ef272491c7c5502281a44ca4be9a7715039b73cb9762" [label=""];
  "sha256:c5d383caa59aef2da051ef272491c7c5502281a44ca4be9a7715039b73cb9762" -> "sha256:438a421393253cecf8229de00d483c39b185bdd8038ed3ac99ca80b87f03dbe2" [label=""];
  "sha256:b5971479b498a3ffe0946b919f88aca2c83980fdc613ca70b582699b98807a87" -> "sha256:438a421393253cecf8229de00d483c39b185bdd8038ed3ac99ca80b87f03dbe2" [label=""];
  "sha256:438a421393253cecf8229de00d483c39b185bdd8038ed3ac99ca80b87f03dbe2" -> "sha256:e068f4d041c75407adf814f271a2d0b2a57748efffa6849867ce926251bc598e" [label=""];
  "sha256:e068f4d041c75407adf814f271a2d0b2a57748efffa6849867ce926251bc598e" -> "sha256:ca3b4941b9ee595edeb0cc7d6e048c77d1a5630ddbc83eb7911d992c31dcb91e" [label=""];
  "sha256:ca3b4941b9ee595edeb0cc7d6e048c77d1a5630ddbc83eb7911d992c31dcb91e" -> "sha256:9e669d5b782c8ff4b3d8bbb44c3251b67cdee2d69c38897b5d2979532c6844e5" [label=""];
  "sha256:9e669d5b782c8ff4b3d8bbb44c3251b67cdee2d69c38897b5d2979532c6844e5" -> "sha256:d5c1870dff93b4decdda152f175952a456c177aa238cf992bebf8263b540a147" [label=""];
  "sha256:d5c1870dff93b4decdda152f175952a456c177aa238cf992bebf8263b540a147" -> "sha256:324d491c778a1993dbb266dba9a72b98341d89a1bc7b977ad369b78174e9cb16" [label=""];
}

