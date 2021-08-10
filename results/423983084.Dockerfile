[app/sources/423983084.Dockerfile]
digraph {
  "sha256:6605773b4067f81edeeb0eef4c6fb00b3e2f898af4a2e7fbf8055b9b9b7cc063" [label="docker-image://docker.io/phpdockerio/php73-fpm:latest" shape="ellipse"];
  "sha256:a457dae47e49c8f688cd6f7d14014568754b76ea354ae4156b5381d0625b0b84" [label="mkdir{path=/application}" shape="note"];
  "sha256:fa1a02df1a25d99220e8b9ee48612e1a826ec6affb7b00f4ad43c58260e6e5c4" [label="/bin/sh -c apt-get update     && apt-get -y --no-install-recommends install  php7.3-gmp php7.3-xmlrpc     && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*" shape="box"];
  "sha256:33cd82283a91cf516cd6e6b3b292aa4d3d9781f5850294913c842faa5a989bc4" [label="sha256:33cd82283a91cf516cd6e6b3b292aa4d3d9781f5850294913c842faa5a989bc4" shape="plaintext"];
  "sha256:6605773b4067f81edeeb0eef4c6fb00b3e2f898af4a2e7fbf8055b9b9b7cc063" -> "sha256:a457dae47e49c8f688cd6f7d14014568754b76ea354ae4156b5381d0625b0b84" [label=""];
  "sha256:a457dae47e49c8f688cd6f7d14014568754b76ea354ae4156b5381d0625b0b84" -> "sha256:fa1a02df1a25d99220e8b9ee48612e1a826ec6affb7b00f4ad43c58260e6e5c4" [label=""];
  "sha256:fa1a02df1a25d99220e8b9ee48612e1a826ec6affb7b00f4ad43c58260e6e5c4" -> "sha256:33cd82283a91cf516cd6e6b3b292aa4d3d9781f5850294913c842faa5a989bc4" [label=""];
}

