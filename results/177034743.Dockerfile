[app/sources/177034743.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:5620866c282a94137d4f1ef40a8e8c78dcb1a697d1b021fc41078ec553d3e9e7" [label="local://context" shape="ellipse"];
  "sha256:5b92e4b514aea15ed31d971a773ef707e1878df35755634e966b7ea0a19857b6" [label="copy{src=/, dest=/peloton}" shape="note"];
  "sha256:b4cb2e4f975586f4911bca05a5d8cba46fa4f06ee93cc6efaccf8a4d43b1b731" [label="/bin/sh -c apt-get -qq update && apt-get -qq -y --no-install-recommends install python-dev lsb-release sudo software-properties-common && apt-get -qq clean" shape="box"];
  "sha256:858bffce5ed992e569c7c211630dab780f815c7b237b9abf4649792e36c45ab2" [label="/bin/sh -c /bin/bash -c \"source ./peloton/script/installation/packages.sh\"" shape="box"];
  "sha256:6a832e1e4ba2d09b7d38adc9b5fcd28fd755a786ca7296111ea2f597b6d47f52" [label="/bin/sh -c mkdir /peloton/build && cd /peloton/build && cmake -DCMAKE_BUILD_TYPE=Release -DCOVERALLS=False .. && cd /peloton/build && make -j4 && make install" shape="box"];
  "sha256:a29f1cf193a7c38007186a8a7f10e31854a2ea83704015d89c1c3f8eddf7ed8a" [label="sha256:a29f1cf193a7c38007186a8a7f10e31854a2ea83704015d89c1c3f8eddf7ed8a" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:5b92e4b514aea15ed31d971a773ef707e1878df35755634e966b7ea0a19857b6" [label=""];
  "sha256:5620866c282a94137d4f1ef40a8e8c78dcb1a697d1b021fc41078ec553d3e9e7" -> "sha256:5b92e4b514aea15ed31d971a773ef707e1878df35755634e966b7ea0a19857b6" [label=""];
  "sha256:5b92e4b514aea15ed31d971a773ef707e1878df35755634e966b7ea0a19857b6" -> "sha256:b4cb2e4f975586f4911bca05a5d8cba46fa4f06ee93cc6efaccf8a4d43b1b731" [label=""];
  "sha256:b4cb2e4f975586f4911bca05a5d8cba46fa4f06ee93cc6efaccf8a4d43b1b731" -> "sha256:858bffce5ed992e569c7c211630dab780f815c7b237b9abf4649792e36c45ab2" [label=""];
  "sha256:858bffce5ed992e569c7c211630dab780f815c7b237b9abf4649792e36c45ab2" -> "sha256:6a832e1e4ba2d09b7d38adc9b5fcd28fd755a786ca7296111ea2f597b6d47f52" [label=""];
  "sha256:6a832e1e4ba2d09b7d38adc9b5fcd28fd755a786ca7296111ea2f597b6d47f52" -> "sha256:a29f1cf193a7c38007186a8a7f10e31854a2ea83704015d89c1c3f8eddf7ed8a" [label=""];
}

