[app/sources/260404415.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:67455cbc6d77366cf6302b293059d07faf892507ecaa04970f471e7ae77a50b8" [label="/bin/sh -c apt-get autoclean && apt-get autoremove && apt-get update &&     apt-get -qqy install --no-install-recommends build-essential     automake ncurses-dev libcurl4-openssl-dev libssl-dev libgtest-dev     make autoconf automake libtool git apt-utils pkg-config libc6-dev     libcurl3-dev libudev-dev m4 g++-multilib unzip git python zlib1g-dev     wget bsdmainutils qt5-default cmake libboost-all-dev &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2bb2c2dea52e71dd1bc1fbc9002241d825c97a99247af9c3256a3bcc6074eb82" [label="/bin/sh -c mkdir -p /opt/code/; cd /opt/code; git clone ${GIT_URL} ${GIT_PROJECT} &&     mkdir -p /opt/code/${GIT_PROJECT}/nheqminer/build && cd /opt/code/${GIT_PROJECT}/nheqminer/build &&     cmake .. && make && cp nheqminer /usr/local/bin/ &&     rm -rf /opt/code/" shape="box"];
  "sha256:744fac0cbda1219daef1490885c54213533efda418c8ffb422fa773949f4fa25" [label="sha256:744fac0cbda1219daef1490885c54213533efda418c8ffb422fa773949f4fa25" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:67455cbc6d77366cf6302b293059d07faf892507ecaa04970f471e7ae77a50b8" [label=""];
  "sha256:67455cbc6d77366cf6302b293059d07faf892507ecaa04970f471e7ae77a50b8" -> "sha256:2bb2c2dea52e71dd1bc1fbc9002241d825c97a99247af9c3256a3bcc6074eb82" [label=""];
  "sha256:2bb2c2dea52e71dd1bc1fbc9002241d825c97a99247af9c3256a3bcc6074eb82" -> "sha256:744fac0cbda1219daef1490885c54213533efda418c8ffb422fa773949f4fa25" [label=""];
}

