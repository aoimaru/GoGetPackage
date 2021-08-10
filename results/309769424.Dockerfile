[app/sources/309769424.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:2c50d2caf10a90973d1bf2d9899471203df52c69a1871d17346319ef6566ffba" [label="/bin/sh -c apk add rsync && mkdir -p /mnt/source && mkdir /mnt/destination" shape="box"];
  "sha256:5a9ae07f3ac40747d1eef85f7a240dfbbdf215b3ee35e15c3c09ccaae06b9c3d" [label="local://context" shape="ellipse"];
  "sha256:17d1b4fa376e2956f17ff31cae681683570c59ef65b6196622288badb738a776" [label="copy{src=/rsyncd.conf, dest=/etc/rsyncd.conf}" shape="note"];
  "sha256:d633ae434c593acb54b47b17a9f3b1412b841c81148fb96d388dbedb4e8737da" [label="sha256:d633ae434c593acb54b47b17a9f3b1412b841c81148fb96d388dbedb4e8737da" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:2c50d2caf10a90973d1bf2d9899471203df52c69a1871d17346319ef6566ffba" [label=""];
  "sha256:2c50d2caf10a90973d1bf2d9899471203df52c69a1871d17346319ef6566ffba" -> "sha256:17d1b4fa376e2956f17ff31cae681683570c59ef65b6196622288badb738a776" [label=""];
  "sha256:5a9ae07f3ac40747d1eef85f7a240dfbbdf215b3ee35e15c3c09ccaae06b9c3d" -> "sha256:17d1b4fa376e2956f17ff31cae681683570c59ef65b6196622288badb738a776" [label=""];
  "sha256:17d1b4fa376e2956f17ff31cae681683570c59ef65b6196622288badb738a776" -> "sha256:d633ae434c593acb54b47b17a9f3b1412b841c81148fb96d388dbedb4e8737da" [label=""];
}

