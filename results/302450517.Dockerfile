[app/sources/302450517.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:e36370fdab6da79080b3f74c2c187d80cb4e83bb4ef29da31bb55bd40ef0df57" [label="/bin/sh -c apk update && apk add nodejs git curl perl libtool libevent-dev make xz libstdc++ libffi-dev libressl-dev musl-dev gcc python-dev libxslt pcre libxml2-dev python py-pip ca-certificates py-setuptools curl     && git clone https://github.com/npm/npm.git     && cd npm     && /bin/bash ./configure     && make install     && cd ..     && git clone https://github.com/carsenk/explorer     && cd explorer     && echo '{ \"allow_root\": true }' > /root/.bowerrc" shape="box"];
  "sha256:41d4c8938c12cfe3e9a0c78bf2699c8eb43c061739aac9ff6e79b58932d109ea" [label="/bin/sh -c /usr/bin/npm install -g bower" shape="box"];
  "sha256:6f256b87755519bd11dfe3b6f20e0e65a411c219f16b701031576407208747ce" [label="/bin/sh -c /usr/bin/npm install" shape="box"];
  "sha256:7d1d16628607c566c4daa24401192f1faa261943a8ca3f915c99664a7fa7c947" [label="/bin/sh -c cd /explorer && /explorer/app/node_modules/bower/bin/bower install" shape="box"];
  "sha256:f834e3fd691d28bfd72cadbc6b4f6c34df0732f3e9130f398a839e0ef9e9037e" [label="/bin/sh -c rm -rf /usr/local/bin/geth" shape="box"];
  "sha256:d772326c3ec51074d4fce8a8af861cb481758d0439931c32d5455cebb37bd631" [label="local://context" shape="ellipse"];
  "sha256:a4e9a709f20bbf70034ed11960ee7c0e6cad6f388af59bb7d8d032a7d3675ff3" [label="copy{src=/explorer/package.json, dest=/explorer/package.json}" shape="note"];
  "sha256:7a62ed145a7c9a8a9210da9c89e0f93501a232df3fbf7a682c87cd73d2203f71" [label="copy{src=/explorer/app/app.js, dest=/explorer/app/app.js}" shape="note"];
  "sha256:32458d8b1361a8db536e1224c15f504dac5d697345ae7ef91b08110bffb2da5f" [label="mkdir{path=/explorer}" shape="note"];
  "sha256:b2e2ea57cfe61d4c78012a361b95f122a8649c3c03f4720358be465e41c3561a" [label="sha256:b2e2ea57cfe61d4c78012a361b95f122a8649c3c03f4720358be465e41c3561a" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:e36370fdab6da79080b3f74c2c187d80cb4e83bb4ef29da31bb55bd40ef0df57" [label=""];
  "sha256:e36370fdab6da79080b3f74c2c187d80cb4e83bb4ef29da31bb55bd40ef0df57" -> "sha256:41d4c8938c12cfe3e9a0c78bf2699c8eb43c061739aac9ff6e79b58932d109ea" [label=""];
  "sha256:41d4c8938c12cfe3e9a0c78bf2699c8eb43c061739aac9ff6e79b58932d109ea" -> "sha256:6f256b87755519bd11dfe3b6f20e0e65a411c219f16b701031576407208747ce" [label=""];
  "sha256:6f256b87755519bd11dfe3b6f20e0e65a411c219f16b701031576407208747ce" -> "sha256:7d1d16628607c566c4daa24401192f1faa261943a8ca3f915c99664a7fa7c947" [label=""];
  "sha256:7d1d16628607c566c4daa24401192f1faa261943a8ca3f915c99664a7fa7c947" -> "sha256:f834e3fd691d28bfd72cadbc6b4f6c34df0732f3e9130f398a839e0ef9e9037e" [label=""];
  "sha256:f834e3fd691d28bfd72cadbc6b4f6c34df0732f3e9130f398a839e0ef9e9037e" -> "sha256:a4e9a709f20bbf70034ed11960ee7c0e6cad6f388af59bb7d8d032a7d3675ff3" [label=""];
  "sha256:d772326c3ec51074d4fce8a8af861cb481758d0439931c32d5455cebb37bd631" -> "sha256:a4e9a709f20bbf70034ed11960ee7c0e6cad6f388af59bb7d8d032a7d3675ff3" [label=""];
  "sha256:a4e9a709f20bbf70034ed11960ee7c0e6cad6f388af59bb7d8d032a7d3675ff3" -> "sha256:7a62ed145a7c9a8a9210da9c89e0f93501a232df3fbf7a682c87cd73d2203f71" [label=""];
  "sha256:d772326c3ec51074d4fce8a8af861cb481758d0439931c32d5455cebb37bd631" -> "sha256:7a62ed145a7c9a8a9210da9c89e0f93501a232df3fbf7a682c87cd73d2203f71" [label=""];
  "sha256:7a62ed145a7c9a8a9210da9c89e0f93501a232df3fbf7a682c87cd73d2203f71" -> "sha256:32458d8b1361a8db536e1224c15f504dac5d697345ae7ef91b08110bffb2da5f" [label=""];
  "sha256:32458d8b1361a8db536e1224c15f504dac5d697345ae7ef91b08110bffb2da5f" -> "sha256:b2e2ea57cfe61d4c78012a361b95f122a8649c3c03f4720358be465e41c3561a" [label=""];
}

