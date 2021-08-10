[app/sources/345356744.Dockerfile]
digraph {
  "sha256:2c5185dc9fe5abca26a58e2eabe6da5ad2c25ce734a04e9e1ff75efee6967031" [label="docker-image://docker.io/balenalib/armv7hf-debian:stretch-run" shape="ellipse"];
  "sha256:2342148b65f48ffad1abd7d92d2be01a5c992cd25e9ec90cddc8e4215ea96aad" [label="/bin/sh -c echo \"deb http://archive.raspbian.org/raspbian stretch main contrib non-free rpi firmware\" >>  /etc/apt/sources.list \t&& apt-key adv --batch --keyserver ha.pool.sks-keyservers.net  --recv-key 0x9165938D90FDDD2E \t&& echo \"deb http://archive.raspberrypi.org/debian stretch main ui\" >>  /etc/apt/sources.list.d/raspi.list \t&& apt-key adv --batch --keyserver ha.pool.sks-keyservers.net  --recv-key 0x82B129927FA3303E" shape="box"];
  "sha256:53d112d8d2487b83f3b2a36812b1ed1ab464ce76e5ba49cfa976ed739c29dbfd" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tlibraspberrypi-bin \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0813cd9572d5dc60bc6eb62fbe2fde031744ec1c2e8a87ee36acbffbc3b04988" [label="sha256:0813cd9572d5dc60bc6eb62fbe2fde031744ec1c2e8a87ee36acbffbc3b04988" shape="plaintext"];
  "sha256:2c5185dc9fe5abca26a58e2eabe6da5ad2c25ce734a04e9e1ff75efee6967031" -> "sha256:2342148b65f48ffad1abd7d92d2be01a5c992cd25e9ec90cddc8e4215ea96aad" [label=""];
  "sha256:2342148b65f48ffad1abd7d92d2be01a5c992cd25e9ec90cddc8e4215ea96aad" -> "sha256:53d112d8d2487b83f3b2a36812b1ed1ab464ce76e5ba49cfa976ed739c29dbfd" [label=""];
  "sha256:53d112d8d2487b83f3b2a36812b1ed1ab464ce76e5ba49cfa976ed739c29dbfd" -> "sha256:0813cd9572d5dc60bc6eb62fbe2fde031744ec1c2e8a87ee36acbffbc3b04988" [label=""];
}

