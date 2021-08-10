[app/sources/282265581.Dockerfile]
digraph {
  "sha256:224a22699c1a4cf45bf9a6498050afa66bea3cefde3ba9cb976ef59ffc523587" [label="docker-image://docker.io/webdevops/base-app:ubuntu-16.04@sha256:ccd16d30b0115fd1e897d81281d09ccd7d166e700f0884032df73999378c6bb6" shape="ellipse"];
  "sha256:31c0dabb61298e185a209ad5106543febf67f875dce821993ca61bfefc2e2703" [label="local://context" shape="ellipse"];
  "sha256:5230708232b4ea850a843d3a45b7d766ae34bcb4ae0a1b1d44400e4aa871685a" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:d35a79efea16be2f35440c59c5f2d26714c830cbe868f347bb7b4887591c8ee2" [label="/bin/sh -c set -x     && apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xB4112585D386EB94     && echo \"deb http://dl.hhvm.com/ubuntu $(docker-image-info dist-codename) main\" >> /etc/apt/sources.list     && apt-install         hhvm=3.*         imagemagick         graphicsmagick         ghostscript     && /usr/bin/update-alternatives --install /usr/bin/php php /usr/bin/hhvm 60     && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:45cbf660ba9794761a3973d0536d6b4ca97a079c728623afd9797407b1665b8a" [label="sha256:45cbf660ba9794761a3973d0536d6b4ca97a079c728623afd9797407b1665b8a" shape="plaintext"];
  "sha256:224a22699c1a4cf45bf9a6498050afa66bea3cefde3ba9cb976ef59ffc523587" -> "sha256:5230708232b4ea850a843d3a45b7d766ae34bcb4ae0a1b1d44400e4aa871685a" [label=""];
  "sha256:31c0dabb61298e185a209ad5106543febf67f875dce821993ca61bfefc2e2703" -> "sha256:5230708232b4ea850a843d3a45b7d766ae34bcb4ae0a1b1d44400e4aa871685a" [label=""];
  "sha256:5230708232b4ea850a843d3a45b7d766ae34bcb4ae0a1b1d44400e4aa871685a" -> "sha256:d35a79efea16be2f35440c59c5f2d26714c830cbe868f347bb7b4887591c8ee2" [label=""];
  "sha256:d35a79efea16be2f35440c59c5f2d26714c830cbe868f347bb7b4887591c8ee2" -> "sha256:45cbf660ba9794761a3973d0536d6b4ca97a079c728623afd9797407b1665b8a" [label=""];
}

