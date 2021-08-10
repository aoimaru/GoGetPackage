[app/sources/407139152.Dockerfile]
digraph {
  "sha256:d27104849ab3d731b5a162942eaa725ec137d5ec9c70eceee17f8b371f01f4cc" [label="local://context" shape="ellipse"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:ffeefa5dde5dcdd0d3232f618c89d50a9e773b23a1b3e42861257d4d5f742f3d" [label="/bin/sh -c apt-get update && apt-get install -y wget --no-install-recommends     && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -     && sh -c 'echo \"deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main\" >> /etc/apt/sources.list.d/google.list'     && apt-get update     && apt-get -y install procps     && apt-get -y install util-linux     && apt-get -y install curl     && apt-get -y install build-essential     && apt-get -y install git     && apt-get install -y google-chrome-unstable       --no-install-recommends" shape="box"];
  "sha256:d5adc9546fcee2953df65381d7f4810ca010347af06095f2020e2af9eef1e3cd" [label="/bin/sh -c npm install -g yarn" shape="box"];
  "sha256:f6d53edacce86fa64723d8fd2909dd5d06f67a8a8fbec94387fcdf5cbf8e4051" [label="/bin/sh -c npm install -g --unsafe-perm esy" shape="box"];
  "sha256:944a38541c124620df2d16fc941ec1f9167978834efcc19a1c5ec45a555da9b4" [label="/bin/sh -c npm install -g --unsafe-perm now@canary" shape="box"];
  "sha256:951c2712c041636321e64eb8f8adecec9155cf8f397ddf9237b9127147dfc7a6" [label="https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64" shape="ellipse"];
  "sha256:282cf3885b75679913885789a2a5e56bd49c55a471d7fbf0292004018b26aef6" [label="copy{src=/dumb-init_1.2.0_amd64, dest=/usr/local/bin/dumb-init}" shape="note"];
  "sha256:ad06fad265aeec7408f9a7a1f29e23ec4cc503437f09abede676ec4bf17731e1" [label="/bin/sh -c chmod +x /usr/local/bin/dumb-init" shape="box"];
  "sha256:59a050e6f4a460b58515c987506ff5b50daaf0c79536e6e95c8b5f713e5e6701" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:ae62c3eb6b7b99747052fe2a0122b44edbec5007588b601691d7eed9189c2a18" [label="sha256:ae62c3eb6b7b99747052fe2a0122b44edbec5007588b601691d7eed9189c2a18" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:ffeefa5dde5dcdd0d3232f618c89d50a9e773b23a1b3e42861257d4d5f742f3d" [label=""];
  "sha256:ffeefa5dde5dcdd0d3232f618c89d50a9e773b23a1b3e42861257d4d5f742f3d" -> "sha256:d5adc9546fcee2953df65381d7f4810ca010347af06095f2020e2af9eef1e3cd" [label=""];
  "sha256:d5adc9546fcee2953df65381d7f4810ca010347af06095f2020e2af9eef1e3cd" -> "sha256:f6d53edacce86fa64723d8fd2909dd5d06f67a8a8fbec94387fcdf5cbf8e4051" [label=""];
  "sha256:f6d53edacce86fa64723d8fd2909dd5d06f67a8a8fbec94387fcdf5cbf8e4051" -> "sha256:944a38541c124620df2d16fc941ec1f9167978834efcc19a1c5ec45a555da9b4" [label=""];
  "sha256:944a38541c124620df2d16fc941ec1f9167978834efcc19a1c5ec45a555da9b4" -> "sha256:282cf3885b75679913885789a2a5e56bd49c55a471d7fbf0292004018b26aef6" [label=""];
  "sha256:951c2712c041636321e64eb8f8adecec9155cf8f397ddf9237b9127147dfc7a6" -> "sha256:282cf3885b75679913885789a2a5e56bd49c55a471d7fbf0292004018b26aef6" [label=""];
  "sha256:282cf3885b75679913885789a2a5e56bd49c55a471d7fbf0292004018b26aef6" -> "sha256:ad06fad265aeec7408f9a7a1f29e23ec4cc503437f09abede676ec4bf17731e1" [label=""];
  "sha256:ad06fad265aeec7408f9a7a1f29e23ec4cc503437f09abede676ec4bf17731e1" -> "sha256:59a050e6f4a460b58515c987506ff5b50daaf0c79536e6e95c8b5f713e5e6701" [label=""];
  "sha256:d27104849ab3d731b5a162942eaa725ec137d5ec9c70eceee17f8b371f01f4cc" -> "sha256:59a050e6f4a460b58515c987506ff5b50daaf0c79536e6e95c8b5f713e5e6701" [label=""];
  "sha256:59a050e6f4a460b58515c987506ff5b50daaf0c79536e6e95c8b5f713e5e6701" -> "sha256:ae62c3eb6b7b99747052fe2a0122b44edbec5007588b601691d7eed9189c2a18" [label=""];
}

