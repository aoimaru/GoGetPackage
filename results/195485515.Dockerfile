[app/sources/195485515.Dockerfile]
digraph {
  "sha256:806270824f56418a64b7fed9cf0c474d683a88f377e8eb4455a0fa5c73fc94d2" [label="docker-image://docker.io/phpdockerio/php7-fpm:latest" shape="ellipse"];
  "sha256:3df4abe569b78d63a4821f14e5f9fed535bba9e050e44c245027431300c5b6fe" [label="/bin/sh -c apt-get update     && apt-get -y --no-install-recommends install  php7.0-mysql php7.0-xdebug     && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*" shape="box"];
  "sha256:bc5867760d85927d8510f1d9498ef0d7da018205f01d10f9e4e1e6bcd8df4a81" [label="mkdir{path=/var/www/jedy}" shape="note"];
  "sha256:30e70d9d6c6120d9476e98b002b50fff4328586a2ce62b0036b92d63de26564b" [label="sha256:30e70d9d6c6120d9476e98b002b50fff4328586a2ce62b0036b92d63de26564b" shape="plaintext"];
  "sha256:806270824f56418a64b7fed9cf0c474d683a88f377e8eb4455a0fa5c73fc94d2" -> "sha256:3df4abe569b78d63a4821f14e5f9fed535bba9e050e44c245027431300c5b6fe" [label=""];
  "sha256:3df4abe569b78d63a4821f14e5f9fed535bba9e050e44c245027431300c5b6fe" -> "sha256:bc5867760d85927d8510f1d9498ef0d7da018205f01d10f9e4e1e6bcd8df4a81" [label=""];
  "sha256:bc5867760d85927d8510f1d9498ef0d7da018205f01d10f9e4e1e6bcd8df4a81" -> "sha256:30e70d9d6c6120d9476e98b002b50fff4328586a2ce62b0036b92d63de26564b" [label=""];
}

