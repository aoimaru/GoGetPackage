[app/sources/252789433.Dockerfile]
digraph {
  "sha256:25368e6b5fdce72cf56d9e98a2d271d904a0cb8b2e5319ef0bebff93f1cb59a7" [label="docker-image://docker.io/dukegcb/imads:latest" shape="ellipse"];
  "sha256:46783e29e4d0bdf8e6fb34caa108a5dd66cc72493b878465beff87e38c24aa3c" [label="/bin/sh -c apt-get update && apt-get install -y apache2 apache2-utils libapache2-mod-wsgi&& apt-get clean" shape="box"];
  "sha256:44181a78a878f6f637678a9f5b3630b0528fa15579af204b4815a9e12dd32e9b" [label="local://context" shape="ellipse"];
  "sha256:d99b21316ad80226cd641b0f1abef6a9d26f67216a64bd29df3a55712106d35d" [label="copy{src=/imads.conf, dest=/etc/apache2/sites-available/imads.conf}" shape="note"];
  "sha256:0f75dacedc2789c0a2c5ceacb79f3d8f3da18b12acf2e9dde2b9b4e4b468e2af" [label="/bin/sh -c a2enmod ssl" shape="box"];
  "sha256:45042836dc719c6bee3c8aebedd5e23fa704f77e5b1b32050567c445b95d989c" [label="/bin/sh -c a2ensite imads" shape="box"];
  "sha256:4be7e9dfd12c1fa10aac8f4f3af823fc38d453f52d2f9813b9a422ae1953693d" [label="/bin/sh -c service apache2 stop" shape="box"];
  "sha256:8c2c654b31455920b76bdadf567a51effbb84019dc0596597107b1da82f9a254" [label="copy{src=/start-apache.sh, dest=/usr/bin/start-apache.sh}" shape="note"];
  "sha256:40806b078018c6a4dc0027776133c1304916ef19a7e5f4ba546d7cc53f965583" [label="sha256:40806b078018c6a4dc0027776133c1304916ef19a7e5f4ba546d7cc53f965583" shape="plaintext"];
  "sha256:25368e6b5fdce72cf56d9e98a2d271d904a0cb8b2e5319ef0bebff93f1cb59a7" -> "sha256:46783e29e4d0bdf8e6fb34caa108a5dd66cc72493b878465beff87e38c24aa3c" [label=""];
  "sha256:46783e29e4d0bdf8e6fb34caa108a5dd66cc72493b878465beff87e38c24aa3c" -> "sha256:d99b21316ad80226cd641b0f1abef6a9d26f67216a64bd29df3a55712106d35d" [label=""];
  "sha256:44181a78a878f6f637678a9f5b3630b0528fa15579af204b4815a9e12dd32e9b" -> "sha256:d99b21316ad80226cd641b0f1abef6a9d26f67216a64bd29df3a55712106d35d" [label=""];
  "sha256:d99b21316ad80226cd641b0f1abef6a9d26f67216a64bd29df3a55712106d35d" -> "sha256:0f75dacedc2789c0a2c5ceacb79f3d8f3da18b12acf2e9dde2b9b4e4b468e2af" [label=""];
  "sha256:0f75dacedc2789c0a2c5ceacb79f3d8f3da18b12acf2e9dde2b9b4e4b468e2af" -> "sha256:45042836dc719c6bee3c8aebedd5e23fa704f77e5b1b32050567c445b95d989c" [label=""];
  "sha256:45042836dc719c6bee3c8aebedd5e23fa704f77e5b1b32050567c445b95d989c" -> "sha256:4be7e9dfd12c1fa10aac8f4f3af823fc38d453f52d2f9813b9a422ae1953693d" [label=""];
  "sha256:4be7e9dfd12c1fa10aac8f4f3af823fc38d453f52d2f9813b9a422ae1953693d" -> "sha256:8c2c654b31455920b76bdadf567a51effbb84019dc0596597107b1da82f9a254" [label=""];
  "sha256:44181a78a878f6f637678a9f5b3630b0528fa15579af204b4815a9e12dd32e9b" -> "sha256:8c2c654b31455920b76bdadf567a51effbb84019dc0596597107b1da82f9a254" [label=""];
  "sha256:8c2c654b31455920b76bdadf567a51effbb84019dc0596597107b1da82f9a254" -> "sha256:40806b078018c6a4dc0027776133c1304916ef19a7e5f4ba546d7cc53f965583" [label=""];
}

