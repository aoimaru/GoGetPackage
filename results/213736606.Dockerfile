[app/sources/213736606.Dockerfile]
digraph {
  "sha256:75d2f8cad702268ec5198c66f5832f15ad400c48362711a6e33aef5a1fd73cc6" [label="docker-image://docker.io/nodesource/wily-base:latest" shape="ellipse"];
  "sha256:d21ec69a563dba5de95554275d2576730054717ae26ff96f747f030533ed4b0d" [label="/bin/sh -c curl https://deb.nodesource.com/node_0.12/pool/main/n/nodejs/nodejs_0.12.9-1nodesource1~wily1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:89a0c2de1edd57671fc0bdf91b2da3e8e378d20531fb1b89689b8346e9bc947c" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:755c0f421fe25c3449571e5a41432b7d989f9513d7ffa18cd5c7035e305f99a2" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:c21be3fc076b93a828f249e81ebd3a8749c4f298bb015c83efc6e54adf70be51" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:f9e12f8e6b0215ecc696791d0ad0047c80df4aefe822dc030c0460f6c4d49609" [label="sha256:f9e12f8e6b0215ecc696791d0ad0047c80df4aefe822dc030c0460f6c4d49609" shape="plaintext"];
  "sha256:75d2f8cad702268ec5198c66f5832f15ad400c48362711a6e33aef5a1fd73cc6" -> "sha256:d21ec69a563dba5de95554275d2576730054717ae26ff96f747f030533ed4b0d" [label=""];
  "sha256:d21ec69a563dba5de95554275d2576730054717ae26ff96f747f030533ed4b0d" -> "sha256:89a0c2de1edd57671fc0bdf91b2da3e8e378d20531fb1b89689b8346e9bc947c" [label=""];
  "sha256:89a0c2de1edd57671fc0bdf91b2da3e8e378d20531fb1b89689b8346e9bc947c" -> "sha256:755c0f421fe25c3449571e5a41432b7d989f9513d7ffa18cd5c7035e305f99a2" [label=""];
  "sha256:755c0f421fe25c3449571e5a41432b7d989f9513d7ffa18cd5c7035e305f99a2" -> "sha256:c21be3fc076b93a828f249e81ebd3a8749c4f298bb015c83efc6e54adf70be51" [label=""];
  "sha256:c21be3fc076b93a828f249e81ebd3a8749c4f298bb015c83efc6e54adf70be51" -> "sha256:f9e12f8e6b0215ecc696791d0ad0047c80df4aefe822dc030c0460f6c4d49609" [label=""];
}

