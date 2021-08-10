[app/sources/213736384.Dockerfile]
digraph {
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" [label="docker-image://docker.io/nodesource/trusty-base:latest" shape="ellipse"];
  "sha256:36433af261f989dc3bf717c9e45403f31c5e84d075e99f1deddead1264c44454" [label="/bin/sh -c curl https://deb.nodesource.com/node_4.x/pool/main/n/nodejs/nodejs_4.5.0-1nodesource1~trusty1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:82eaba048fb06b8f1397a5a28123ce3922f67a0c0124cba6feede36e6c4a9acb" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:3760c786e7e1799b0b04969e17f62e248b0e15f96aa0c3709fc591759218c7fa" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:62aecf5863f21124a71a7fd930a11d14f21aa9c8934d715e160571751ad3858e" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:75bdf1be1712898db9ce51bc2efeaa2bd39955fc5c8667b060ea36ccfe853d33" [label="sha256:75bdf1be1712898db9ce51bc2efeaa2bd39955fc5c8667b060ea36ccfe853d33" shape="plaintext"];
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" -> "sha256:36433af261f989dc3bf717c9e45403f31c5e84d075e99f1deddead1264c44454" [label=""];
  "sha256:36433af261f989dc3bf717c9e45403f31c5e84d075e99f1deddead1264c44454" -> "sha256:82eaba048fb06b8f1397a5a28123ce3922f67a0c0124cba6feede36e6c4a9acb" [label=""];
  "sha256:82eaba048fb06b8f1397a5a28123ce3922f67a0c0124cba6feede36e6c4a9acb" -> "sha256:3760c786e7e1799b0b04969e17f62e248b0e15f96aa0c3709fc591759218c7fa" [label=""];
  "sha256:3760c786e7e1799b0b04969e17f62e248b0e15f96aa0c3709fc591759218c7fa" -> "sha256:62aecf5863f21124a71a7fd930a11d14f21aa9c8934d715e160571751ad3858e" [label=""];
  "sha256:62aecf5863f21124a71a7fd930a11d14f21aa9c8934d715e160571751ad3858e" -> "sha256:75bdf1be1712898db9ce51bc2efeaa2bd39955fc5c8667b060ea36ccfe853d33" [label=""];
}

